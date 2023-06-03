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

public class Activity_541 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.UserProfile");
		intent.setComponent(cn);
		intent.setAction("user_details_result");
		MySerializable species_count_result = new MySerializable();
		intent.putExtra("species_count_result", species_count_result);
		intent.putExtra("error", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("new com.adobe.xmp.properties.XMPPropertyInfo", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("is_shared_on_app", true);
		intent.putExtra("username", "abcde");
		MySerializable user = new MySerializable();
		intent.putExtra("user", user);
		MySerializable identifications = new MySerializable();
		intent.putExtra("identifications", identifications);
		MySerializable observations = new MySerializable();
		intent.putExtra("observations", observations);
		startActivity(intent);
		//user_details_result;;null;;null;;null;;Serializable->observations->SerializableObj,Serializable->identifications->SerializableObj,Serializable->user->SerializableObj,String->username->abcde,boolean->is_shared_on_app->true,String->new com.adobe.xmp.properties.XMPPropertyInfo->999999999999999999999999999999999999999999999999999,String->error->999999999999999999999999999999999999999999999999999,Serializable->species_count_result->SerializableObj,
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
