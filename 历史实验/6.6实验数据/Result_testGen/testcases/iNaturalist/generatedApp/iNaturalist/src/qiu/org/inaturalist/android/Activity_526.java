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

public class Activity_526 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.ProjectNews");
		intent.setComponent(cn);
		intent.setAction("?");
		intent.putExtra("error", "abcde");
		intent.putExtra("new com.adobe.xmp.properties.XMPPropertyInfo", "abcde");
		intent.putExtra("is_shared_on_app", false);
		intent.putExtra("is_user_feed", false);
		MySerializable project = new MySerializable();
		intent.putExtra("project", project);
		MySerializable results = new MySerializable();
		intent.putExtra("results", results);
		startActivity(intent);
		//?;;null;;null;;null;;Serializable->results->SerializableObj,Serializable->project->SerializableObj,boolean->is_user_feed->false,boolean->is_shared_on_app->false,String->new com.adobe.xmp.properties.XMPPropertyInfo->abcde,String->error->abcde,
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
