require 'fastlane/action'
require_relative '../helper/git_remove_tag_helper'

module Fastlane
  module Actions
    class GitRemoveTagAction < Action
      def self.run(params)
        UI.message("The git_remove_tag plugin is working!")
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
        # Optional:
        "remove git origin and remote repo tag"
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "GIT_REMOVE_TAG_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://docs.fastlane.tools/advanced/#control-configuration-by-lane-and-by-platform
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
