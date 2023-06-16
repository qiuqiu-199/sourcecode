package qiu.com.forrestguice.suntimeswidget;

import android.app.Activity;
import android.os.Bundle;
import android.content.Intent;
import java.util.List;
import android.content.ComponentName;
import android.os.Parcelable;
import java.util.ArrayList;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class Activity_107 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.forrestguice.suntimeswidget","com.forrestguice.suntimeswidget.alarmclock.ui.AlarmClockActivity");
		intent.setComponent(cn);
		intent.setAction("com.forrestguice.suntimeswidget.alarmclock.ADD_NOTIFICATION");
		intent.setData(Uri.parse("?"));
		intent.putExtra("android.intent.extra.alarm.VIBRATE", true);
		Parcelable android_dot_intent_dot_extra_dot_ringtone_dot_PICKED_URI = new MyParcelable();
		intent.putExtra("android.intent.extra.ringtone.PICKED_URI", android_dot_intent_dot_extra_dot_ringtone_dot_PICKED_URI);
		intent.putExtra("selectedAlarm", 0);
		intent.putExtra("android.intent.extra.alarm.MESSAGE", "abcde");
		intent.putExtra("showBack", true);
		intent.putExtra("android.intent.extra.alarm.MINUTES", 0);
		intent.putExtra("android.intent.extra.alarm.RINGTONE", "abcde");
		intent.putExtra("android.intent.extra.alarm.HOUR", 0);
		intent.putExtra("solarevent", "abcde");
		ArrayList<Integer> android_dot_intent_dot_extra_dot_alarm_dot_DAYS = new ArrayList<Integer>();
		intent.putIntegerArrayListExtra("android.intent.extra.alarm.DAYS", android_dot_intent_dot_extra_dot_alarm_dot_DAYS);
		startActivity(intent);
		//com.forrestguice.suntimeswidget.alarmclock.ADD_NOTIFICATION;;null;;?;;null;;IntegerArrayList->android.intent.extra.alarm.DAYS->0,String->solarevent->abcde,int->android.intent.extra.alarm.HOUR->0,String->android.intent.extra.alarm.RINGTONE->abcde,int->android.intent.extra.alarm.MINUTES->0,boolean->showBack->true,String->android.intent.extra.alarm.MESSAGE->abcde,long->selectedAlarm->0,Parcelable->android.intent.extra.ringtone.PICKED_URI->ParcelableObj,boolean->android.intent.extra.alarm.VIBRATE->true,
	}
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
		launch();
		Button button1=(Button)findViewById(R.id.button1);
		button1.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				launch();
		}});
    }
}
