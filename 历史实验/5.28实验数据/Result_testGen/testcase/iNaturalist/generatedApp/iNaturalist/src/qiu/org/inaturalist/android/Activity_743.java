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

public class Activity_743 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.ProjectDetails");
		intent.setComponent(cn);
		intent.setAction("notEmpty");
		intent.putExtra("error", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("new com.adobe.xmp.properties.XMPPropertyInfo", "abcde");
		intent.putExtra("is_shared_on_app", false);
		MySerializable results = new MySerializable();
		intent.putExtra("results", results);
		intent.putExtra("project", "abcde");
		startActivity(intent);
		//notEmpty;;null;;null;;null;;String->project->abcde,Serializable->results->SerializableObj,boolean->is_shared_on_app->false,String->new com.adobe.xmp.properties.XMPPropertyInfo->abcde,String->error->999999999999999999999999999999999999999999999999999,
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
