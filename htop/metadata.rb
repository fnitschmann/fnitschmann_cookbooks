name 							"htop"
maintainer 				"Florian Nitschmann"
maintainer_email 	"f.nitschmann@googlemail.com"
license 					"MIT-LICENSE"
description 			"Installs htop interactive process viewer"
version 					"0.1"

%w{ debian ubuntu }.each do |os|
	supports os
end 

recipe "htop", "Installs htop"