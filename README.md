# LidTap

**敲一下 MacBook 的屏幕边。** LidTap 把显示器边缘变成按键，不需要额外硬件。敲屏幕的一角，就能切换桌面、控制音乐，或在开会时把画面藏起来。

它听的是 MacBook 里的运动传感器。敲屏幕时，整台电脑会绕着转轴轻轻拧一下；传感器大约每秒采样 800 次，再用你自己的敲击训练出来的小模型，判断你敲的是哪一块区域。一切都在本机完成：没有账号，敲击和设置也不会离开这台 Mac。LidTap 唯一会联网的时候，是向 GitHub 询问有没有新版本（可以关掉）。

界面跟随 macOS 的语言：简体中文或英文。

作者：[Yemcube (@yem.cube)](https://www.instagram.com/yem.cube)。英文说明见 [README.en.md](README.en.md)。

- [一次敲击能做什么](#一次敲击能做什么)
- [配置：书桌、膝上、沙发](#配置书桌膝上沙发)
- [安装](#安装)
- [怎样敲才准](#怎样敲才准)
- [哪些 Mac 能用](#哪些-mac-能用)
- [许可](#许可)
- [给开发者](#给开发者)

## 一次敲击能做什么

LidTap 把屏幕分成若干区域：默认 2×2，也可以是 2×3 或 3×3。每个区域只做一件事，由你来选。

| 动作 | 效果 |
|---|---|
| **左移桌面 / 右移桌面** | 切到左侧或右侧桌面（Space） |
| **播放 / 暂停、下一首、上一首** | 控制正在播放的内容：音乐、Spotify、YouTube |
| **增大音量 / 减小音量、静音** | 音量走一档，或静音，和音量键一样 |
| **新建备忘录** | 在备忘录里打开一条新笔记 |
| **打开 App** | 启动一个 App；如果已经开着，就把它放到最前 |
| **运行快捷指令** | 运行你的任意快捷指令：打开专注模式、开始计时、发消息，快捷指令能做的都可以 |
| **隐私保护** | 开会时有人走过来？敲一下就会静音所有麦克风，关掉会议摄像头（Zoom、Teams、Webex、Google Meet），并遮住屏幕。再敲一次或点一下即可恢复，麦克风会回到原来的状态 |

默认的 2×2：左上 **左移桌面**，右上 **右移桌面**，左下 **播放 / 暂停**，右下 **隐私保护**。

打字、点击、滚动、移动指针、开合屏幕、敲桌子，这些不是敲击，LidTap 会忽略。

## 配置：书桌、膝上、沙发

同一下敲击，在书桌上、膝上和沙发上感觉不一样。配置让每个地方有自己的校准、区域动作和灵敏度：比如书桌用来切桌面，沙发用来播放和暂停音乐。

一开始没有配置。要添加时，打开设置 → 配置，点 **添加配置…**。起个名字，选一个图标，然后在新的表面上校准（建议这样做，大约两分钟），或者从当前校准复制一份再开始。之前设好的内容会保留为 **默认**，可以改名。

有两个或更多配置之后，可以在 LidTap 菜单顶部切换，也可以在菜单打开时按 ⌘1 到 ⌘9。隐私保护、反馈、声音和更新设置是所有配置共用的。

## 安装

1. 从[最新发行版](https://github.com/harsha20599/lidtap/releases/latest)下载 **LidTap-macOS.zip**。
2. 解压，把 **LidTap.app** 拖进应用程序并打开。它已由 Apple 签名并公证，和普通 App 一样打开。
3. 菜单栏会出现一个手的图标，同时打开设置。
4. 按提示允许 **辅助功能**（系统设置 → 隐私与安全性 → 辅助功能）。切换桌面和媒体键需要它。**输入监听**是可选的：有了它，LidTap 能更准确地区分打字和敲击。
5. 点 **校准**。在每个高亮区域的圆点上敲几下（大约两分钟），再让它录 20 秒日常的磕碰：打字、点击、碰一下电脑。这样就好了。

**更新：** 从 1.0.2 起，LidTap 可以自己更新。大约每天一次，它会向 GitHub 查有没有新版本，安装前会先问你；也可以在设置 → 通用里点 **立即检查**。只有由 LidTap 开发者签名的更新才会安装，校准和设置会保留。每天检查可以在设置 → 通用里关掉。1.0.1 及更早的版本，需要下载新版本，替换应用程序里的 App。从 1.0 或未签名的构建过来？在辅助功能列表里把 LidTap 关掉再打开一次即可。

本仓库的源码带简体中文界面。已发布的安装包若还是英文，可以用下面的脚本自己编译安装。

## 怎样敲才准

- **用指尖在每个区域角落的圆点上轻快地弹一下。** 不要用力按：不需要那么大的力，按屏幕也可能留下印子。
- **等屏幕稳下来再敲下一次**（大约半秒）。
- 校准时，指示会说 **力度正好**、**再干脆一点** 或 **再轻一点也行**。尽量敲到绿色。
- 经常认错？设置 → 训练会显示每个区域有多可靠；**重新校准…** 会在需要的地方补敲几下。
- **被当成「太轻」拒掉了？** 屏幕更大、更重的 MacBook，敲一下动得更少（16 英寸 MacBook Pro 的扭转大约只有 13 英寸 MacBook Air 的一半到三分之一）。LidTap 会根据你的校准敲击，学习这台 Mac 上敲击有多强。想自己设下限，就在设置 → 检测里关掉 **根据我的敲击学习力度**。

在我们的测试里，2×2 网格上敲得干脆时，大约 95% 的敲击能认对。拿不准的敲击会被忽略，而不是猜一个。

## 哪些 Mac 能用

- 带运动传感器的 Apple 芯片 MacBook：**M2 或更新的** MacBook Air / Pro，或带 **M1 Pro / M1 Max** 的 14 英寸 / 16 英寸 MacBook Pro。
- **不能用：** M1 MacBook Air、13 英寸 M1 MacBook Pro、台式机 Mac、Intel Mac。它们没有这块运动传感器。
- macOS 14 Sonoma 或更新的系统。

LidTap 读的是 Apple 没有公开文档的传感器，以后的 macOS 更新可能改变或破坏它。

## 许可

可以按 [LidTap 许可](LICENSE) 免费使用、修改、折腾和分享。它是 MIT，再加上两条规则。

1. **公开分享任何基于 LidTap 的东西**（App、分支、展示你作品的视频或帖子）时，要注明 **「Based on LidTap by Yemcube」**，并链到 Instagram [@yem.cube](https://www.instagram.com/yem.cube)。自己私下用，不需要署名。
2. **商用要先得到同意。** 出售它、放进付费产品或服务、用在公司的产品或广告里：在 Instagram 上给 [@yem.cube](https://www.instagram.com/yem.cube) 发消息。

LidTap 与 Apple 没有关联，也未得到 Apple 的认可。

---

# 给开发者

| 目录 | 内容 |
|---|---|
| [`LidTapApp/`](LidTapApp) | macOS 菜单栏 App（Swift、SwiftUI）和测试。从它的 [README](LidTapApp/README.md) 看起 |
| [`lidtap/`](lidtap)、[`PROTOTYPE.md`](PROTOTYPE.md) | 最初的 Python 原型：浏览器界面，带实时传感器曲线、校准和模型对比 |
| [`LidTap.md`](LidTap.md) | 检测和识别从头到尾是怎么工作的 |
| [`reports/`](reports)、[`research_notes/`](research_notes) | 方法背后的研究：传感器访问、已有工作、信号处理和机器学习 |
| [`tools/imu_probe.py`](tools/imu_probe.py) | 读取运动传感器和开合角度的最小探针 |

**编译 App**（需要 Xcode 命令行工具）：

```bash
LidTapApp/scripts/build.sh
```

脚本用 `swiftc` 编译，组装出 `LidTapApp/build/LidTap.app`，以强化运行时做临时签名，并安装到 `~/Applications`。`--no-install` 会跳过安装。

**做一份用 Developer ID 签名、并由 Apple 公证的发行版**（准备步骤写在脚本开头）：

```bash
LidTapApp/scripts/release.sh
```

先把 `LidTapApp/Resources/Info.plist` 里的 `CFBundleShortVersionString` 加上去，再发布一个标签为 `v<版本号>` 的 GitHub Release，并附上 `LidTap-macOS.zip`。已安装的副本通过 GitHub 的最新发行版 API 找到它（草稿和预发布会被忽略），显示更新说明，并且只在版本更新、且由同一个 Developer ID（Team `23R7L2SQ34`）签名时才安装。

**跑测试：**

```bash
LidTapApp/scripts/test.sh
```

这会跑机器学习、检测器、App 逻辑和界面这几组测试，没有副作用。Python 原型有自己的、不碰硬件的测试：在仓库根目录运行 `python -m unittest tests.test_prototype`。`hardware`、`actions`、`guard` 和 `e2e` 会驱动真实系统（切换 Space、静音麦克风、打开 App），所以只在你不用这台 Mac 的时候跑。

**原理，简要说：** App 通过 IOKit HID（`AppleSPUHIDDevice`，约 800 Hz）读取加速度计和陀螺仪，对陀螺仪做高通滤波，再用自适应阈值触发。每次敲击变成 200 毫秒的窗口和 70 个特征（形状、时间、轴向比例和重采样模板），由 k 近邻、逻辑回归或最近质心模型分类，三者里谁在你自己的数据上交叉验证最好就用谁。离学过的样本太远、或置信度低于下限的敲击会被拒绝。传感器方面的工作要感谢 [yamete](https://github.com/chipcolate/yamete)、[apple-silicon-accelerometer](https://github.com/olvvier/apple-silicon-accelerometer) 和 [LidAngleSensor](https://github.com/samhenrigold/LidAngleSensor)；完整列表见 `reports/`。
