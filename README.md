SiteStatus
=========
[![Code Climate](https://codeclimate.com/github/primedia/site_status.png)](https://codeclimate.com/github/primedia/site_status)
[![Build Status](https://travis-ci.org/primedia/site_status.png)](https://travis-ci.org/primedia/site_status)
[![Coverage Status](https://coveralls.io/repos/primedia/site_status/badge.png?branch=dev)](https://coveralls.io/r/primedia/site_status?branch=dev)
[![Dependency Status](https://gemnasium.com/primedia/site_status.png)](https://gemnasium.com/primedia/site_status)
[![Gem Version](https://badge.fury.io/rb/site_status.png)](http://badge.fury.io/rb/site_status)

If your app depends on any external services or endpoints, you've probably needed to ensure those services were properly responding. site_status allows you to easily monitor the http status of your sites and endpoints with a single rake task.

![<Display Name>](http://i.imgur.com/lRQCk00.gif)

## Installation


Add this line to your application's Gemfile:

    gem 'site_status'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install site_status


## Usage
site_status is configured by default to look for a file name `config/status_check.yml` in your project root.

```yaml
# create this file, with your custom endpoints: ./config/status_check.yml
endpoints:
  - 'http://www.b3ta.com/404'
  - 'http://github.com/'
other_endpoints:
  - 'http://canyoufixmycomputer.com/'
```

```ruby
# create this file:  ./lib/tasks/stat.rake
task :stat do
  require 'site_status'
end

```
In your terminal session, assuming you've already configured your endpoints:

```shell
rake stat
```
### Optional Configuration
If you prefer a different file path for your yml config, there is a simple congiuration switch:

```ruby
# configuration must be run prior to `require 'site_status'`
SiteStatus.configure do |config|
  config.yml_path = 'path/to/file.yml'
end
```
...

## Limitations
!!! does not play well with ssl or unresolvable dns.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Running the Tests

`bundle exec rake`

## Credits

...

## License

SiteStatus is released under the MIT License. See the bundled LICENSE file for details.