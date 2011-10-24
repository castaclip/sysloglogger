# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{SyslogLogger}
  s.version = "1.6.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Daniel Schweighöfer; Sebastian Schulze; Eric Hodel; Chris Powell"]
  s.date = %q{2011-10-19}
  s.description = %q{An improved Logger replacement that logs to syslog. It is almost drop-in with a few caveats.}
  s.email = %q{daniel@netsteward.net; info@bascht.com; drbrain@segment7.net; cpowell@prylis.com}
  s.extra_rdoc_files = ["lib/syslog_logger.rb", "README.rdoc"]
  s.files = [ "lib/syslog_logger.rb", "Manifest", "Rakefile", "README.rdoc", "test/test_syslog_logger.rb", "sysloglogger.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/castaclip/sysloglogger}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "SyslogLogger", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.summary = %q{An improved Logger replacement that logs to syslog. It is almost drop-in with a few caveats.}
  s.test_files = ["test/test_syslog_logger.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
