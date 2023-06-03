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

public class Activity_295 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.csipsimple","com.csipsimple.ui.incall.InCallActivity");
		intent.setComponent(cn);
		intent.setAction("com.csipsimple.phone.action.INCALL");
		Parcelable call_info = new MyParcelable();
		intent.putExtra("call_info", call_info);
		startActivity(intent);
		//com.csipsimple.phone.action.INCALL;;null;;null;;null;;Parcelable->call_info->ParcelableObj,
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
