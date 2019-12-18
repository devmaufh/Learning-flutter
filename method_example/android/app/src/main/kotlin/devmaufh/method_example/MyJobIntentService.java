package devmaufh.method_example;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.JobIntentService;
import android.support.v4.app.NotificationCompat;
import android.widget.Toast;

public class MyJobIntentService extends JobIntentService {

    public static final String CHANNEL_ID = "com.devmaufh.methodChannel.notificationId";

    @Override
    public void onCreate() {
        super.onCreate();
        Toast.makeText(this, "On create service", Toast.LENGTH_SHORT).show();

    }


    private static final int JOB_ID = 999;
    public static void enqueueWork(Context context, Intent intent){
        enqueueWork(context,MyJobIntentService.class, JOB_ID, intent);

    }
    @Override
    protected void onHandleWork(@NonNull Intent intent) {
        int maxCount = 100;
        for (int i = 0; i<=maxCount; i++){
            try{
                Thread.sleep(1000);
            }catch (InterruptedException e){
                e.printStackTrace();
            }
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        Toast.makeText(this, "Terminando servicio", Toast.LENGTH_SHORT).show();
    }
}
