# Professionali

It's ruby wrapper for [Professionali](http://dev.professionali.ru)'s API.

## Installation

Add this line to your application's Gemfile:

    gem 'professionali'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install professionali

## Usage

Create a client by providing access token:
    
    client = Professionali::Client.new token
    
Then just use same bindings as in API documentation. Examples:

    client.users.get("me", "id,firstname,lastname,name,birthday,gender,avatar_big,link,languages")
    client.users.schools("me")
    client.search.get('Ruby')
    
Responce retunred as Hashie::Mash.
    
    

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
