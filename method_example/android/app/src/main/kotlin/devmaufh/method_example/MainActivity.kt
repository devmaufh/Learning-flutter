package devmaufh.method_example

import android.content.Intent
import android.os.Bundle
import android.widget.Toast

import io.flutter.app.FlutterActivity
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {


  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    GeneratedPluginRegistrant.registerWith(this)

    val methodChannel: MethodChannel = MethodChannel(flutterView, "com.devmaufh.methodChannel")

    methodChannel.setMethodCallHandler { call, result ->
      when (call.method) {
        "startNewActivity" -> {
          startActivity(Intent(this, NewActivity::class.java))
          result.success("SIU")
        }
        "serviceStart" -> {
          val intent: Intent = Intent(this, MyJobIntentService::class.java)
          MyJobIntentService.enqueueWork(this, intent)
        }
        else ->{
          Toast.makeText(applicationContext, "No existe ningun metodo", Toast.LENGTH_SHORT).show()
          result.notImplemented()
        }
      }
    }
  }
}
