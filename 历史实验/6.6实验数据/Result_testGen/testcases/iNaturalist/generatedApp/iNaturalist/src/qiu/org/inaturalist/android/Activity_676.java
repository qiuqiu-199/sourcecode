package qiu.org.inaturalist.android;

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

public class Activity_676 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","com.facebook.FacebookActivity");
		intent.setComponent(cn);
		intent.setAction("FacebookDialogFragment");
		Bundle com_dot_facebook_dot_platform_dot_protocol_dot_BRIDGE_ARGS = new Bundle();
		com_dot_facebook_dot_platform_dot_protocol_dot_BRIDGE_ARGS.putString("action_id", "abcde");
		Bundle com_dot_facebook_dot_platform_dot_protocol_dot_METHOD_ARGS = new Bundle();
		intent.putExtra("com.facebook.platform.protocol.METHOD_ARGS", "com_dot_facebook_dot_platform_dot_protocol_dot_METHOD_ARGS");
		intent.putExtra("com.facebook.platform.protocol.BRIDGE_ARGS", "com_dot_facebook_dot_platform_dot_protocol_dot_BRIDGE_ARGS");
		intent.putExtra("com.facebook.platform.protocol.CALL_ID", "!@#$%^ds:+_");
		intent.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0);
		Parcelable content = new MyParcelable();
		intent.putExtra("content", content);
		startActivity(intent);
		//FacebookDialogFragment;;null;;null;;null;;Parcelable->content->ParcelableObj,int->com.facebook.platform.protocol.PROTOCOL_VERSION->0,String->com.facebook.platform.protocol.CALL_ID->!@#$%^ds:+_,Bundle->com.facebook.platform.protocol.BRIDGE_ARGS->BundleObj,(,String->action_id->abcde,),Bundle->com.facebook.platform.protocol.METHOD_ARGS->BundleObj,(,),
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
