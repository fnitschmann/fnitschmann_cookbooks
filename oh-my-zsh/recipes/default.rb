# Cookbook Name:: oh-my-zsh
# Recipe:: default 
include_recipe "git"
include_recipe "zsh"

if ENV.key?("SUDO_USER") && ENV["SUDO_USER"] != ENV["USER"]
	user_id = ENV["SUDO_USER"]
else
	user_id = ENV["USER"]	
end

if node[:platform] == 'mac_os_x'
	user_home = "/Users/#{user_id}"
else
	if ENV.key?("SUDO_USER") && ENV["SUDO_USER"]
		user_home = "/root"
	else
		user_home = "/home/#{user_id}"
	end
end

git "#{user_home}/.oh-my-zsh" do 
	repository "git://github.com/robbyrussell/oh-my-zsh.git"
	reference "master"
	user user_id
	group user_id
	action :checkout
end 