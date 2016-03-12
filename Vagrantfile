Vagrant.configure(2) do |config|

  # Artifactory
  config.vm.define "artifactory" do |artifactory|
    artifactory.vm.box = "puppetlabs/centos-7.0-64-puppet"
    artifactory.vm.network :forwarded_port, guest: 8081, host: 8080
    artifactory.vm.provision "puppet" do |puppet|
      puppet.manifests_path = "manifests"
      puppet.manifest_file = "site.pp"
      puppet.module_path = "modules"
    end
    artifactory.vm.provider "virtualbox" do |vb|
      vb.gui = true
      vb.memory = "2048"
    end
  end

  # Jenkins
  #config.vm.define "jenkins" do |jenkins|
  #  jenkins.vm.box = "puppetlabs/centos-7.0-64-puppet"
  #  jenkins.vm.network :forwarded_port, guest: 8080, host: 8082
  #  jenkins.vm.provision :shell, path: "install-artifactory.sh"
  #  jenkins.vm.provider "virtualbox" do |vb|
  #    vb.gui = true
  #    vb.memory = "2048"
  #  end
  #end

  # Tomcat
  #config.vm.define "tomcat" do |tomcat|
#    tomcat.vm.box = "puppetlabs/centos-7.0-64-puppet"
#    tomcat.vm.network :forwarded_port, guest: 8080, host: 8083
#    tomcat.vm.provision :shell, path: "install-artifactory.sh"
#    tomcat.vm.provider "virtualbox" do |vb|
#      vb.gui = true
#      vb.memory = "2048"
#    end
  #end
end
