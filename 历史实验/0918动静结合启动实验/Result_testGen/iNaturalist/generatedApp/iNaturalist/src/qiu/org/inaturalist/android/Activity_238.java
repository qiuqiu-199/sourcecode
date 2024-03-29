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

public class Activity_238 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.CompareSuggestionActivity");
		intent.setComponent(cn);
		intent.setAction("?");
		intent.putExtra("new com.adobe.xmp.properties.XMPPropertyInfo", "abcde");
		intent.putExtra("observation_json", "abcde");
		intent.putExtra("is_shared_on_app", false);
		intent.putExtra("suggestion_index", 0);
		MySerializable taxon_result = new MySerializable();
		intent.putExtra("taxon_result", taxon_result);
		intent.putExtra("observation_id_internal", 0);
		intent.putExtra("observation_id", 0);
		startActivity(intent);
		//?;;null;;null;;null;;int->observation_id->0,int->observation_id_internal->0,Serializable->taxon_result->SerializableObj,int->suggestion_index->0,boolean->is_shared_on_app->false,String->observation_json->abcde,String->new com.adobe.xmp.properties.XMPPropertyInfo->abcde,
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
