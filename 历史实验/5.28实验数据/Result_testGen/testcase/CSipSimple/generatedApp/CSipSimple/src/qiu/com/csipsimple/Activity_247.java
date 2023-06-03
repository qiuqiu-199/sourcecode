package qiu.com.csipsimple;

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

public class Activity_247 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.csipsimple","com.csipsimple.ui.incall.InCallActivity");
		intent.setComponent(cn);
		intent.setAction("com.csipsimple.service.SHOW_SAS");
		Parcelable call_info = new MyParcelable();
		intent.putExtra("call_info", call_info);
		intent.putExtra("android.intent.extra.SUBJECT", "abcde");
		intent.putExtra("android.intent.extra.UID", Integer.MAX_VALUE);
		intent.putExtra("call_id", 0);
		intent.putExtra("android.intent.extra.PHONE_NUMBER", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("id", Long.MIN_VALUE);
		startActivity(intent);
		//com.csipsimple.service.SHOW_SAS;;null;;null;;null;;long->id->Long.MIN_VALUE,String->android.intent.extra.PHONE_NUMBER->999999999999999999999999999999999999999999999999999,int->call_id->0,int->android.intent.extra.UID->Integer.MAX_VALUE,String->android.intent.extra.SUBJECT->abcde,Parcelable->call_info->ParcelableObj,
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
