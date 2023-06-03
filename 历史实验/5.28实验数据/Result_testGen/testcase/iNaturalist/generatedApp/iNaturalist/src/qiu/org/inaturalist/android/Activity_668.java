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

public class Activity_668 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","com.facebook.CustomTabMainActivity");
		intent.setComponent(cn);
		intent.setAction(".action_refresh");
		intent.putExtra(".extra_chromePackage", "999999999999999999999999999999999999999999999999999");
		intent.putExtra(".extra_url", "abcde");
		intent.putExtra(".extra_params", "_dot_extra_params");
		startActivity(intent);
		//.action_refresh;;null;;null;;null;;Bundle->.extra_params->BundleObj,String->.extra_url->abcde,String->.extra_chromePackage->999999999999999999999999999999999999999999999999999,
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
