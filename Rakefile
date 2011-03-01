require "rubygems"
require "rake/gempackagetask"
require "rake/rdoctask"

require "spec"
require "spec/rake/spectask"
Spec::Rake::SpecTask.new do |t|
  t.spec_opts = %w(--format specdoc --colour)
  t.libs = ["spec"]
end

task :default => ["spec"]

def generate_gem_spec
  Gem::Specification.new do |s|
    s.name              = "toname"
    s.version           = "0.1.2"
    s.summary           = "To Name"
    s.description       = "Convert video/torrent filename into movie/tv series name and year"
    s.author            = "Sam Cavenagh"
    s.email             = "cavenaghweb@hotmail.com"
    s.homepage          = "http://github.com/o-sam-o/toname"

    s.has_rdoc          = true
    s.extra_rdoc_files  = %w(README.md)
    s.rdoc_options      = %w(--main README.md)

    s.files             = %w(README.md) + Dir.glob("{spec,lib/**/*}")
    s.require_paths     = ["lib"]

    s.add_development_dependency("rspec", "~> 1.3")
  end
end

Rake::GemPackageTask.new(spec=generate_gem_spec) do |pkg|
  pkg.gem_spec = spec

  # Generate the gemspec file for github.
  file = File.dirname(__FILE__) + "/#{spec.name}.gemspec"
  File.open(file, "w") {|f| f << spec.to_ruby }
end

Rake::RDocTask.new do |rd|
  rd.main = "README.md"
  rd.rdoc_files.include("README.md", "lib/**/*.rb")
  rd.rdoc_dir = "rdoc"
end

desc 'Clear out RDoc and generated packages'
task :clean => [:clobber_rdoc, :clobber_package] do
  rm "#{spec.name}.gemspec"
end

desc "Run all specs with RCov"
Spec::Rake::SpecTask.new('specs_with_coverage') do |t|
  t.spec_files = FileList['spec/**/*.rb']
  t.rcov = true
  t.rcov_opts = ['--include', 'lib']
end

