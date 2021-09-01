# FireworkVideo

## 概要

FireworkVideoは、短編ビデオプラットフォームであるFireworkからのビデオフィードをiOSアプリに統合するためのライブラリです。

## セットアップの前提条件

FireworkVideoをアプリケーションに統合するには、Fireworkプラットフォームにアプリケーションを登録し、固有のFireworkVideoアプリIDを取得する必要があります。アプリIDを取得するには

- アプリケーションのバンドル識別子またはパッケージ名を、連携しているビジネスチーム/エンジニアリングチームに提供します。
- アプリID広告がメールで送られてきますので、以下の「Firework ID」の設定手順に従って、アプリに両方を含めてください。

アプリIDは、アプリケーションをサーバーで認証するために使用されます。誤ったアプリIDを使用すると認証に失敗します。

## 要求事項

FireworkVideoは以下に対応しています。

- iOS 11以上。
- Xcode 12.4以上
- Swift 5.3以上

## XcodeプロジェクトにFireworkVideoを追加するには？

FireworkVideoは、Swift Package Managerを使ってSwiftバイナリパッケージとして追加することも、フレームワークとして手動でインポートすることもできます。両方のインストール方法の説明は以下の通りです。

### Swiftパッケージマネージャを使ったインポート

Xcodeプロジェクトで、File > Swift Packages > Add Package Dependencyを選択し、次のURLを入力します： `https://www.github.com/loopsocial/firework_ios_sdk/`

> XcodeのSwift Pacakage Managerの統合に慣れていない場合は、Appleのドキュメント「Adding a Package Dependency to Your App」を参照してください。

Version > Up to Next Major > 0.5.0を選択します。

### Cocoapodsを使ったインポート

PodfileにFireworkVideo: `pod FireworkVideo`を追加して、`pod install`を実行します。

### FireworkVideo Frameworkを手動でインポートする

- `https://www.github.com/loopsocial/firework_ios_sdk/` にあるSDK repoをクローンします。

- [SDKのバイナリ](https://www.github.com/loopsocial/firework_ios_sdk/releases/download/v0.5.0/FireworkVideo-v0.5.0.xcframework.zip)をダウンロードし、必要に応じて解凍します。

- 解凍した`FireworkVideo.xcframework`をXcodeのプロジェクトナビゲータにドラッグし、プロジェクトのルートにドロップします。確認ダイアログで`Copy items if needed`チェックボックスが選択されていることを確認します。プロジェクトディレクトリに `FireworkVideo.xcframework` があり、Xcode のプロジェクトナビゲータに表示され、リンクされていることを確認します。

- アプリの「プロジェクト」ペインで、アプリの「ターゲット」＞「ビルドフェーズ」を選択し、「＋」ボタンをクリックして、「ファイルのコピー」ステップを追加します。コピー先として`Frameworks`を選択し、「Copy Files」ステップ内の「＋」ボタンをクリックして、「FireworkVideo.xcframework」を選択します。ファイルのコピー」ステップは以下のようになります。

![Copy Files Step](https://github.com/loopsocial/firework_ios_sdk/blob/main/Resources/manual_installation_copy_files_step.png?raw=true)

### Firework IDs

アプリの`Info.plist`ファイルに、`FireworkVideoAppID`というキーを使ってアプリIDを含めます（下図参照）。アプリIDが含まれていなかったり、異なるスペルのキーで含まれていたりすると、SDKはエラーを返します。詳細は、「トラブルシューティング」を参照してください。

![App Setup Info Plist](https://github.com/loopsocial/firework_ios_sdk/blob/main/Resources/app_setup_info_plist.png?raw=true)

### FireworkVideoを使用する

#### サンプルコード

`FireworkVideoSample`には、Swift Package Manager (SPM)を使ってFireworkVideoフレームワークをセットアップするサンプルプロジェクトがあります。セットアップのヒントは、`FireworkVideoSample/README.md`にあるサンプルコードのドキュメントをお読みください。

初期化
ビデオコンポーネントを使用する前に、`FireworkVideo`を初期化する必要があります。

まず、SDKをApp Delegateにインポートします。次に、App Delegateのメソッド`application(:, didFinishLaunchingWithOptions:) -> Bool`で、Firework Video SDKを初期化します。

```
import UIKit

// Add the dependency SDK
import FireworkVideo

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
        // Initialize the SDK to start using
        FireworkVideoSDK.initializeSDK()
        
        return true
    }
    
    // ... // 
}
```
#### ビデオフィードの表示

ビデオフィードを表示するには、`VideoFeedViewController`を使って、プログラムまたはストーリーボードで行います。

##### Programmatic

 1. FireworkVideoのインポート
 2. 新しい`VideoFeedViewController`の作成
 3. インスタンス化された`VideoFeedViewController`の提示、表示、埋め込み
  
```
import FireworkVideo

class ViewController: UIViewController {

    func addFeedToTabBarController() {
        let feedVC = VideoFeedViewController()
        feedVC.tabBarItem = UITabBarItem(title: "Videos", image: nil, selectedImage: nil)
        self.tabBarController?.viewControllers?.append(feedVC)
    }

    func pushFeedOnNavigationController() {
        let feedVC = VideoFeedViewController()
        self.navigationController?.pushViewController(feedVC, animated: true)
    }

    func embedFeedInViewController() {
        let feedVC = VideoFeedViewController()
        self.addChild(feedVC)
        self.view.addSubview(feedVC.view)
        feedVC.view.frame = self.view.bounds
        feedVC.willMove(toParent: self)
    }
    
}
```

##### ストーリーボード

`VideoFeedViewController`をストーリーボードに追加するのは簡単ですが、サポートが限られています。そのため、レイアウトやカスタマイズはプログラミングでしかできません。レイアウトやカスタマイズの変更はいつでも可能です。これにより、ストーリーボード経由で`VideoFeedViewController`を追加した後、プログラムで調整することができます。

 1. ストーリーボードを開く
 2. `UIViewController`を追加、選択します。
 3. インスペクタペインで、Identityインスペクタを選択します。
 4. Custom Classとして`VideoFeedViewController`を追加します。
 5. モジュール」が`FireworkVideo`に設定されていることを確認します。

![Storyboard Setup](https://github.com/loopsocial/firework_ios_sdk/blob/main/Resources/storyboard_setup.png?raw=true)

#### レイアウト

具象レイアウトとして、`VideoFeedHorizontalLayout` と `VideoFeedGridLayout` の 2 種類があります。レイアウトはインスタンス化する際に指定できます `let feedVC = VideoFeedViewController(layout: VideoFeedGridLayout())`とします。`feedVC.layout = VideoFeedHorizontalLayout()` のように、ビデオフィードビューコントローラの layout プロパティを設定して、レイアウトを後から設定することもできます。

##### 水平レイアウト

`VideoFeedHorizontalLayout` は、1 つの行を持ち、水平方向にスクロールするレイアウトです。行は、利用可能な高さいっぱいに表示されます。

> `VideoFeedHorizontalLayout` は、別のビューコントローラーに埋め込むことで使用できます。

##### グリッドレイアウト

`VideoFeedGridLayout` は、列と行の両方を持つ垂直スクロールのフィードを提供するレイアウトです。グリッド内のアイテムの幅は、`VideoFeedGridLayout` の `numberOfColumns` プロパティに基づいて計算されます。

> 注意：レイアウトプロパティを変更するだけでは、`VideoFeedViewController` のレイアウトは変更されません。`VideoFeedViewController` のレイアウトを更新するには、レイアウトを変更した後に `layout` プロパティを設定する必要があります。

#### フィードのカスタマイズ

`VideoFeedViewController` の `viewConfiguration` によって公開され、アクセスできるビューカスタマイズは多数あります。すべてのビュー設定は値型であり、プロパティを変更してもビューの状態は更新されません。ビューの状態を更新するには、更新されたビュー構成を `viewConfiguration` に設定するだけです。

```
let feedVC = VideoFeedViewController()

// Gets the default configuration
var config = feedVC.viewConfiguration

// Sets the feed  background to white
config.backgroundColor = .white

// Gets the feed item view configuration. This applies to all items in the feed.
var itemConfig = config.itemView

// Sets the corner radius to 4
itemConfig.cornerRadius = 4
// Sets the title layout insets to 0
itemConfig.titleLayoutConfiguration.insets = .zero
// Sets the title position to stacked
itemConfig.titleLayoutConfiguration.titlePosition = .stacked
// Sets the title to System 18
itemConfig.title.font = .systemFont(ofSize: 18)
// Sets the title number of lines to 1
itemConfig.title.numberOfLines = 1
// Sets the title color to black
itemConfig.title.textColor = .black
// Sets the title is hidden to false
itemConfig.title.isHidden = false

// Updates the title configuration
config.itemView = itemConfig

// Must set the viewConfiguration property to apply the changes
feedVC.viewConfiguration = config
```

#### ビデオプレーヤーのカスタマイズ

`VideoPlayerContentConfiguration`を使用して、共有機能などのビデオプレーヤーの動作をカスタマイズすることもできます。

```
let feedVC = VideoFeedViewController()

// Gets the default configuration
var config = feedVC.viewConfiguration

// Gets the player content configuration
var playerConfig = config.playerView

// Show or hide the sharing button
playerConfig.shareButton.isHidden = true

// Add UIActivity instances specific to your app
playerConfig.shareButton.behavior.applicationActivities = customApplicationActivities()

// Exclude certain UIActivity Types
playerConfig.shareButton.behavior.excludedActivityTypes = [UIActivity.ActivityType.markupAsPDF]

// Updates the title configuration
config.playerView = playerConfig

// Must set the viewConfiguration property to apply the changes
feedVC.viewConfiguration = config
```

### コンテンツソース

enum VideoFeedContentSource は、ビデオフィードの入力に使用できるさまざまなソースを定義します。コンテンツソースは、`VideoFeedViewController` のインスタンス作成時に指定する必要があります。`VideoFeedViewController(source: .discover)`. デフォルトでは、フィードは .discover コンテンツソースを使用します。

また、`VideoFeedViewController(source: .channel(channelID: "<チャンネルID>"))`のように、.channelを使用して有効なチャンネルIDを渡すことで、チャンネルフィードをソースとして使用することもできます。ソースには、特定のチャンネルにリンクしたプレイリストIDを指定することもできます。

```
let feedVC = VideoFeedViewController(source: .channelPlaylist(channelID: "", playlistID: ""))
```

### 強制リフレッシュ

`VideoFeedViewController`は、リフレッシュしたいインスタンスに対して`refresh()`メソッドを呼び出すことで、強制的にリフレッシュすることができます。この機能は、フィードが他のコンポーネントと一緒に組み込まれていて、他のコンポーネントも更新される場合や、pull to refresh などの機能をサポートしている場合に便利です。

### リンクの共有

共有URLのカスタマイズが可能です。この機能は、共有URLをユニバーサルリンクやディープリンクにして、ユーザーがそれをクリックしたときに、アプリケーションで開くことができるようにしたい場合に使用できます。

共有URLをカスタマイズするには、ベースとなるURLを指定するだけです。
```swift
config.playerView.shareButton.behavior.baseURL = URL(string: "<Base URL for your Universal Link or Deeplink>")
```

#### 共有リンクの処理

アプリがユニバーサルリンクやディープリンクを受け取った後、ビデオプレーヤーを表示する準備ができたら、次の2つの方法のいずれかを使用してプレーヤーを表示できます。

```swift
let viewController = // The view controller that should present the video player
let url = // The received url that contains the `fwplayer` query parameter
// Optionally a custom player config can be applied to the presented video player
let playerConfig: VideoPlayerContentConfiguration = // Custom video player configuration
VideoFeedViewController.openVideoPlayer(with: url, playerConfig, viewController) { result in /* Called after successfully presenting the video player */ }

// Or you can pass the value of the `fwplayer` query parameter directly into method

let paramValue = // The value of the `fwplayer` query parameter
VideoFeedViewController.openVideoPlayer(with: paramValue, viewController) { result in /* Called after successfully presenting the video player */ }

```

> **注意** カスタムの `VideoPlayerContentConfiguration` が `openVideoPlayer` メソッドに渡されない場合、デフォルトの設定が使用されます。

### 広告サポート

人気のあるサードパーティの広告SDKは、FireworkVideoSDKと一緒に使用して、Firework Video Player内でクライアントサイドの広告挿入を行うことができます。これらのサードパーティ製SDKを使用するには、サポートするライブラリが必要です。以下のリストを確認し、より詳細な手順についてはレポをチェックアウトしてください。

  - Google Ad Mob SDK - [FireworkVideo GAM Supporting Library](https://github.com/loopsocial/firework_ios_sdk_gam_support) が必要です。
  - Google IMA SDK - [FireworkVideo Google IMA](https://github.com/loopsocial/firework_ios_sdk_google_ima_support) サポート ライブラリが必要です。

### トラブルシュート

#### SDK Intialization

`FireworkVideoSDK.initializeSDK`は、SDKがセットアップ中に出力するエラーを受け取ることができるオプションのデリゲート パラメータを受け入れます。このデリゲートには、`FireworkVideoSDKDelegate`プロトコルに準拠した任意のクラスを指定できます。以下のサンプルコードでは、`AppDelegate`を使用してエラーをコンソールに表示しています。

```
import UIKit

/// Add the dependency SDK
import FireworkVideo

@main
class AppDelegate: UIResponder, UIApplicationDelegate, FireworkVideoSDKDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FireworkVideoSDK.initializeSDK(delegate: self)
        return true
    }
    
    func fireworkVideoDidLoadSuccessfully() {
        print("FireworkVideo loaded successfully.")
    }
    
    func fireworkVideoDidLoadWith(error: FireworkVideoSDKError) {
        switch error {
        case .missingAppID:
            print("FireworkVideo loaded with error due to missing FireworkVideo app ID.")
        case .authenticationFailure:
            print("FireworkVideo loaded with error due to authentication failure.")
        @unknown default:
            break
        }
    }
```

#### ビデオフィード

`VideoFeedViewController`は、オプションのデリゲートプロパティを公開しています。デリゲートプロパティは、ビデオフィードの読み込み時にSDKが出力するエラーや、ビデオフィードの読み込みに成功した場合の成功を受け取ることができます。

```
/// Add the dependency SDK
import FireworkVideo

class VideoFeedService: VideoFeedViewControllerDelegate {

    func videoFeedDidLoadFeed(_ viewController: FireworkVideo.VideoFeedViewController) {
        print("Video feed on view controller \(viewController) loaded.")
    }

    func videoFeed(_ viewController: FireworkVideo.VideoFeedViewController, didFailToLoadFeed error: FireworkVideo.VideoFeedError) {
        if case let FireworkVideo.VideoFeedError.contentSourceError(contentSourceError) =  error {
            print("Video feed on view controller \(viewController) loaded with error \(contentSourceError.errorDescription).")
        } else if case let FireworkVideo.VideoFeedError.unknownError(underlyingError) = error {
            print("Video feed on view controller \(viewController) loaded with error \(underlyingError.localizedDescription).")
        }        
    }
}
```

#### 動画フィードの欠落または空の場合

フィードが空だったり、SDK が動画のダウンロード時にエラーを発生させた場合は、新しいインスタンスを作成して、ビュー階層内の既存のインスタンスを置き換えます。ビューコントローラに設定されているビデオフィードソースにビデオがない場合は、新しいインスタンスを作成する際に別のソースを指定する必要があります。

`VideoFeedViewController` が子ビューコントローラの場合、アプリのビュー階層から削除する際には、ビューコントローラのコンテインメント ライフサイクル メソッドを呼び出して、適切なクリーンアップを行ってください。

```
/// Removing videoFeedViewController from it's parent view controller

videoFeedViewController.willMove(toParent: nil)
videoFeedViewController.view.removeFromSuperview()
videoFeedViewController.removeFromParent()
```


## データレポーティング

ビデオ再生イベントを受信するには、プロトコル`FireworkVideoPlaybackDelegate`に準拠します（ファイルFireworkVideoPlaybackDelegate.swiftを参照）。

ビデオ再生イベントの一覧です。

```
    /// Called when a video appears on the screen but the video playback has not started
    /// - Parameter videoPlayback: The details of the video playback
    func fireworkVideoDidRecordImpression(_ videoPlayback: VideoPlaybackDetails)

    /// Called when a video has paused playback
    /// - Parameter videoPlayback: The details of the video playback
    func fireworkVideoDidPause(_ videoPlayback: VideoPlaybackDetails)

    /// Called when a video has resumed playback
    /// - Parameter videoPlayback: The details of the video playback
    func fireworkVideoDidResume(_ videoPlayback: VideoPlaybackDetails)

    /// Called when a video has started playing
    /// - Parameter videoPlayback: The details of the video playback
    func fireworkVideoDidStartPlaying(_ videoPlayback: VideoPlaybackDetails)

    /// Called when the first quarter of the video has been played
    /// - Parameter videoPlayback: The details of the video playback
    func fireworkVideoReachedFirstQuartile(_ videoPlayback: VideoPlaybackDetails)

    /// Called when the first half of the video has been played
    /// - Parameter videoPlayback: The details of the video playback
    func fireworkVideoReachedMidPoint(_ videoPlayback: VideoPlaybackDetails)

    /// Called when the third quarter of the video has been played
    /// - Parameter videoPlayback: The details of the video playback
    func fireworkVideoReachedThirdQuartile(_ videoPlayback: VideoPlaybackDetails)

    /**
     Called when the video playback has completed.
    
     There are many actions that can cause a video to finish playback including:
       - User swiping to the next or previous video
       - User dismissing the current video
       - Video reaches end of playback and either advances to the next video or loops the beginning of the current video
     
     - Parameter videoPlayback: The details of the video playback
    */
    func fireworkVideoDidFinishPlaying(_ videoPlayback: VideoPlaybackDetails)

    /// Called when the user has tapped on the CTA button that appeared during the video playback
    func fireworkVideoDidTapCTAButton(_ videoPlayback: VideoPlaybackDetails)

    /// Called when the user has tapped on the share button that appeared during the video playback
    func fireworkVideoDidTapShareButton(_ videoPlayback: VideoPlaybackDetails)

    /// Called when an ad video has started playing
    /// - Parameter videoPlayback: The details of the video playback
    func fireworkVideoDidStartPlayingAd(_ videoPlayback: VideoPlaybackDetails)

    /// Called when the ad video playback has completed.
    /// - Parameter videoPlayback: The details of the video playback
    func fireworkVideoDidFinishPlayingAd(_ videoPlayback: VideoPlaybackDetails)
```
    
ビデオ再生イベントを受信するには、プロトコル`FireworkVideoPlaybackDelegate`に準拠します（ファイルFireworkVideoPlaybackDelegate.swiftを参照）。

ビデオ再生イベントの一覧です。

```
    /// Called when the a video thumbnail is tapped by the user
    /// - Parameter eventDetails: The details of the feed event
    func fireworkVideoDidTapVideoThumbnail(_ eventDetails: FeedEventDetails)
```
