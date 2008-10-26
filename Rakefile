%w[rubygems rake rake/clean fileutils hoe newgem rubigen].each { |f| require f }
$:.unshift 'lib'
require File.dirname(__FILE__) + '/lib/rspec-extensions'

$hoe = Hoe.new('rspec-extensions', RspecExtensions::VERSION) do |p|
  p.developer('David Chelimsky', 'dchelimsky@gmail.com')
  p.changes         = p.paragraphs_of("History.txt", 0..1).join("\n\n")
  p.rubyforge_name  = p.name # TODO this is default value
  p.extra_deps      = [['rspec','>= 1.1.11']]
  p.extra_dev_deps  = [['newgem', ">= #{::Newgem::VERSION}"]]
  
  p.spec_extras['rdoc_options'] = ['--main', Dir['README*'].first] # hopefully fixed in future hoe > 1.8
  p.clean_globs |= %w[**/.DS_Store tmp *.log]
  path = (p.rubyforge_name == p.name) ? p.rubyforge_name : "\#{p.rubyforge_name}/\#{p.name}"
  p.remote_rdoc_dir = File.join(path.gsub(/^#{p.rubyforge_name}\/?/,''), 'rdoc')
  p.rsync_args = '-av --delete --ignore-errors'
end

require 'newgem/tasks' # load /tasks/*.rake
require 'spec/rake/spectask'

Spec::Rake::SpecTask.new do |t|
  t.spec_opts = ['--options', 'spec/spec.opts']
end

