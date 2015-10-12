hiyoko
====

# Description

command line application to create xcode project from [Swift Docs](https://sites.google.com/a/gclue.jp/swift-docs/), great sample code Collection

# Requirement

on Mac OSX operationg system

following Ruby Gems:

* bundle
* nokogiri
* thor
* activerecord

# Install

```
$ git clone https://github.com/akimacho/hiyoko.git
$ cd hiyoko
$ [sudo] bundle exec rake install
```

# Usage

## help

```
$ hiyoko help
Commands:
  hiyoko generate        # setup xcode project
  hiyoko help [COMMAND]  # Describe available commands or one specific command
  hiyoko prepare         # setup lessons
  hiyoko progress        # show your progress
```

## show how to command

```
$ hiyoko help generate
Usage:
  hiyoko generate

Options:
  [--url=URL]        # setup by url
  [--target=TARGET]  # setup by [chap number]-[topic number]

setup xcode project
```

## init hiyoko

```
$ hiyoko prepare
All set. Let's fly!
```

## generate project from [Swift Docs](https://sites.google.com/a/gclue.jp/swift-docs/ni-yinki100-ios)

### select url

```
$ hiyoko generate --url="https://sites.google.com/a/gclue.jp/swift-docs/ni-yinki100-ios/uikit/003-uibuttondeiroironabotanwo-biao-shi"
create 01-003 directory
create 01-003.xcodeproj directory
  generate 01-003/01-003/AppDelegate.swift
  generate 01-003/01-003/ViewController.swift
  generate 01-003/01-003/Info.plist
  generate 01-003/01-003/Base.lproj/LaunchScreen.storyboard
  generate 01-003/01-003/Base.lproj/Main.storyboard
  generate 01-003/01-003/Assets.xcassets/AppIcon.appiconset/Contents.json
  generate 01-003/01-003.xcodeproj/project.pbxproj
  generate 01-003/01-003.xcodeproj/project.xcworkspace/contents.xcworkspacedata
  generate 01-003/01-003.xcodeproj/xcuserdata/01-003.xcuserdatad/xcschemes/01-003.xcscheme
  generate 01-003/01-003.xcodeproj/xcuserdata/01-003.xcuserdatad/xcschemes/xcschememanagement.plist
Complete!
```

### select [chap-number]-[topic_number]

For example, [07. MapKit 002 地図の縮尺の変更](https://sites.google.com/a/gclue.jp/swift-docs/ni-yinki100-ios/7-mapkit) is 07-002.

```
$ hiyoko generate --target="07-002"
create 07-002 directory
create 07-002.xcodeproj directory
  generate 07-002/07-002/AppDelegate.swift
  generate 07-002/07-002/ViewController.swift
  generate 07-002/07-002/Info.plist
  generate 07-002/07-002/Base.lproj/LaunchScreen.storyboard
  generate 07-002/07-002/Base.lproj/Main.storyboard
  generate 07-002/07-002/Assets.xcassets/AppIcon.appiconset/Contents.json
  generate 07-002/07-002.xcodeproj/project.pbxproj
  generate 07-002/07-002.xcodeproj/project.xcworkspace/contents.xcworkspacedata
  generate 07-002/07-002.xcodeproj/xcuserdata/07-002.xcuserdatad/xcschemes/07-002.xcscheme
  generate 07-002/07-002.xcodeproj/xcuserdata/07-002.xcuserdatad/xcschemes/xcschememanagement.plist
Complete!
```

### replace println with print

option `--swift2` add generate command

```
$hiyoko generate --target="21-097" --swift2
```

## show progress

show your progress

```
$ hiyoko progress
[x] | 01. UIKit | 001. UILabelで文字を表示 |
[ ] | 01. UIKit | 002. UIButtonでボタンを表示 |
[x] | 01. UIKit | 003. UIButtonでいろいろなボタンを表示 |
[ ] | 01. UIKit | 004. UITextFieldで文字を入力 |
...
```

show your progress selected chapter

```
$ hiyoko progress --chap="AVFoundation"
[x] | 03. AVFoundation | 001. 音源の再生 |
[x] | 03. AVFoundation | 002. カメラの起動と画像の保存 |
[x] | 03. AVFoundation | 003. 動画の撮影 |
[ ] | 03. AVFoundation | 004. 撮影した動画を保存する |
[ ] | 03. AVFoundation | 005. 動画から静止画を取り出す |
[ ] | 03. AVFoundation | 006. 動画の再生 |
[ ] | 03. AVFoundation | 007. MediaPlayerを使った動画の再生 |
[ ] | 03. AVFoundation | 008. QRCodeリーダー |
```

### progress percentage

show your progress as percentage

```
$ hiyoko progress --shincyoku
your progress: 1.0 %
```

# Author

[akimacho](https://github.com/akimacho)


