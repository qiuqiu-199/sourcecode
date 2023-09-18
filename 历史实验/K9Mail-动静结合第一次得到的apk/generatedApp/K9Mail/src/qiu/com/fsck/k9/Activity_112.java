package qiu.com.fsck.k9;

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

public class Activity_112 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.fsck.k9","com.fsck.k9.activity.FolderList");
		intent.setComponent(cn);
		intent.putExtra("fromShortcut", false);
		intent.putExtra("account", "9567308b-490b-473e-8d2b-c52eb165dc1b");
		intent.putExtra("appWidgetId", 0);
		startActivity(intent);
		//null;;null;;null;;null;;int->appWidgetId->0,String->account->9567308b-490b-473e-8d2b-c52eb165dc1b,boolean->fromShortcut->false,
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
