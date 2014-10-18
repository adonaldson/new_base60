# NewBase60

My interpretation of Tantek Çelik's NewBase60:

* http://tantek.pbworks.com/w/page/19402946/NewBase60
* http://tantek.pbworks.com/w/page/21743973/Whistle

Although another ruby port existed, I fancied rolling my own.
It can be found here:

https://github.com/veganstraightedge/new_base_60

For sanity checks I copied some of their tests and outputs. For laziness (and because their readme was pretty good) I've ripped most of their Readme.

## Description

Handy Conversion Sexagesimal (base 60) for Short URLs
Cuts out ambiguous characters like:

* `l` : lowercase `L` (looks like a `1` : one)
* `I` : capital   `i` (looks like a `1` : one)
* `O` : capital   `o` (looks like a `0` : zero)

Based on work done by Tantek Çelik : [http://ttk.me/w/NewBase60](http://ttk.me/w/NewBase60 "tantek / NewBase60")

## Features/Problems

* Holds off on the monkey patching at the expense of being slightly more clunky
* Converts Base10 to Base60 (147124 becomes fs4)
* Converts Base60 to Base10 (fs4 becomes 147124)
* Converts Base60 to a Date object (464 becomes 4 June 2010)
* Converts a Date to Base60 (5 June 2012 becomes 4JG)

## Synopsis

How to use:

```ruby
require "new_base60"

NewBase60::Sxg.new('10').to_i         # => 60
NewBase60::Sxg.new('464').to_date     # => #<Date: 2010-06-04 ((2455352j,0s,0n),+0s,2299161j)>
NewBase60::Base10.new(147124).to_sxg  # => "fs4"

NewBase60::SxgDate.new(2012, 6, 5).to_sxg   # => "4JG"
# or
d = Date.new(2014, 6, 5)
NewBase60::SxgDate.new_from_date(d).to_sxg  # => "4WS"
```

## Install

Add this line to your application's Gemfile:

```ruby
gem 'new_base60'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install new_base60
``

# Credits
## Contributors

* [Original Idea](http://tantek.com/w/NewBase60 "tantek / NewBase60") : [Tantek Çelik](http://tantek.com "tantek.com") ([@tantek](https://github.com/tantek))
* Other Ruby Port : [Shane Becker](http://iamshane.com "I&#x27;m Shane Becker") ([@veganstraightedge](https://github.com/veganstraightedge))

## License

**PUBLIC DOMAIN**

Your heart is as free as the air you breathe. <br>
The ground you stand on is liberated territory.

In legal text, new_base60 is dedicated to the public domain
using Creative Commons -- CC0 1.0 Universal.

[http://creativecommons.org/publicdomain/zero/1.0](http://creativecommons.org/publicdomain/zero/1.0 "Creative Commons &mdash; CC0 1.0 Universal")

## Contributing

1. Fork it ( https://github.com/[my-github-username]/new_base60/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
