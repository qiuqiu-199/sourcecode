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

public class Activity_134 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("de.danoeh.antennapod","de.danoeh.antennapod.activity.OnlineFeedViewActivity");
		intent.setComponent(cn);
		intent.setAction("android.intent.action.VIEW");
		intent.setData(Uri.parse("?"));
		intent.putExtra("title", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("arg.feedurl", "abcde");
		intent.putExtra("android.intent.extra.TEXT", "abcde");
		startActivity(intent);
		//android.intent.action.VIEW;;null;;?;;null;;String->android.intent.extra.TEXT->abcde,String->arg.feedurl->abcde,String->title->999999999999999999999999999999999999999999999999999,
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