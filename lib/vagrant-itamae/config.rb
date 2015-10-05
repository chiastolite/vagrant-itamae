module VagrantPlugins
  module Itamae
    class Config < Vagrant.plugin('2', :config)
      attr_accessor :json
      attr_accessor :yaml
      attr_accessor :sudo
      attr_accessor :recipes
      attr_accessor :shell

      def initialize
        @recipes = UNSET_VALUE
        @json    = UNSET_VALUE
        @yaml    = UNSET_VALUE
        @sudo    = UNSET_VALUE
        @shell   = UNSET_VALUE
      end

      def finalize!
        @recipes = [] if @recipes == UNSET_VALUE
        @recipes = Array(@recipes)

        @json = nil if @json == UNSET_VALUE
        @yaml = nil if @yaml == UNSET_VALUE
        @shell = nil if @shell == UNSET_VALUE

        @sudo = false if @sudo == UNSET_VALUE
      end
    end
  end
end
