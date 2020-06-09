# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: chromaprint 0.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "chromaprint".freeze
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["TMX Credit".freeze, "Potapov Sergey".freeze]
  s.date = "2020-06-09"
  s.description = "A client-side library that implements a custom algorithm for extracting fingerprints from any audio source".freeze
  s.email = ["rubygems@tmxcredit.com".freeze, "blake131313@gmail.com".freeze]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.markdown"
  ]
  s.files = [
    "LICENSE.txt",
    "README.markdown",
    "lib/chromaprint.rb",
    "lib/chromaprint/context.rb",
    "lib/chromaprint/fingerprint.rb",
    "lib/chromaprint/lib.rb"
  ]
  s.homepage = "https://github.com/TMXCredit/chromaprint".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Port of Chromaprint library to Ruby".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ffi>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<jeweler>.freeze, [">= 0"])
      s.add_development_dependency(%q<yard>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<byebug>.freeze, [">= 0"])
    else
      s.add_dependency(%q<ffi>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<jeweler>.freeze, [">= 0"])
      s.add_dependency(%q<yard>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<byebug>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<ffi>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<jeweler>.freeze, [">= 0"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<byebug>.freeze, [">= 0"])
  end
end

