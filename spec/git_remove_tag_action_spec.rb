describe Fastlane::Actions::GitRemoveTagAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The git_remove_tag plugin is working!")

      Fastlane::Actions::GitRemoveTagAction.run(nil)
    end
  end
end
