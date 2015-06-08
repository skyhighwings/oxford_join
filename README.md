# oxford\_join

Natural English-style array joining.

## Usage

Super simple. It's an `Array` monkey-patch.

    [1] require 'oxford_join'
    [2] pry(main)> ary = [1, 2, 3]
    [
        [0] 1,
        [1] 2,
        [2] 3
    ]
    [3] pry(main)> ary.oxford_join
    "1, 2, and 3"
    [4] pry(main)> ary.oxford_join 'or'
    "1, 2, or 3"
    [5] pry(main)> ary = [1, 2]
    [
        [0] 1,
        [1] 2
    ]
    [6] pry(main)> ary.oxford_join
    "1 and 2"
    [7] pry(main)> ary = [0]
    [
        [0] 0
    ]
    [8] pry(main)> ary.oxford_join
    "0"
    [9] pry(main)> ary = []
    []
    [10] pry(main)> ary.oxford_join
    ""


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'oxford_join'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install oxford_join

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/skyhighwings/oxford\_join/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
