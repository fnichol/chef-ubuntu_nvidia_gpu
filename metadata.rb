maintainer       "Fletcher Nichol"
maintainer_email "fnichol@nichol.ca"
license          "Apache 2.0"
description      "Installs/Configures NVIDIA graphics drivers on Ubuntu Linux"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.1"

recipe "ubuntu_nvidia_gpu",     "Default, empty recipe"
recipe "ubuntu_nvidia_gpu::official_repository",  
  "Installs NVIDIA's graphics drivers with Ubuntu's official packages"

%w{ ubuntu }.each do |os|
  supports os
end

