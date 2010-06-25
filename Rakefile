begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "howrah_renderer"
    gem.summary = %Q{Renderers for Howrah Html to Pdf project}
    gem.description = %Q{Renderers for Howrah Html to Pdf project}
    gem.email = "kmandrup@gmail.com"
    gem.homepage = "http://github.com/kristianmandrup/howrah_renderer"
    gem.authors = ["Kristian Mandrup", "Anuj"]
    gem.add_development_dependency "rspec", ">= 2.0.0.beta13"
    gem.add_dependency "foxy_factory"
    gem.add_dependency "proxy_party"    
    gem.add_dependency "prawn_commander", ">=0.1.2"    
    
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

# require 'spec/rake/spectask'
# Spec::Rake::SpecTask.new(:spec) do |spec|
#   spec.libs << 'lib' << 'spec'
#   spec.spec_files = FileList['spec/**/*_spec.rb']
# end
# 
# Spec::Rake::SpecTask.new(:rcov) do |spec|
#   spec.libs << 'lib' << 'spec'
#   spec.pattern = 'spec/**/*_spec.rb'
#   spec.rcov = true
# end
# 
# task :spec => :check_dependencies
# 
# task :default => :spec
# 
# require 'rake/rdoctask'
# Rake::RDocTask.new do |rdoc|
#   version = File.exist?('VERSION') ? File.read('VERSION') : ""
# 
#   rdoc.rdoc_dir = 'rdoc'
#   rdoc.title = "howrah_renderer #{version}"
#   rdoc.rdoc_files.include('README*')
#   rdoc.rdoc_files.include('lib/**/*.rb')
# end
