package qiu.eu.siacs.conversations;

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

public class Activity_504 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("eu.siacs.conversations","eu.siacs.conversations.ui.UriHandlerActivity");
		intent.setComponent(cn);
		intent.setAction("eu.siacs.conversations.location.show, android.intent.action.VIEW");
		intent.setData(Uri.parse("https://maps.google.com/maps?q=loc:,, geo:,?q=,()"));
		intent.putExtra("longitude", Double.MIN_VALUE);
		intent.putExtra("name", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("latitude", Double.MAX_VALUE);
		startActivity(intent);
		//eu.siacs.conversations.location.show, android.intent.action.VIEW;;null;;https://maps.google.com/maps?q=loc:,, geo:,?q=,();;null;;double->latitude->Double.MAX_VALUE,String->name->999999999999999999999999999999999999999999999999999,double->longitude->Double.MIN_VALUE,
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
