# CUELiveDemoSPM

Here are the instructions how to add CUELive SDK SPM-package to your project. Follow these steps one-by-one to make your own project similar to this demo-project.

## Add the CUELive SDK

Add the CUELive framework using the Package manager in Xcode. Use the URL: `https://github.com/CUEAudio/CUELive-SPM.git`

![](images/xcode-1.png)

Once the dialog for the package manager is opened, search for the CUELive SPM in the search field at the top right. Enter the following URL to help discover the package: `https://github.com/CUEAudio/CUELive-SPM.git`, select version **3.5.29** or higher.

![](images/xcode-2.png)

Once the package has been downloaded, press `Add Package` button.

![](images/xcode-3.png)

You will see the installed packages in Project Navigator in the _Package Dependencies_

![](images/xcode-4.png)


## Adding the required `.bundle`

Download the resource bundle (file with `.bundle` extension) [here](https://swift-package-manager.s3.amazonaws.com/bundles/with-lottie/CUELive.bundle.zip). Drag and drop the file into your project

![](images/xcode-6.png)

Make sure to select the `Copy items if needed` is selected. Click Finish.

![](images/xcode-7.png)

Verify that the bundle can now be seen in the Project Navigator

![](images/xcode-8.png)

## Modifying the Build Settings

Next add the `-all_load` linker flag to the build target. Look for "Other linker flags" in the Build Settings of the target, and add the `-all_load` flag

![](images/xcode-5.png)

## Set up description keys for Camera/Microphone/Photo library access

Please write description texts for the following Info.plist keys:

- NSCameraUsageDescription
- NSMicrophoneUsageDescription
- NSPhotoLibraryAddUsageDescription
- NSPhotoLibraryUsageDescription

Result should be looking like that:

![](images/xcode-perm1.png)

![](images/xcode-perm2.png)

## Optional explicit usage of Lottie library

In case your project needs to use Lottie library, you can explicitly add link to it to your project

![](images/xcode-lottie1.png) 

Please keep in mind:
1. Your app should use **exactly** `lottie-spm` package, **not other** source of Lottie (e.g. lottie-ios).
2. Version of Lottie should be 4.0.0 or higher.

Finally your dependencies section should look like this:
 
![](images/xcode-lottie2.png)

## Associated Domains

In your project settings, you should add two Associated Domains as shown here:

<img width="771" height="150" alt="Screenshot 2025-10-06 at 12 07 52 PM" src="https://github.com/user-attachments/assets/fcae6cf8-fcd2-4802-8fde-d8780d7cb984" />

## How to call CUELive library from your code

First add import-directive to your code file
```swift
import CUELive
```

Then add the UIButton object with the following tap handler to start the LightShow
```swift
@IBAction func LaunchLightshowButtonPressed(_ sender: Any) {
    let initialController = NavigationManager.initialController()
    initialController.modalPresentationStyle = .fullScreen
    present(initialController, animated: true)
}
```

## Using PRIVACY flag

You can pass optional PRIVACY flag to prevent collecting and sending to the server any user information. SDK initialization in this case looks like that:

```swift
@IBAction func launchLightShowGUI(_ sender: Any) {
    let params: NSDictionary = ["PRIVACY":true]
    let initialController = NavigationManager.initialController(extraData: params)
    initialController.modalPresentationStyle = .fullScreen
    present(initialController, animated: true)
}
```
