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

public class Activity_51 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.LoginSignupActivity");
		intent.setComponent(cn);
		intent.putExtra("status", true);
		intent.putExtra("password_changed", false);
		Parcelable com_dot_facebook_dot_LoginFragment_maohao_Result = new MyParcelable();
		intent.putExtra("com.facebook.LoginFragment:Result", com_dot_facebook_dot_LoginFragment_maohao_Result);
		intent.putExtra("authAccount", "abcde");
		intent.putExtra("error", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("background_id", Integer.MAX_VALUE);
		intent.putExtra("accountType", "!@#$%^ds:+_");
		intent.putExtra("new com.adobe.xmp.properties.XMPPropertyInfo", "abcde");
		intent.putExtra("signup", false);
		startActivity(intent);
		//null;;null;;null;;null;;boolean->signup->false,String->new com.adobe.xmp.properties.XMPPropertyInfo->abcde,String->accountType->!@#$%^ds:+_,int->background_id->Integer.MAX_VALUE,String->error->999999999999999999999999999999999999999999999999999,String->authAccount->abcde,Parcelable->com.facebook.LoginFragment:Result->ParcelableObj,boolean->password_changed->false,boolean->status->true,
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
