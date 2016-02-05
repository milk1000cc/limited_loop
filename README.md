# LimitedLoop [![Build Status](https://travis-ci.org/milk1000cc/limited_loop.svg)](https://travis-ci.org/milk1000cc/limited_loop)

Avoid infinite loops

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'limited_loop'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install limited_loop

## Usage

Use `LimitedLoop.loop` instead of `Kernel.loop`.

When the block is executed over 100 times, an exception `LimitedLoop::LimitExceeded` is raised.

```ruby
LimitedLoop.loop do
  # your code
end
```

You can change the number of executable times:

```ruby
LimitedLoop.loop(50) do
  # your code
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/milk1000cc/limited_loop.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
