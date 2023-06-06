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

public class Activity_490 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("eu.siacs.conversations","eu.siacs.conversations.ui.UriHandlerActivity");
		intent.setComponent(cn);
		intent.setAction("scan_qr_code");
		intent.setData(Uri.parse("?"));
		intent.putExtra("result", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("eu.siacs.conversations.invite_uri", "abcde");
		startActivity(intent);
		//scan_qr_code;;null;;?;;null;;String->eu.siacs.conversations.invite_uri->abcde,String->result->999999999999999999999999999999999999999999999999999,
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
