set :output, "#{path}/log/cron.log"
job_type :script, "'#{path}/script/:task' :output"

every 2.minutes do
  rake "ts:rebuild"
  rake "ts:reindex"
end

every :reboot do
  rake "ts:start"
end
