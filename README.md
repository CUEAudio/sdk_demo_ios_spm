# CUELiveDemoSPM

## Add the CUELive SDK

Add the CUELive framework using the Package manager in Xcode. Use the URL: `https://github.com/CUEAudio/CUELive-SPM.git`

![](images/xcode-1.png)

Once the dialog for the package manager is opened, search for the CUELive SPM in the search field at the top right. Enter the following URL to help discover the package: `https://github.com/CUEAudio/CUELive-SPM.git`.

![](images/xcode-2.png)

Once the package has been downloaded, specify the Target you wish to add the CUELive SDK to.

![](images/xcode-3.png)

You will see the like of installed packages in Project Navigator in the _Package Dependencies_

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

## Set up description keys for Camera/Microphone/Library access

Please write description texts for the following Info.plist keys:

- NSCameraUsageDescription
- NSMicrophoneUsageDescription
- NSPhotoLibraryAddUsageDescription
- NSPhotoLibraryUsageDescription

Result should be looking like that:

![](images/xcode-perm1)

![](images/xcode-perm2)

## Optional explicit usage of Lottie library

In case your project needs to use Lottie library, you can explicitly add link to it to your project

![](images/xcode-lottie1) 

Please keep in mind:
1. Your app should use exactly 'lottie-spm' package, not other source of Lottie (e.g. lottie-ios).
2. Version of Lottie should be 4.0.0 or higher.

Finally your dependencies section should look like this:
 
![](images/xcode-lottie2)
