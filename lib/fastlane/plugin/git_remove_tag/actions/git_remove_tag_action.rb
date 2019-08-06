require 'fastlane/action'
require_relative '../helper/git_remove_tag_helper'

module Fastlane
  module Actions
    class GitRemoveTagAction < Action
      def self.run(params)
        workspace = params[:workspace]
        tag = params[:tag]
        remove_local = params[:remove_local]
        remove_remote = params[:remove_remote]

        cmds = [
          "cd #{workspace}",
          ("git tag -d #{tag}" if remove_local),
          ("git push origin :#{tag}" if remove_remote)
        ].compact
        Actions.sh(cmds.join(';'))
        UI.message("git remove tag #{tag} SUCCESS ✅")
        true
      end

      def self.description
        "remove git origin and remote repo tag"
      end

      def self.authors
        ["xiongzenghui"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        "remove git origin and remote repo tag"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(
            key: :workspace,
            description: "where are you git repo dir ???",
            optional: false
          ),
          FastlaneCore::ConfigItem.new(
            key: :tag,
            description: "what tag did you want to remove ???",
            optional: false
          ),
          FastlaneCore::ConfigItem.new(
            key: :remove_local,
            description: "did you remove <local> tag ???",
            optional: true,
            is_string: false,
            default_value: true
          ), 
          FastlaneCore::ConfigItem.new(
            key: :remove_remote,
            description: "did you remove <remote> tag ???",
            optional: true,
            is_string: false,
            default_value: true
          ) 
        ]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
