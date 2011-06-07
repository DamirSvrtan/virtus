desc 'Run metrics with Heckle'
task :ci => [ 'ci:metrics', :heckle ]

namespace :ci do
  desc 'Run metrics'
  task :metrics => [ :verify_measurements, :flog, :flay, :reek, :roodi, 'metrics:all' ]
end
