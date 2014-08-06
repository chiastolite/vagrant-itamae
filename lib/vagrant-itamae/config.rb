module VagrantPlugins
  module Itamae
    class Config < Vagrant.plugin('2', :config)
      attr_accessor :json
      attr_accessor :recipes

      def initialize
        @recipes = UNSET_VALUE
        @json    = UNSET_VALUE
      end

      def finalize!
        @recipes = [] if @recipes == UNSET_VALUE
        @recipes = Array(@recipes)

        @json = nil if @json == UNSET_VALUE
      end
    end
  end
end
