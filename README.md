This a blank Ruby project ready to run with MiniTest.

It's intended for both new and experienced developers to get an up running on a kata.

To set up this project, click the 'Use this template' button, clone the new repo, then run:

```
bundle install
```

To run the tests:

```
bundle exec rake test
```

## Features

- Pry for debugging
- [standardrb](https://github.com/testdouble/standard), a reduced RuboCop configuration.
- CI using GitHub Actions
- RuboCop-LSP
- [declarative_minitest](https://github.com/peterzhu2118/declarative_minitest) so you can write `test "it works" do...` rather than `def test_it_works`.
- `rake test` which supporting both naming conventions (`test_*.rb` and `*_test.rb`)

## Shopify Features

If you work at Shopify, there are some additional features:

- `dev up` to set up the project
- `dev test`
- `dev lint`
