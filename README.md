This a blank Ruby project ready to run with MiniTest.

Jumping from an established project to a minimal Ruby app can be awkward, especially when you're used to the many conveniences that Rails provides.

This template aims to make that easier. It's intended for both new and experienced developers to quickly get up and running on a kata.

To set up this project either:

- Click [**Use this template**](https://github.com/andyw8/ruby-kata-template/generate) button and clone the new repo

or

- Use the GitHub CLI:

  ```
  gh repo create YOUR_KATA_NAME --private --template andyw8/ruby-kata-template --clone
  ```

Then run:

```
bundle install
```

To run the tests and `standard` linting:

```
bundle exec rake
```

You should probably start by renaming `Project` to something more appropriate to the kata.

## Features

- `active_support/test_case`, so you can write 'declarative' tests, e.g. `test "it works" do...` rather than `def test_it_works`.
  - (Note: This means your tests need to inherit from `ActiveSupport::TestCase` rather than `Minitest::Test`)
- `rake test`, with support for [both MiniTest naming conventions](https://minitest.rubystyle.guide/#file-naming) (`test_*.rb` and `*_test.rb`)
- [ruby-lsp](https://rubygems.org/gems/ruby-lsp) gem for instant linting/formatting
- [m](https://github.com/qrush/m) gem to allow running tests by line number.
- [standard](https://github.com/testdouble/standard) gem, a reduced RuboCop configuration.
- [rubocop-minitest](https://github.com/rubocop/rubocop-minitest) (to catch common mistakes rather than enforce style)
- [pry-byebug](https://github.com/deivid-rodriguez/pry-byebug)
- [minitest-reporters](https://github.com/minitest-reporters/minitest-reporters) for color output in MiniTest
- Minitest `make_my_diffs_pretty!` enabled for easier reading of failures
- CI using GitHub Actions (remove `.example` from `.github-actions/ruby.yml.example` to enable)
- A blank `NOTES.md` file
- Mocha
- Solargraph

# VS Code Features

- [Shopify Ruby Extensions Pack](https://marketplace.visualstudio.com/items?itemName=Shopify.ruby-extensions-pack)
- 'Format on Save' enabled
- Disables the GitHub Copilot VS Code extension

## Shopify Features

If you work at Shopify, there are some additional features:

- `dev up` to set up the project
- `dev test`
- `dev lint`
- `dev tcr` ([Test-Commit-Revert](https://www.honeybadger.io/blog/ruby-tcr-test-commit-revert/))

(we also set `DEV_NO_AUTO_UPDATE` to prevent `dev` updating at an inconvenient time)

## Example Keybindings for VS Code

It's very helpful to configure your editor to allow a test to be triggered from the keyboard.

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

## Troubleshooting

`unknown command 'm' (ArgumentError)` - this happens if your test inherits from `Minitest::Test` instead of
`ActiveSupport::TestCase`, but I'm currently unsure why.
