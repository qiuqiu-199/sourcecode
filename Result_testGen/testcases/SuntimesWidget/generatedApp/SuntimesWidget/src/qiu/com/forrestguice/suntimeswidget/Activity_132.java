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

public class Activity_132 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.forrestguice.suntimeswidget","com.forrestguice.suntimeswidget.alarmclock.ui.AlarmClockActivity");
		intent.setComponent(cn);
		intent.setAction("suntimeswidget.alarm.delete");
		intent.setData(Uri.parse("notEmpty"));
		intent.putExtra("android.intent.extra.alarm.VIBRATE", false);
		Parcelable android_dot_intent_dot_extra_dot_ringtone_dot_PICKED_URI = new MyParcelable();
		intent.putExtra("android.intent.extra.ringtone.PICKED_URI", android_dot_intent_dot_extra_dot_ringtone_dot_PICKED_URI);
		intent.putExtra("selectedAlarm", Long.MAX_VALUE);
		intent.putExtra("android.intent.extra.alarm.MESSAGE", "!@#$%^ds:+_");
		intent.putExtra("showBack", false);
		intent.putExtra("android.intent.extra.alarm.MINUTES", 0);
		intent.putExtra("android.intent.extra.alarm.RINGTONE", "!@#$%^ds:+_");
		intent.putExtra("android.intent.extra.alarm.HOUR", Integer.MAX_VALUE);
		intent.putExtra("solarevent", "abcde");
		ArrayList<Integer> android_dot_intent_dot_extra_dot_alarm_dot_DAYS = new ArrayList<Integer>();
		intent.putIntegerArrayListExtra("android.intent.extra.alarm.DAYS", android_dot_intent_dot_extra_dot_alarm_dot_DAYS);
		startActivity(intent);
		//suntimeswidget.alarm.delete;;null;;notEmpty;;null;;IntegerArrayList->android.intent.extra.alarm.DAYS->0,String->solarevent->abcde,int->android.intent.extra.alarm.HOUR->Integer.MAX_VALUE,String->android.intent.extra.alarm.RINGTONE->!@#$%^ds:+_,int->android.intent.extra.alarm.MINUTES->0,boolean->showBack->false,String->android.intent.extra.alarm.MESSAGE->!@#$%^ds:+_,long->selectedAlarm->Long.MAX_VALUE,Parcelable->android.intent.extra.ringtone.PICKED_URI->ParcelableObj,boolean->android.intent.extra.alarm.VIBRATE->false,
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
