#!/usr/bin/env ruby

## adding this to require environment
require 'rubygems'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)


##put all models below to test in specs, then in specs just require this spec_helper file.
require_relative '../app/models/user.rb'
