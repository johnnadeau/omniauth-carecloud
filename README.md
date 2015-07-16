# OmniAuth CareCloud &nbsp;[![Build Status](https://travis-ci.org/johnnadeau/omniauth-carecloud.svg?branch=master)](https://travis-ci.org/johnnadeau/omniauth-carecloud)

CareCloud Oauth2 Strategy for OmniAuth.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "omniauth-carecloud"
```

And then `$ bundle`

## Usage

```ruby
use OmniAuth::Builder do
  provider :carecloud, ENV["CARECLOUD_CLIENT_ID"], ENV["CARECLOUD_CLIENT_SECRET"]
end
```

Or with [devise](https://github.com/plataformatec/devise)

```ruby
config.omniauth :carecloud, ENV["CARECLOUD_CLIENT_ID"], ENV["CARECLOUD_CLIENT_SECRET"]
```

## Contributing

1. Fork it ( https://github.com/johnnadeau/omniauth-carecloud/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
