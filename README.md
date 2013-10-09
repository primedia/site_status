site_status
============

[Project description and any badges]
If your app depends on any external services or endpoints, you've probably needed to ensure those services were properly responding. site_status allows you to easily monitor the http status of your sites and endpoints with a single rake task.

![<Display Name>](http://i.imgur.com/2L6pXpB.png)

##Setup

```ruby
# create this file:  ./lib/tasks/stat.rake
task :stat do
  require 'site_status'
end

```
In your shell, assuming you've already configured your endpoints:

```shell
rake stat
```

site_status is configured by default to look for a file name `config/status_check.yml` in your project root.

```yaml
# create this file, with your custom endpoints: ./config/status_check.yml
endpoints:
  - 'http://www.b3ta.com/404'
  - 'http://github.com/'
other_endpoints:
  - 'http://canyoufixmycomputer.com/'
```

If you prefer a different file path for your yml config, there is a simple congiuration switch:

```ruby
# configuration must be run prior to `require 'site_status'`
SiteStat.configure do |config|
  config.yml_path = 'path/to/file.yml'
end

## Limitations
!!! does not play well with ssl or unresolvable dns

## Installation
add `gem "site_status"` to your gemfile or `gem install site_status`

## Contributing

## Credits

## License

site_status is released under the MIT License. See the bundled LICENSE file for
details.