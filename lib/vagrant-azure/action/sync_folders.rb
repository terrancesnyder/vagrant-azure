# Copyright (c) 2014 Mitchell Hashimoto
# Under The MIT License (MIT)
#---------------------------------------------------------------------------
# Copyright (c) Microsoft Open Technologies, Inc.
# All Rights Reserved.  Licensed under the Apache License, Version 2.0.
# See License.txt in the project root for license information.
#--------------------------------------------------------------------------
require "log4r"
require "vagrant/util/subprocess"
require "vagrant/util/scoped_hash_override"
require "vagrant/util/which"
require "#{Vagrant::source_root}/lib/vagrant/action/builtin/synced_folders"

module VagrantPlugins
  module Azure
    module Action
      # This middleware uses `rsync` to sync the folders
      class SyncFolders < Vagrant::Action::Builtin::SyncedFolders
        include Vagrant::Util::ScopedHashOverride

        def initialize(app, env)
          @app    = app
          @logger = Log4r::Logger.new("vagrant_azure::action::sync_folders")
        end

        def call(env)
          super
          # not doing anything special here....
        end

      end
    end
  end
end