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

public class Activity_81 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.ObservationSearchActivity");
		intent.setComponent(cn);
		MySerializable user_search_observations_result = new MySerializable();
		intent.putExtra("user_search_observations_result", user_search_observations_result);
		intent.putExtra("new com.adobe.xmp.properties.XMPPropertyInfo", "!@#$%^ds:+_");
		intent.putExtra("is_shared_on_app", false);
		intent.putExtra("query", "!@#$%^ds:+_");
		startActivity(intent);
		//null;;null;;null;;null;;String->query->!@#$%^ds:+_,boolean->is_shared_on_app->false,String->new com.adobe.xmp.properties.XMPPropertyInfo->!@#$%^ds:+_,Serializable->user_search_observations_result->SerializableObj,
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
