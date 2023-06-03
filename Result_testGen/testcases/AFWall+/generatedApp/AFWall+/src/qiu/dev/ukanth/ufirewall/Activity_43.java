package qiu.dev.ukanth.ufirewall;

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

public class Activity_43 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("dev.ukanth.ufirewall","dev.ukanth.ufirewall.MainActivity");
		intent.setComponent(cn);
		intent.setAction("?");
		intent.putExtra("dev.ukanth.ufirewall.intent.extra.SCRIPT2", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("dev.ukanth.ufirewall.intent.extra.SCRIPT", "abcde");
		startActivity(intent);
		//?;;null;;null;;null;;String->dev.ukanth.ufirewall.intent.extra.SCRIPT->abcde,String->dev.ukanth.ufirewall.intent.extra.SCRIPT2->999999999999999999999999999999999999999999999999999,
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
