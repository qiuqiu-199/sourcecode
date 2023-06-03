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

public class Activity_233 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.ObservationListActivity");
		intent.setComponent(cn);
		intent.setAction("android.intent.action.GET_CONTENT");
		intent.setData(Uri.parse("notEmpty"));
		intent.putExtra("from_obs_editor", true);
		intent.putExtra("error", "!@#$%^ds:+_");
		intent.putExtra("noConnectivity", false);
		intent.putExtra("new com.adobe.xmp.properties.XMPPropertyInfo", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("is_shared_on_app", false);
		MySerializable identifications = new MySerializable();
		intent.putExtra("identifications", identifications);
		MySerializable species_count_result = new MySerializable();
		intent.putExtra("species_count_result", species_count_result);
		intent.putExtra("username", "abcde");
		intent.putExtra("sync_canceled", true);
		intent.putExtra("first_sync", false);
		MySerializable user = new MySerializable();
		intent.putExtra("user", user);
		MySerializable observations = new MySerializable();
		intent.putExtra("observations", observations);
		MySerializable results = new MySerializable();
		intent.putExtra("results", results);
		startActivity(intent);
		//android.intent.action.GET_CONTENT;;null;;notEmpty;;null;;Serializable->results->SerializableObj,Serializable->observations->SerializableObj,Serializable->user->SerializableObj,boolean->first_sync->false,boolean->sync_canceled->true,String->username->abcde,Serializable->species_count_result->SerializableObj,Serializable->identifications->SerializableObj,boolean->is_shared_on_app->false,String->new com.adobe.xmp.properties.XMPPropertyInfo->999999999999999999999999999999999999999999999999999,boolean->noConnectivity->false,String->error->!@#$%^ds:+_,boolean->from_obs_editor->true,
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
