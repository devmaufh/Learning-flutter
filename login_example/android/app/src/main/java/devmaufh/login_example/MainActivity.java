package devmaufh.login_example;

import android.app.Activity;
import android.os.Bundle;
import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;
import io.flutter.plugin.common.MethodCall;
import android.content.Context;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import android.telephony.TelephonyManager;
import android.os.Build.VERSION;
import android.os.Build.VERSION_CODES;

public class MainActivity extends FlutterActivity {
  private static final String CHANNEL="flutter.native/imei";

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);
     new MethodChannel(getFlutterView(), CHANNEL).setMethodCallHandler(
                new MethodCallHandler() {
                    @Override
                    public void onMethodCall(MethodCall call, Result result) {
                        if (call.method.equals("getImei")) {
                            String imei = getImei();
                            if (imei.length()>0) {
                                result.success(imei);
                            } else {
                                result.error("Error", "No es posible leer el imei jssjs", null);
                            }
                        } else {
                            result.notImplemented();
                        }
                    }
                });
  }
  private String getImei(){
    String imei="";
    TelephonyManager telephonyManager = (TelephonyManager)getSystemService(Context.TELEPHONY_SERVICE);
    if (VERSION.SDK_INT >= VERSION_CODES.O) {
        imei = telephonyManager.getImei();
    } else {
        imei = telephonyManager.getDeviceId();
    }
    return imei;
  }
}
