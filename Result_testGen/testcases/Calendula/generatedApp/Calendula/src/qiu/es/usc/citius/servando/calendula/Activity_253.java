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

public class Activity_253 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("es.usc.citius.servando.calendula","es.usc.citius.servando.calendula.notifications.LockScreenAlarmActivity");
		intent.setComponent(cn);
		MySerializable schedule_id = new MySerializable();
		intent.putExtra("schedule_id", schedule_id);
		intent.putExtra("schedule_time", "abcde");
		intent.putExtra("action", Integer.MAX_VALUE);
		Parcelable target = new MyParcelable();
		intent.putExtra("target", target);
		intent.putExtra("date", "999999999999999999999999999999999999999999999999999");
		startActivity(intent);
		//null;;null;;null;;null;;String->date->999999999999999999999999999999999999999999999999999,Parcelable->target->ParcelableObj,int->action->Integer.MAX_VALUE,String->schedule_time->abcde,Serializable->schedule_id->SerializableObj,
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
