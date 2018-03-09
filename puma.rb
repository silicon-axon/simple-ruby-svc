threads_count = Integer(ENV['RACK_MAX_THREADS'] || 5)
threads threads_count, threads_count
workers Integer(ENV['WEB_CONCURRENCY'] || 2)
port        ENV['PORT']     || 9000
environment ENV['RACK_ENV'] || 'development'
rackup      DefaultRackup
preload_app!

# In case we want to daemonize
# daemonize true
# stdout_redirect 'log/puma.log', 'log/puma_err.log', true
