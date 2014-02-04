lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
Gem::Specification.new do |s|
  s.name               = "site_status"
  s.version            = "0.0.7"
  s.default_executable = "site_status"
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Luke Fender, Mike Fischer"]
  s.date = %q{2013-10-08}
  s.description = %q{easily monitor the http status of your sites and endpoints with a single rake task}
  s.email = %q{lfender@rentpath.com}
  s.files = `git ls-files`.split($/)
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]
  s.homepage = %q{https://github.com/primedia/site_status}
  s.summary = %q{If your app depends on any external services or endpoints, you've probably needed to ensure those services were properly responding. site_status allows you to easily monitor the http status of your sites and endpoints with a single rake task. Visit https://github.com/primedia/site_status for more information.}
  s.add_dependency 'rainbow'
end
