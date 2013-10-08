Gem::Specification.new do |s|
  s.name               = "site_status"
  s.version            = "0.0.1"
  s.default_executable = "site_status"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Luke Fender"]
  s.date = %q{2013-10-08}
  s.description = %q{Site status checker}
  s.email = %q{lfender@rentpath.com}
  s.files = ["Rakefile", "lib/site_status.rb"]
  s.test_files = []
  s.homepage = %q{}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Site Status!}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

