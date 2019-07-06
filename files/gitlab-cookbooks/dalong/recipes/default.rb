#
# Cookbook:: dalong
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

cookbook_file '/opt/dalongdemo' do
    source 'dalong'
    mode '0755'
    action :create
end

template '/opt/userinfo' do
    source 'userlogin.erb'
    mode '0755'
    action :create
end
