# git_remove_tag plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-git_remove_tag)

## Getting Started

This project is a [_fastlane_](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-git_remove_tag`, add it to your project by running:

```bash
fastlane add_plugin git_remove_tag
```

## About git_remove_tag

remove git origin and remote repo tag

**Note to author:** Add a more detailed description about this plugin here. If your plugin contains multiple actions, make sure to mention them here.

## Example

if you have git repo like this:

```
 ~/Desktop/git_demo   master  pwd
/Users/xiongzenghui/Desktop/git_demo
```

```
 ~/Desktop/git_demo   master  pwd
remote: Enumerating objects: 1, done.
remote: Counting objects: 100% (1/1), done.
remote: Total 1 (delta 0), reused 0 (delta 0)
Unpacking objects: 100% (1/1), done.
From gitee.com:garywade/git_demo
 * [new tag]         v9.9.9     -> v9.9.9
```

if you want remove **v9.9.9** this tag in **local** and **remote** git repo, then you can like this:

```ruby
git_remove_tag(
  workspace: '/Users/xiongzenghui/Desktop/git_demo',
  tag: 'v9.9.9'
)
```

```
..........................................

[11:17:37]: $ cd /Users/xiongzenghui/Desktop/git_demo;git tag -d v9.9.9;git push origin :v9.9.9
[11:17:37]: ▸ Deleted tag 'v9.9.9' (was 35a18f0)
[11:17:38]: ▸ remote: Powered By Gitee.com
[11:17:38]: ▸ To gitee.com:garywade/git_demo.git
[11:17:38]: ▸ - [deleted]         v9.9.9
[11:17:38]: git remove tag v9.9.9 SUCCESS ✅

..........................................
```

done!


## Run tests for this plugin

To run both the tests, and code style validation, run

```
rake
```

To automatically fix many of the styling issues, use
```
rubocop -a
```

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://docs.fastlane.tools/plugins/plugins-troubleshooting/) guide.

## Using _fastlane_ Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://docs.fastlane.tools/plugins/create-plugin/).

## About _fastlane_

_fastlane_ is the easiest way to automate beta deployments and releases for your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
