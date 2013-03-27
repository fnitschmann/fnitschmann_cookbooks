# Cookbook Name:: git
# Recipe:: default
case node["platform"]
 when "debian", "ubuntu"
 	package "git-core" do
 		action :install 
 	end
 else 	
 	package "git" do
 		action :install
 	end 
 end 