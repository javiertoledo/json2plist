# Json2plist

This is a very simple gem that allows to generate a plist from any json and comes with a handy command line tool to do that also with files.

## Installation

Add this line to your application's Gemfile:

    gem 'json2plist'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install json2plist

## Usage

### In your code

You can use it in your app by just using the convert method in the library:

    require 'json2plist'
    # Generate your wonderful plist
    plist = Json2plist::convert(json)
    # Do whatever you want with it
    File.write("/somewhere/over/the/rainbow.plist", plist)

Or you can use the command line:

    json2plist -i some.json -o wonderful.plist

## Why would you create this thing?

Doing this with ruby is straightforward, but not everyone in our team are Ruby developers, and sometimes we have to convert JSON into Plist in our build processes. For example: We use this gem to maintain configuration options for our Android and iOS apps in one single place, we edit only the JSON files and then a plist is generated for iOS joy.

## Disclaimer

Don't think about using this to generate Plist files from Ruby hashes or objects by converting them into a JSON first. For this use the awesome [plist gem](https://github.com/bleything/plist).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
