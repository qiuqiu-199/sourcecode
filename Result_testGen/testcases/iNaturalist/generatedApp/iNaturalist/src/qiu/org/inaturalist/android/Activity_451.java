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

public class Activity_451 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.TaxonSearchActivity");
		intent.setComponent(cn);
		intent.putExtra("suggest_id", true);
		intent.putExtra("observation_json", "!@#$%^ds:+_");
		intent.putExtra("observation_id_internal", Integer.MAX_VALUE);
		intent.putExtra("observation_id", Integer.MAX_VALUE);
		startActivity(intent);
		//null;;null;;null;;null;;int->observation_id->Integer.MAX_VALUE,int->observation_id_internal->Integer.MAX_VALUE,String->observation_json->!@#$%^ds:+_,boolean->suggest_id->true,
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
