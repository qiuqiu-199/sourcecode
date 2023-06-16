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

public class Activity_32 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("es.usc.citius.servando.calendula","es.usc.citius.servando.calendula.activities.ConfirmActivity");
		intent.setComponent(cn);
		intent.putExtra("action", "abcde");
		intent.putExtra("schedule_time", "abcde");
		intent.putExtra("routine_id", 0);
		intent.putExtra("schedule_id", 0);
		intent.putExtra("position", 0);
		intent.putExtra("date", "abcde");
		startActivity(intent);
		//null;;null;;null;;null;;String->date->abcde,int->position->0,long->schedule_id->0,long->routine_id->0,String->schedule_time->abcde,String->action->abcde,
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
