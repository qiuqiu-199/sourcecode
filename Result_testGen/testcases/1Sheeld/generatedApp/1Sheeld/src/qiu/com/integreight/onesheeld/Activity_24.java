package qiu.com.integreight.onesheeld;

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

public class Activity_24 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.integreight.onesheeld","com.facebook.FacebookActivity");
		intent.setComponent(cn);
		intent.setAction("FacebookDialogFragment");
		intent.putExtra("action_id", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("com.facebook.platform.protocol.CALL_ID", "abcde");
		intent.putExtra("com.facebook.platform.protocol.METHOD_ARGS", "com_dot_facebook_dot_platform_dot_protocol_dot_METHOD_ARGS");
		intent.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0);
		intent.putExtra("com.facebook.platform.protocol.BRIDGE_ARGS", "com_dot_facebook_dot_platform_dot_protocol_dot_BRIDGE_ARGS");
		startActivity(intent);
		//FacebookDialogFragment;;null;;null;;null;;Bundle->com.facebook.platform.protocol.BRIDGE_ARGS->BundleObj,int->com.facebook.platform.protocol.PROTOCOL_VERSION->0,Bundle->com.facebook.platform.protocol.METHOD_ARGS->BundleObj,String->com.facebook.platform.protocol.CALL_ID->abcde,String->action_id->999999999999999999999999999999999999999999999999999,
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
