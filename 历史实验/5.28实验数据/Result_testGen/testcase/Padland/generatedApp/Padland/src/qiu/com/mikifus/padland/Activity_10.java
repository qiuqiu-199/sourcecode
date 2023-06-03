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

public class Activity_10 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.mikifus.padland","com.mikifus.padland.PadViewActivity");
		intent.setComponent(cn);
		intent.setAction("android.intent.action.VIEW");
		intent.setData(Uri.parse("notEmpty"));
		intent.putExtra("pad_id", Long.MIN_VALUE);
		intent.putExtra("padLocalName", "!@#$%^ds:+_");
		intent.putExtra("padServer", "abcde");
		intent.putExtra("padUrl", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("padName", "999999999999999999999999999999999999999999999999999");
		startActivity(intent);
		//android.intent.action.VIEW;;null;;notEmpty;;null;;String->padName->999999999999999999999999999999999999999999999999999,String->padUrl->999999999999999999999999999999999999999999999999999,String->padServer->abcde,String->padLocalName->!@#$%^ds:+_,long->pad_id->Long.MIN_VALUE,
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
