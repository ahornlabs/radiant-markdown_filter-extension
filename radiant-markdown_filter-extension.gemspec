# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "radiant-markdown_filter-extension"

Gem::Specification.new do |s|
  s.name        = "radiant-markdown_filter-extension"
  s.version     = RadiantMarkdownFilterExtension::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Radiant CMS Dev Team"]
  s.email       = ["radiant@radiantcms.org"]
  s.homepage    = "http://radiantcms.org/"
  s.summary     = %q{Markdown Filter for Radiant CMS}
  s.description = RadiantMarkdownFilterExtension::DESCRIPTION

  ignores = if File.exist?(".gitignore")
    File.read(".gitignore").split("\n").inject([]) {|a,p| a + Dir[p] }
  else
    []
  end
  s.files         = Dir["**/*"] - ignores
  s.test_files    = Dir["test/**/*","spec/**/*","features/**/*"] - ignores
  s.require_paths = ["lib"]

  s.add_dependency "bluecloth", "~> 2.2.0"
end