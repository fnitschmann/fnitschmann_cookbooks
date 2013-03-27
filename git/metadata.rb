name "zsh"
maintainer "Florian Nitschmann"
maintainer_email "f.nitschmann@googlemail.com"
license "MIT-LICENSE"
description "Installs the main dependencies for Git on the machine"
version "0.1"

%w{ debian ubuntu mac_os_x }.each do |os|
	supports os
end 


recipe "git", "Installs Git"