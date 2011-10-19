begin
  require File.expand_path('../.bundle/environment', __FILE__)
rescue LoadError
  begin
    require 'rubygems'
    require 'bundler'
    Bundler.require
  rescue
    require File.expand_path('../config/environment', __FILE__)
  end
end

jt = Jeweler::Tasks.new do |gem|
  gem.name = "syslog-logger"
  gem.summary = "An improved Logger replacement that logs to syslog. It is almost drop-in with a few caveats."
  gem.description = "An improved Logger replacement that logs to syslog. It is almost drop-in with a few caveats."
  gem.email = "teamplatform@ngmoco.com"
  gem.homepage = "http://github.com/ngmoco/syslog_logger"
  gem.authors = ["Eric Hodel; Chris Powell; Matthew Boeh; Ian Lesperance; Dana Danger; Brian Smith; Ashley Martens"]
  gem.files    = FileList["lib/syslog_logger.rb", "lib/syslog_logger_env_formatting.rb", "README.rdoc"]
  gem.test_files = FileList["test/test_syslog_logger.rb"]
  gem.has_rdoc = true
  gem.extra_rdoc_files = ["README.rdoc"]
  gem.rdoc_options = ["--line-numbers", "--inline-source", "--title", "SyslogLogger", "--main", "README.rdoc"]
end
Jeweler::GemcutterTasks.new

task :default => :package

$dir = File.dirname(__FILE__)

desc "Run all tests"
task :test do
  $: << "#{$dir}/lib"
  Dir.glob("#{$dir}/test/*.rb").each do |test_rb|
    require test_rb
  end
end

desc "Push a new version to Gemcutter"
task :publish => [ :test, :build ] do
  system "git tag v#{jt.jeweler.version}"
  system "git push origin v#{jt.jeweler.version}"
  system "git push origin master"
  system "gem push pkg/syslog-logger-#{jt.jeweler.version}.gem"
  system "git clean -fd"
end
