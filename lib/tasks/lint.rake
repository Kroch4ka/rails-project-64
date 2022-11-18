# frozen_string_literal: true

require 'slim_lint/rake_task'
require 'rubocop/rake_task'

SlimLint::RakeTask.new do |c|
  c.files = ['app/views']
end

RuboCop::RakeTask.new do |task|
  task.requires << 'rubocop-rails'
end

task default: %i[test rubocop slim_lint]
