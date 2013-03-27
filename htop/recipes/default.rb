# Cookbook Name:: htop
# Recipe:: default 

case node[:platform]
when "debian", "ubuntu"
	package "htop" do
		action :install
	end
end