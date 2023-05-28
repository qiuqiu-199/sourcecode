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

public class Activity_53 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("de.danoeh.antennapod","de.danoeh.antennapod.activity.MainActivity");
		intent.setComponent(cn);
		intent.putExtra("fragment_args", "fragment_args");
		intent.putExtra("nav_index", Integer.MIN_VALUE);
		intent.putExtra("fragment_tag", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("fragment_feed_id", Long.MAX_VALUE);
		startActivity(intent);
		//null;;null;;null;;null;;long->fragment_feed_id->Long.MAX_VALUE,String->fragment_tag->999999999999999999999999999999999999999999999999999,int->nav_index->Integer.MIN_VALUE,Bundle->fragment_args->BundleObj,
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
