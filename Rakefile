require 'rake/testtask'

desc 'Clean the directory of autosave files.'
task :clean do
  sh 'rm *~' # delete emacs autosave files
end

Rake::TestTask.new do |t|
  t.test_files = FileList['test/tc*.rb']
end
