name "gitlab-ctl"
dependency "omnibus-ctl"

source :path => File.expand_path("files/gitlab-ctl-commands", RbConfig::CONFIG['project_root'])
build do
  block do
    open("#{install_dir}/embedded/bin/gitlab-ctl", "w") do |file|
      file.print <<-EOH
#!/bin/bash

# Ruby environment if gitlab-ctl is called from a Ruby script.
for ruby_env_var in RUBYOPT \\
                    BUNDLE_BIN_PATH \\
                    BUNDLE_GEMFILE \\
                    GEM_PATH \\
                    GEM_HOME
do
  unset $ruby_env_var
done

#{install_dir}/embedded/bin/omnibus-ctl gitlab #{install_dir}/embedded/service/omnibus-ctl $@
       EOH
    end
  end

  command "chmod 755 #{install_dir}/embedded/bin/gitlab-ctl"

  # additional omnibus-ctl commands
  sync "#{project_dir}/", "#{install_dir}/embedded/service/omnibus-ctl/"
end
