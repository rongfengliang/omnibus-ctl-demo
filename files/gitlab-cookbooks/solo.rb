CURRENT_PATH = File.expand_path(File.dirname(__FILE__))
TIME = Time.now.to_i
LOG_PATH = '/var/log/gitlab/reconfigure'.freeze
Dir.exist?(LOG_PATH) || FileUtils.mkdir_p(LOG_PATH)
file_cache_path "#{CURRENT_PATH}/cache"
cookbook_path CURRENT_PATH
cache_path "#{CURRENT_PATH}/cache"
verbose_logging false
# Log to the reconfigure log
log_location "#{LOG_PATH}/#{TIME}.log"
log_level :debug