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

public class Activity_268 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.DataQualityAssessment");
		intent.setComponent(cn);
		intent.setAction("?");
		intent.putExtra("new com.adobe.xmp.properties.XMPPropertyInfo", "!@#$%^ds:+_");
		intent.putExtra("is_shared_on_app", true);
		MySerializable observation = new MySerializable();
		intent.putExtra("observation", observation);
		MySerializable data_quality_metrics_result = new MySerializable();
		intent.putExtra("data_quality_metrics_result", data_quality_metrics_result);
		startActivity(intent);
		//?;;null;;null;;null;;Serializable->data_quality_metrics_result->SerializableObj,Serializable->observation->SerializableObj,boolean->is_shared_on_app->true,String->new com.adobe.xmp.properties.XMPPropertyInfo->!@#$%^ds:+_,
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
