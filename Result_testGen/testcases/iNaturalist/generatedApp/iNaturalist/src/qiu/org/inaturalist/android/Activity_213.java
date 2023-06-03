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

public class Activity_213 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.ExploreActivity");
		intent.setComponent(cn);
		intent.setAction("explore_get_species_result");
		MySerializable search_filters = new MySerializable();
		intent.putExtra("search_filters", search_filters);
		intent.putExtra("error", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("new com.adobe.xmp.properties.XMPPropertyInfo", "!@#$%^ds:+_");
		intent.putExtra("active_tab", Integer.MAX_VALUE);
		intent.putExtra("is_shared_on_app", false);
		MySerializable results = new MySerializable();
		intent.putExtra("results", results);
		startActivity(intent);
		//explore_get_species_result;;null;;null;;null;;Serializable->results->SerializableObj,boolean->is_shared_on_app->false,int->active_tab->Integer.MAX_VALUE,String->new com.adobe.xmp.properties.XMPPropertyInfo->!@#$%^ds:+_,String->error->999999999999999999999999999999999999999999999999999,Serializable->search_filters->SerializableObj,
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
