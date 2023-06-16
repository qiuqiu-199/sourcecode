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

public class Activity_118 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.IdentificationActivity");
		intent.setComponent(cn);
		intent.putExtra("iconic_taxon_name", "abcde");
		MySerializable observed_on = new MySerializable();
		intent.putExtra("observed_on", observed_on);
		intent.putExtra("rank_level", 0);
		intent.putExtra("longitude", 0.0);
		intent.putExtra("new com.adobe.xmp.properties.XMPPropertyInfo", "abcde");
		intent.putExtra("suggest_id", false);
		intent.putExtra("taxon_name", "abcde");
		intent.putExtra("observation_id_internal", 0);
		intent.putExtra("observation_id", 0);
		intent.putExtra("observation", "abcde");
		intent.putExtra("obs_photo_url", "abcde");
		intent.putExtra("id_name", "abcde");
		intent.putExtra("taxon_id", 0);
		intent.putExtra("latitude", 0.0);
		intent.putExtra("from_suggestion", true);
		intent.putExtra("id_url", "abcde");
		intent.putExtra("obs_photo_filename", "abcde");
		startActivity(intent);
		//null;;null;;null;;null;;String->obs_photo_filename->abcde,String->id_url->abcde,boolean->from_suggestion->true,double->latitude->0.0,int->taxon_id->0,String->id_name->abcde,String->obs_photo_url->abcde,String->observation->abcde,int->observation_id->0,int->observation_id_internal->0,String->taxon_name->abcde,boolean->suggest_id->false,String->new com.adobe.xmp.properties.XMPPropertyInfo->abcde,double->longitude->0.0,int->rank_level->0,Serializable->observed_on->SerializableObj,String->iconic_taxon_name->abcde,
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
