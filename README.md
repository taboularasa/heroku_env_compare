# HerokuEnvCompare

Ever need to see how two heroku app environments are different? This _might_ help you

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'heroku_env_compare'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install heroku_env_compare

## Usage

This gem assumes that you have heroku toolbelt installed and configured
Given two app names, provided by

`$ heroku list`

use this gem like so:

`$ heroku_env_key_diff <first_app> <second_app>`

This should print out all the environment keys that are not common between the two apps

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/heroku_env_compare.
