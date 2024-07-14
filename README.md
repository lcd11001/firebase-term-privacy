# firebase_hosting

How to deploy Flutter web into Firebase hosting.

## Getting Started

[Build and release a web app][2]

[Verify your website][3]

[Add a website property to Search Console][4]

[Google Search Console][5]

## How to deploy into Firebase Hosting
```
    npm install -g firebase-tools
    firebase login
    firebase init
    flutter build web --web-renderer html --release
    firebase deploy
```


[2]: https://docs.flutter.dev/deployment/web
[3]: https://support.google.com/googleplay/android-developer/answer/13205715
[4]: https://support.google.com/webmasters/answer/34592#zippy=%2Cgoogle-hosted-property-sites-blogger-workspace
[5]: https://search.google.com/search-console/welcome