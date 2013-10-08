site_status
============

[Project description and any badges]
![<Display Name>](http://i.imgur.com/2L6pXpB.png)

If your app depends on any external services or endpoints, you've probably needed to ensure those services were properly responding.

site_status is a light weight gem which checks the HTTP status of any website(s).

```ruby
# create this file:  ./lib/tasks/status.rake
namespace :status do
  task :check do
    require 'site_status'
  end
end
```

In your shell, assuming you've already configured your endpoints:

```shell
rake status:check
```

## Requirements
site_status is configured by default to look for a file name `config/status_check.yml` in your project root.

```yaml
# create this file: ./config/status_check.yml
endpoints:
  - 'http://www.b3ta.com/404'
  - 'http://github.com/'
other_endpoints:
  - 'http://canyoufixmycomputer.com/'
```

If you prefer a different file path, configuration is simple:

```ruby
SiteStat.configure do |config|
  config.yml_path = 'path/to/file.yml'
end
```
Configuration must be run prior to `require 'site_status'`

## Limitations
!!! does not play well with ssl or unresolvable dns

## Installation
add `gem "site_status"` to your gemfile or `gem install site_status`

## Contributing

## Credits

## License

site_status is released under the MIT License. See the bundled LICENSE file for
details.