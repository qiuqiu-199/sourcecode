package qiu.es.usc.citius.servando.calendula;

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

public class Activity_201 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("es.usc.citius.servando.calendula","es.usc.citius.servando.calendula.notifications.LockScreenAlarmActivity");
		intent.setComponent(cn);
		MySerializable schedule_id = new MySerializable();
		intent.putExtra("schedule_id", schedule_id);
		intent.putExtra("schedule_time", "abcde");
		intent.putExtra("action", 0);
		Parcelable target = new MyParcelable();
		intent.putExtra("target", target);
		intent.putExtra("date", "!@#$%^ds:+_");
		startActivity(intent);
		//null;;null;;null;;null;;String->date->!@#$%^ds:+_,Parcelable->target->ParcelableObj,int->action->0,String->schedule_time->abcde,Serializable->schedule_id->SerializableObj,
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
