require 'fastlane_core/ui/ui'

module Fastlane
  UI = FastlaneCore::UI unless Fastlane.const_defined?("UI")

  module Helper
    class GitRemoveTagHelper
      # class methods that you define here become available in your action
      # as `Helper::GitRemoveTagHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the git_remove_tag plugin helper!")
      end
    end
  end
end
