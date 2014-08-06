module VagrantPlugins
  module Itamae
    class Plugin < Vagrant.plugin('2')
      name 'itamae'
      provisioner(:itamae) do
        require_relative 'provisioner'
        Provisioner
      end

      config(:itamae, :provisioner) do
        require_relative 'config'
        Config
      end
    end
  end
end
