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

public class Activity_90 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.TaxonSuggestionsActivity");
		intent.setComponent(cn);
		MySerializable taxon_suggestions = new MySerializable();
		intent.putExtra("taxon_suggestions", taxon_suggestions);
		intent.putExtra("obs_photo_url", "999999999999999999999999999999999999999999999999999");
		MySerializable observed_on = new MySerializable();
		intent.putExtra("observed_on", observed_on);
		intent.putExtra("longitude", Double.MAX_VALUE);
		intent.putExtra("new com.adobe.xmp.properties.XMPPropertyInfo", "abcde");
		intent.putExtra("observation_id_internal", Integer.MIN_VALUE);
		intent.putExtra("observation_id", 0);
		intent.putExtra("latitude", 0.0);
		intent.putExtra("obs_photo_filename", "abcde");
		intent.putExtra("observation", "999999999999999999999999999999999999999999999999999");
		startActivity(intent);
		//null;;null;;null;;null;;String->observation->999999999999999999999999999999999999999999999999999,String->obs_photo_filename->abcde,double->latitude->0.0,int->observation_id->0,int->observation_id_internal->Integer.MIN_VALUE,String->new com.adobe.xmp.properties.XMPPropertyInfo->abcde,double->longitude->Double.MAX_VALUE,Serializable->observed_on->SerializableObj,String->obs_photo_url->999999999999999999999999999999999999999999999999999,Serializable->taxon_suggestions->SerializableObj,
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