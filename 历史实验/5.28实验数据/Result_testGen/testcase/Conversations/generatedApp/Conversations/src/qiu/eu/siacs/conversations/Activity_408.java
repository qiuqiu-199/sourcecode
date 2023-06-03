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

public class Activity_408 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("eu.siacs.conversations","eu.siacs.conversations.ui.UriHandlerActivity");
		intent.setComponent(cn);
		intent.setAction("eu.siacs.conversations.location.show, android.intent.action.VIEW");
		intent.setData(Uri.parse("https://maps.google.com/maps?q=loc:,, geo:,?q=,()"));
		intent.putExtra("longitude", Double.MAX_VALUE);
		intent.putExtra("name", "abcde");
		intent.putExtra("jid", "abcde");
		intent.putExtra("latitude", 0.0);
		startActivity(intent);
		//eu.siacs.conversations.location.show, android.intent.action.VIEW;;null;;https://maps.google.com/maps?q=loc:,, geo:,?q=,();;null;;double->latitude->0.0,String->jid->abcde,String->name->abcde,double->longitude->Double.MAX_VALUE,
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
