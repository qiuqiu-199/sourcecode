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

public class Activity_57 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("nl.sogeti.android.gpstracker","nl.sogeti.android.gpstracker.viewer.TrackList");
		intent.setComponent(cn);
		intent.setAction("nl.sogeti.android.gpstracker.intent.action.NOTIFY_DATA_SET_CHANGED");
		intent.setData(Uri.parse("file://mHost:mPort/mPath"));
		intent.putExtra("query", "abcde");
		startActivity(intent);
		//nl.sogeti.android.gpstracker.intent.action.NOTIFY_DATA_SET_CHANGED;;null;;file://mHost:mPort/mPath;;null;;String->query->abcde,
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
