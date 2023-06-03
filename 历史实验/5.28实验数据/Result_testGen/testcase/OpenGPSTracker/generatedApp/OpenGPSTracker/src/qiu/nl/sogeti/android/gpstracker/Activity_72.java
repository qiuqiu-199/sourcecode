package qiu.nl.sogeti.android.gpstracker;

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

public class Activity_72 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("nl.sogeti.android.gpstracker","nl.sogeti.android.gpstracker.actions.ShareTrack");
		intent.setComponent(cn);
		intent.setAction("android.intent.action.RUN");
		intent.setData(Uri.parse("new android.net.Uri"));
		intent.setType("vnd.android.cursor.item/vnd.nl.sogeti.android.track");
		Parcelable android_dot_intent_dot_extra_dot_STREAM = new MyParcelable();
		intent.putExtra("android.intent.extra.STREAM", android_dot_intent_dot_extra_dot_STREAM);
		startActivity(intent);
		//android.intent.action.RUN;;null;;new android.net.Uri;;vnd.android.cursor.item/vnd.nl.sogeti.android.track;;Parcelable->android.intent.extra.STREAM->ParcelableObj,
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
