Vagrant.configure('2') do |config|
  config.berkshelf.enabled = true
  config.omnibus.chef_version = :latest

  config.vm.define :glados do |guest|
    guest.vm.provision :chef_zero do |chef|
      chef.run_list = %w{glados::default}
    end
  end
end
