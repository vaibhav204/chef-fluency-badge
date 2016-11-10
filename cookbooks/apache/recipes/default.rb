#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


if node['platform_family'] == "rhel"
	package = "httpd"
elsif ['platform_family'] == "debian"
	packag  = "apache2"
end

package 'apache2' do
	package_name package
	action :install
end

service 'apache2' do
	service_name 'httpd'
	action [:start, :enable]
end


