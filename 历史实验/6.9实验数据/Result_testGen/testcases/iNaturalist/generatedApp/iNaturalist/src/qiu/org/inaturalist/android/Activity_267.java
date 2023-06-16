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

public class Activity_267 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.TaxonActivity");
		intent.setComponent(cn);
		intent.setAction("histogram_result");
		intent.putExtra("new com.adobe.xmp.properties.XMPPropertyInfo", "abcde");
		intent.putExtra("is_shared_on_app", true);
		MySerializable observation = new MySerializable();
		intent.putExtra("observation", observation);
		intent.putExtra("research_grade", true);
		MySerializable taxon_result = new MySerializable();
		intent.putExtra("taxon_result", taxon_result);
		intent.putExtra("download_taxon", false);
		MySerializable taxon_observation_bounds_result = new MySerializable();
		intent.putExtra("taxon_observation_bounds_result", taxon_observation_bounds_result);
		intent.putExtra("taxon_suggestion", 0);
		startActivity(intent);
		//histogram_result;;null;;null;;null;;int->taxon_suggestion->0,Serializable->taxon_observation_bounds_result->SerializableObj,boolean->download_taxon->false,Serializable->taxon_result->SerializableObj,boolean->research_grade->true,Serializable->observation->SerializableObj,boolean->is_shared_on_app->true,String->new com.adobe.xmp.properties.XMPPropertyInfo->abcde,
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
