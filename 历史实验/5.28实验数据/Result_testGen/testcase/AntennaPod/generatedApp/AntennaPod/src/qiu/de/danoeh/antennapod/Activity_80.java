package qiu.de.danoeh.antennapod;

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

public class Activity_80 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("de.danoeh.antennapod","de.danoeh.antennapod.activity.OnlineFeedViewActivity");
		intent.setComponent(cn);
		intent.setAction("android.intent.action.SEND");
		intent.setType("text/plain");
		intent.putExtra("android.intent.extra.SUBJECT", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("android.intent.extra.TEXT", "!@#$%^ds:+_");
		Parcelable android_dot_intent_dot_extra_dot_STREAM = new MyParcelable();
		intent.putExtra("android.intent.extra.STREAM", android_dot_intent_dot_extra_dot_STREAM);
		intent.putExtra("android.intent.extra.EMAIL", "!@#$%^ds:+_");
		startActivity(intent);
		//android.intent.action.SEND;;null;;null;;text/plain;;String[]->android.intent.extra.EMAIL->!@#$%^ds:+_,Parcelable->android.intent.extra.STREAM->ParcelableObj,String->android.intent.extra.TEXT->!@#$%^ds:+_,String->android.intent.extra.SUBJECT->999999999999999999999999999999999999999999999999999,
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
