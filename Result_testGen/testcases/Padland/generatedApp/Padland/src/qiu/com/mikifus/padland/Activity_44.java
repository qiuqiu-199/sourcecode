package qiu.com.mikifus.padland;

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

public class Activity_44 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.mikifus.padland","com.mikifus.padland.PadListActivity");
		intent.setComponent(cn);
		intent.putExtra("action", "!@#$%^ds:+_");
		intent.putExtra("android.intent.extra.TEXT", "999999999999999999999999999999999999999999999999999");
		ArrayList<String> pad_id = new ArrayList<String>();
		intent.putStringArrayListExtra("pad_id", pad_id);
		intent.putExtra("focus_pad", 0);
		startActivity(intent);
		//null;;null;;null;;null;;long->focus_pad->0,StringArrayList->pad_id->999999999999999999999999999999999999999999999999999,String->android.intent.extra.TEXT->999999999999999999999999999999999999999999999999999,String->action->!@#$%^ds:+_,
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