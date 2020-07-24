# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cru_auth_lib/version'

Gem::Specification.new do |s|
  s.name = 'cru-auth-lib'
  s.version = CruAuthLib::VERSION
  s.authors = ['Brian Zoetewey']
  s.email = ['brian.zoetewey@cru.org']
  s.homepage = 'https://github.com/CruGlobal/cru-auth-lib'
  s.summary = 'Cru Auth API library'
  s.description = 'Collection of common auth models for use in shared authentication.'
  s.license = 'MIT'
  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  s.require_paths = ['lib']

  s.add_dependency 'active_model_serializers', '>= 0.10.0.rc1'
  s.add_dependency 'redis', '>= 3.3'
end
