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

public class Activity_82 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("nl.sogeti.android.gpstracker","nl.sogeti.android.gpstracker.oauth.PrepareRequestTokenActivity");
		intent.setComponent(cn);
		intent.setData(Uri.parse("x-oauthflow-opengpstracker://mHost:mPort/mPath"));
		intent.putExtra("CONSUMER_SECRET", "!@#$%^ds:+_");
		intent.putExtra("ACCESS_URL", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("AUTHORIZE_URL", "!@#$%^ds:+_");
		intent.putExtra("REQUEST_URL", "abcde");
		intent.putExtra("OAUTH_TOKEN", "abcde");
		intent.putExtra("CONSUMER_KEY", "!@#$%^ds:+_");
		intent.putExtra("OAUTH_TOKEN_SECRET", "abcde");
		startActivity(intent);
		//null;;null;;x-oauthflow-opengpstracker://mHost:mPort/mPath;;null;;String->OAUTH_TOKEN_SECRET->abcde,String->CONSUMER_KEY->!@#$%^ds:+_,String->OAUTH_TOKEN->abcde,String->REQUEST_URL->abcde,String->AUTHORIZE_URL->!@#$%^ds:+_,String->ACCESS_URL->999999999999999999999999999999999999999999999999999,String->CONSUMER_SECRET->!@#$%^ds:+_,
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