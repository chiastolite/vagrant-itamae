require 'itamae'

module VagrantPlugins
  module Itamae
    class Provisioner < Vagrant.plugin('2', :provisioner)
      def provision
        options = {
          node_json: config.json,
          node_yaml: config.yaml,
          sudo: config.sudo,
          shell: config.shell,
          host: @machine.ssh_info[:host],
          port: @machine.ssh_info[:port],
          user: @machine.ssh_info[:username],
          key:  @machine.ssh_info[:private_key_path][0]
        }
        ::Itamae::Runner.run(config.recipes, :ssh, options)
      end
    end
  end
end
