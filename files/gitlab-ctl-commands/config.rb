add_command 'config', 'reconfig for gitlab server', 1 do |cmd_name|
      puts 'run config'
      reconfigure
  end
  