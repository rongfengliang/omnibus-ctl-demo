
config = {
    "name":"dalong",
    "application":"gitlabdemo",
    "version":"v1.0",
    "configpath":"/opt/gitlab"
}

puts Chef::JSONCompat.to_json_pretty(config)
return