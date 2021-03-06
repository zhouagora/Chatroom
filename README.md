# 语音聊天室 / Chat Room

“语音聊天室”是一种纯音频的使用场景。用户作为主播或者听众加入房间进行语音聊天，也可以在房间内任意切换自己的主播/听众身份。

不同类型聊天室对音频设置有不同的需求，这个示例程序展示了四种类型：开黑聊天室、娱乐房间、K 歌房、FM 超高音质房间。

## 功能列表
这个示例程序演示了如何使用 声网 Agora 的音频SDK，实现不同类型语音聊天室的音频聊天功能。

- 加入房间：选择一个房间类型，使用主播或听众的身份加入房间，和房间内的其他用户进行语音交流；
- 主播/听众切换：在房间内可以随时使用“上麦”按钮来切换自己的主播/听众身份；
- 听筒/外放切换：可以使用“外放”按钮切换听筒或外放；
- 停止发送音频：主播可以使用“静音自己”按钮停止发送音频；
- 停止接收音频：可以使用“不收音频”按钮停止接收房间内其他人的音频；
- 音乐伴奏：主播可以使用“伴奏”按钮播放伴奏音乐并发送给房间内其他人；
- 变声效果：主播可以使用“变声”按钮选择自己的变声效果。

## 注意事项
1. 示例程序只演示了“语音聊天室”类场景中和语音聊天相关部分的逻辑，不是完整的产品。如要开发完整的产品，需要自行实现业务部分逻辑；
2. 需要使用 声网 Agora 提供的特殊优化版本SDK，官网版本尚无法支持。如有需要请联系声网售前获取。

## 运行示例程序
在 [Agora.io 用户注册页](https://dashboard.agora.io/cn/signup/) 注册账号，并创建自己的测试项目，获取到 AppID。

联系声网售前，获取特殊优化版本SDK。

#### iOS
1. 将有效的 AppID 填写进 KeyCenter.swift

	```
	static func appId() -> String {
	    return <#YOUR APPID#>
	}
	```

2. 解压 SDK 压缩包，将文件 **AgoraAudioKit.framework** 复制到本项目的 iOS/ChatRoom 文件夹下。
3. 使用 XCode 打开 iOS/ARD-Agora-Murder-Mystery-Game.xcodeproj，连接 iOS 测试设备，设置有效的开发者签名后即可运行。

		运行环境:
		* XCode 9.0 +
		* iOS 8.0 +

#### Android
1. 将有效的 AppID 填写进 "app/src/main/res/values/strings_config.xml"

	```
	<string name="private_app_id"><#YOUR APP ID#></string>
	```

2. 解压 SDK 压缩包，将其中的 **libs** 文件夹下的 ***.jar** 复制到本项目的 **app/libs** 下，其中的 **libs** 文件夹下的 **arm64-v8a**/**x86**/**armeabi-v7a** 复制到本项目的 **app/src/main/jniLibs** 下。
3. 使用 Android Studio 打开该项目，连接 Android 测试设备，编译并运行。

		运行环境:
		* Android Studio 2.0 +
		* minSdkVersion 16
		* 部分模拟器会存在功能缺失或者性能问题，所以推荐使用真机 Android 设备


## 联系我们

- 如果发现了示例程序的 bug，欢迎提交 [issue](https://github.com/AgoraIO-Usecase/ChatRoom/issues)
- 声网 SDK 完整 API 文档见 [文档中心](https://docs.agora.io/cn/)
- 如果在集成中遇到问题，你可以到 [开发者社区](https://dev.agora.io/cn/) 提问
- 如果有售前咨询问题，可以拨打 400 632 6626，或加入官方Q群 12742516 提问
- 如果需要售后技术支持，你可以在 [Agora Dashboard](https://dashboard.agora.io) 提交工单

## 代码许可

The MIT License (MIT).
