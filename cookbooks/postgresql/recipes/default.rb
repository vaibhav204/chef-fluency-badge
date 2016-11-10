#
# Cookbook Name:: postgresql
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

packge 'postgresql-server' do
	notifies :run, 'execute[postgreqsql-init]'
end

execute 'postgresql-init' do
	command 'postgresql-setup initdb'
	action :nothing
end


service 'postgresql' do
	action [:enable, :start]
end
