# Kakunin

Kakunin is a minimalistic tool to prompt users for confirmation. It currently does so by requesting users to solve an easy mathematical problem (a simple addition). In the future, other forms may be added.

This may look similar to captcha solutions. But, Kakunin's aim is not to determine whether users are human or not, but rather to prevent users from performing a dangerous action (e.g., deleting files or destroying a cloud infrastructure).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kakunin'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kakunin

## Usage

Usage example:

```ruby
require 'kakunin'

begin
  Kakunin::Math.new.ask
  # some potentially dangerous code that requires confirmation
rescue StandardError => e
  puts "ERROR: #{e}"
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/betabandido/kakunin. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.
