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

public class Activity_20 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.mikifus.padland","com.mikifus.padland.PadViewActivity");
		intent.setComponent(cn);
		intent.putExtra("padServer", "https");
		intent.putExtra("padName", "china");
		intent.putExtra("padUrl", "https");
		startActivity(intent);
		//null;;null;;null;;null;;String->padUrl->https,String->padLocalName->null,String->padName->china,String->padServer->https,
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
