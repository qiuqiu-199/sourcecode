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

public class Activity_214 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.IdentificationActivity");
		intent.setComponent(cn);
		intent.putExtra("observation_id_internal", Integer.MAX_VALUE);
		intent.putExtra("observation_id", 0);
		intent.putExtra("observation", "!@#$%^ds:+_");
		intent.putExtra("obs_photo_url", "!@#$%^ds:+_");
		intent.putExtra("id_name", "abcde");
		intent.putExtra("taxon_id", 0);
		intent.putExtra("latitude", 0.0);
		intent.putExtra("from_suggestion", false);
		intent.putExtra("id_url", "!@#$%^ds:+_");
		intent.putExtra("obs_photo_filename", "abcde");
		startActivity(intent);
		//null;;null;;null;;null;;String->obs_photo_filename->abcde,String->id_url->!@#$%^ds:+_,boolean->from_suggestion->false,double->latitude->0.0,int->taxon_id->0,String->id_name->abcde,String->obs_photo_url->!@#$%^ds:+_,String->observation->!@#$%^ds:+_,int->observation_id->0,int->observation_id_internal->Integer.MAX_VALUE,
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
