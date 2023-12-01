adb shell logcat -b main -d | grep org.mozilla.firefox_beta/org.mozilla.gecko.BrowserApp | tee result/firefox.txt
adb shell logcat -b main -d | grep com.facebook.katana/com.facebook.account.login.activity.SimpleLoginActivity | tee result/facebook.txt
adb shell logcat -b main -d | grep com.android.chrome/org.chromium.chrome.browser.firstrun.FirstRunActivity | tee result/fb_message.txt 
adb shell logcat -b main -d | grep com.android.chrome/org.chromium.chrome.browser.firstrun.FirstRunActivity | tee result/chrome.txt 
adb shell logcat -b main -d | grep com.google.earth/com.google.android.apps.earth.flutter.EarthFlutterActivity | tee result/google_earth.txt 
adb shell logcat -b main -d | grep com.instagram.android/com.instagram.nux.activity.BloksSignedOutFragmentActivity | tee result/instagram.txt 
adb shell logcat -b main -d | grep com.google.android.youtube/com.google.android.apps.youtube.app.WatchWhileActivity | tee result/youtube.txt 