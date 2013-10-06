# LongTweet

LongTweet takes care of posting 140+ character tweets to your timeline.
Give it your tweet, and LongTweet will post so your followers can read
it on their timeline as if it were one long tweet. Your tweets will be
ordered with the start of the tweet at the top of their timeline and
will descend.

## Installation

Add this line to your application's Gemfile:

    gem 'long_tweet'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install long_tweet

## Usage

You need to register an app with twitter [here](https://dev.twitter.com/apps).
Once you have your keys, run `long_tweet_setup` to set up your
authentication.

After that, type `long_tweet` from the command line to start tweeting!

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
