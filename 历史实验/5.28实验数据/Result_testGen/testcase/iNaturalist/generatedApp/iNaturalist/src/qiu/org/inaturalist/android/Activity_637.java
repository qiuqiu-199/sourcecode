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

public class Activity_637 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.CompareSuggestionActivity");
		intent.setComponent(cn);
		intent.setAction("notEmpty");
		intent.putExtra("new com.adobe.xmp.properties.XMPPropertyInfo", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("observation_json", "abcde");
		intent.putExtra("is_shared_on_app", false);
		intent.putExtra("suggestion_index", Integer.MIN_VALUE);
		MySerializable taxon_result = new MySerializable();
		intent.putExtra("taxon_result", taxon_result);
		intent.putExtra("observation_id_internal", Integer.MIN_VALUE);
		intent.putExtra("observation_id", 0);
		startActivity(intent);
		//notEmpty;;null;;null;;null;;int->observation_id->0,int->observation_id_internal->Integer.MIN_VALUE,Serializable->taxon_result->SerializableObj,int->suggestion_index->Integer.MIN_VALUE,boolean->is_shared_on_app->false,String->observation_json->abcde,String->new com.adobe.xmp.properties.XMPPropertyInfo->999999999999999999999999999999999999999999999999999,
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
