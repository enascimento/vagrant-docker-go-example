Vagrant.configure(2) do |config|
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.define "app" do |v|
    v.vm.provider "docker" do |d|
      d.build_dir = "."
    end
  end
end
