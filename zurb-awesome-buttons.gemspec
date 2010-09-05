# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{zurb-awesome-buttons}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.date = %q{2010-09-04}
  s.extra_rdoc_files = [
    "README.mkd"
  ]
  s.files = [
    "lib/app_helper.rb",
     "lib/awesome_buttons.rb",
     "lib/engine.rb",
     "lib/generators/awesome/USAGE",
     "lib/generators/awesome/install_generator.rb",
     "lib/generators/awesome/templates/awesome-overlay.png",
     "lib/generators/awesome/templates/awesome.css",
     "lib/generators/awesome/templates/awesome.sass"
  ]
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{packaging for styles from http://www.zurb.com/article/266/super-awesome-buttons-with-css3-and-rgba, with some helpers}
  s.test_files = [
    "spec/application_helper_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

