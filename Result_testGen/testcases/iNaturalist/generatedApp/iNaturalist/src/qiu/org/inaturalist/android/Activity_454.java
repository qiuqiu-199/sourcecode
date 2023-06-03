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

public class Activity_454 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.TaxonSearchActivity");
		intent.setComponent(cn);
		intent.putExtra("show_unknown", true);
		intent.putExtra("observation_json", "abcde");
		MySerializable observation_id = new MySerializable();
		intent.putExtra("observation_id", observation_id);
		intent.putExtra("species_guess", "!@#$%^ds:+_");
		MySerializable observation_id_internal = new MySerializable();
		intent.putExtra("observation_id_internal", observation_id_internal);
		startActivity(intent);
		//null;;null;;null;;null;;Serializable->observation_id_internal->SerializableObj,String->species_guess->!@#$%^ds:+_,Serializable->observation_id->SerializableObj,String->observation_json->abcde,boolean->show_unknown->true,
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
