#!/usr/bin/env rake
# coding: utf-8

require 'rake/testtask'
require "bundler/gem_tasks"

#Run the fOOrth unit test suite.
Rake::TestTask.new do |t|
  #List out all the unit test files.
  t.test_files = FileList['tests/**/*.rb']
  t.verbose = false
  t.warning = true
end

desc "Run a scan for smelly code!"
task :reek do |t|
  `reek --no-color lib > reek.txt`
end

desc "What version of games_lessons is this?"
task :vers do |t|
  puts
  puts "games_lessons version = #{GamesLessons::VERSION}"
end

