# url_launcher_package_examples

A new Flutter application.

## Getting Started

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Do Some Configuration

- Add these lines to ```AndroidManifest.xml``` under ```manifest```.
```
<queries>
  <!-- If your app opens https URLs -->
  <intent>
    <action android:name="android.intent.action.VIEW" />
    <data android:scheme="https" />
  </intent>
  <!-- If your app makes calls -->
  <intent>
    <action android:name="android.intent.action.DIAL" />
    <data android:scheme="tel" />
  </intent>
  <!-- If your app emails -->
  <intent>
    <action android:name="android.intent.action.SEND" />
    <data android:mimeType="*/*" />
  </intent>
</queries>
```

- Add these lines to ```Info.plist``` under ```dict```.
```
<key>LSApplicationQueriesSchemes</key>
<array>
  <string>tel</string>
</array>
```

# Actions and Schemes

- **Open URL in the Default Browser:**
```http:<URL>``` , ```https:<URL>```, e.g. ```http://flutter.dev```

- **Create Email To:**
```mailto:<email address>?subject=<subject>&body=<body>```, e.g.
```mailto:smith@example.org?subject=News&body=New%20plugin```

- **Make a Phone Call To:**
```tel:<phone number>```, e.g. ```tel:+1 555 010 999```

- **Send an SMS Message To:**
```sms:<phone number>```, e.g. ```sms:5550101234```

# Working

- ## URL and SMS

<img src="https://user-images.githubusercontent.com/73339220/142748159-bb47dab1-32ca-46da-998b-cc738bec311a.gif" width=300 /> <img src="https://user-images.githubusercontent.com/73339220/142748182-9e8905db-fa7e-444c-b98c-a04fbf3cd82c.gif" width=300 />

- ## EMAIL and PHONE

<img src="https://user-images.githubusercontent.com/73339220/142748212-0d541170-5184-41ce-8b1c-2ef53d3c0a03.gif" width=300 /> <img src="https://user-images.githubusercontent.com/73339220/142748235-35b9d344-42d1-4a3f-813c-6a8cc942b30f.gif" width=300 />