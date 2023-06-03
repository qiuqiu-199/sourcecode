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

public class Activity_249 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.IdentificationActivity");
		intent.setComponent(cn);
		intent.putExtra("obs_photo_url", "abcde");
		MySerializable observed_on = new MySerializable();
		intent.putExtra("observed_on", observed_on);
		intent.putExtra("suggest_id", false);
		MySerializable latitude = new MySerializable();
		intent.putExtra("latitude", latitude);
		MySerializable observation_id = new MySerializable();
		intent.putExtra("observation_id", observation_id);
		MySerializable longitude = new MySerializable();
		intent.putExtra("longitude", longitude);
		intent.putExtra("observation", "abcde");
		intent.putExtra("obs_photo_filename", "abcde");
		MySerializable observation_id_internal = new MySerializable();
		intent.putExtra("observation_id_internal", observation_id_internal);
		startActivity(intent);
		//null;;null;;null;;null;;Serializable->observation_id_internal->SerializableObj,String->obs_photo_filename->abcde,String->observation->abcde,Serializable->longitude->SerializableObj,Serializable->observation_id->SerializableObj,Serializable->latitude->SerializableObj,boolean->suggest_id->false,Serializable->observed_on->SerializableObj,String->obs_photo_url->abcde,
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
