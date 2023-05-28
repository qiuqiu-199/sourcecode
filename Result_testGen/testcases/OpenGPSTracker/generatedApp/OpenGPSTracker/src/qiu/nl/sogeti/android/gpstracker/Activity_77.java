package qiu.nl.sogeti.android.gpstracker;

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

public class Activity_77 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("nl.sogeti.android.gpstracker","nl.sogeti.android.gpstracker.oauth.PrepareRequestTokenActivity");
		intent.setComponent(cn);
		intent.setData(Uri.parse("x-oauthflow-opengpstracker:mAuthority/mPath"));
		intent.putExtra("CONSUMER_SECRET", "!@#$%^ds:+_");
		intent.putExtra("ACCESS_URL", "!@#$%^ds:+_");
		intent.putExtra("AUTHORIZE_URL", "abcde");
		intent.putExtra("REQUEST_URL", "abcde");
		intent.putExtra("OAUTH_TOKEN", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("CONSUMER_KEY", "abcde");
		intent.putExtra("OAUTH_TOKEN_SECRET", "999999999999999999999999999999999999999999999999999");
		startActivity(intent);
		//null;;null;;x-oauthflow-opengpstracker:mAuthority/mPath;;null;;String->OAUTH_TOKEN_SECRET->999999999999999999999999999999999999999999999999999,String->CONSUMER_KEY->abcde,String->OAUTH_TOKEN->999999999999999999999999999999999999999999999999999,String->REQUEST_URL->abcde,String->AUTHORIZE_URL->abcde,String->ACCESS_URL->!@#$%^ds:+_,String->CONSUMER_SECRET->!@#$%^ds:+_,
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
