# PhoneGap-Plugin

Effective marketing automation is an essential part of successfully scaling and managing your business. HurreeSDK empowers you to build better customer relationships through a seamless, multi-channel approach that addresses all aspects of the user life cycle. HurreeSDK helps you engage your users on an ongoing basis.

Steps to follow to integrate HurreeSDK:

1. Add helper Classes (HurreeCordovaHelper.h and HurreeCordovaHelper.m) in the your project frameworks.
2. Add the hurrePlugin.js file in www folder.
3. Paste the script code to add the plugin in javascript:

   <script src="hurrePlugin.js"></script>

4. Add the below code in the config.xml

   <feature name="HurreeCordovaHelper">
   <param name="ios-package" value="HurreeCordovaHelper" />
   </feature>

Settings done in the Xcode:

1. Select the target of your project and move to the "Build Settings".

2. Add -ObjC in the "Other Linker Flags". You can locate it in Linking section.

Helper Functions:

Please refer to HurreeCordovaHelper.m for the detail of bridge functions parameters at mentoned indexes.


