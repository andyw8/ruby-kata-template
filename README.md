This a blank Ruby project ready to run with MiniTest.

Jumping from an established project to a minimal Ruby app can be awkward, especially when you're used to the many conveniences that Rails provides.

This template aims to make that easier. It's intended for both new and experienced developers to quickly get up and running on a kata.

To set up this project, click the **Use this template** button, clone the new repo, then run:

```
bundle install
```

To run the tests:

```
bundle exec rake test
```

You should probably start by renaming `Project` to something more appropriate to the kata.

## Features

- [pry-byebug](https://github.com/deivid-rodriguez/pry-byebug) gem for debugging
- [standard](https://github.com/testdouble/standard) gem, a reduced RuboCop configuration.
- [rubocop-minitest](https://github.com/rubocop/rubocop-minitest) (to catch common mistakes rather than enforce style)
- CI using GitHub Actions
- [rubocop-lsp](https://rubygems.org/gems/rubocop-lsp) gem
- `active_support/test_case`, so you can write `test "it works" do...` rather than `def test_it_works`. (This means your tests need to inherit from `ActiveSupport::TestCase` rather than `Minitest::Test`)
- `rake test`, with support for both MiniTest naming conventions (`test_*.rb` and `*_test.rb`)
- Recommends the [RuboCop-LSP extension](https://marketplace.visualstudio.com/items?itemName=Shopify.rubocop-lsp) for VS Code
- Configures RuboCop-LSP and enables **Format On Save** for VS Code
- [minitest-reporters](https://github.com/minitest-reporters/minitest-reporters) for color output in MiniTest
- [m](https://github.com/qrush/m) gem to allow running tests by line number.

## Shopify Features

If you work at Shopify, there are some additional features:

- `dev up` to set up the project
- `dev test`
- `dev lint`

(we also set `DEV_NO_AUTO_UPDATE` to prevent `dev` updating at an inconvenient time)

## Example Keybindings for VS Code

It's highly recommended to configured your editor to allowed a test to be triggered from the keyboard.

If you don't already have a solution, you can copy the configuration below into your `keybindings.json`.

```json
  {
    // run all tests in current test file
    "key": "shift+cmd+r",
    "command": "workbench.action.terminal.sendSequence",
    "args": { "text": "dev test ${relativeFile}\u000D" }
  },
  {
    // Run test at Current line
    "key": "shift+cmd+i",
    "command": "workbench.action.terminal.sendSequence",
    "args": { "text": "dev test ${relativeFile}:${lineNumber}\u000D" }
  }
```

(if you're not at Shopify, change `dev test` to `bundle exec m`)
