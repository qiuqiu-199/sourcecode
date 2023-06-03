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

public class Activity_2 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.ObservationEditor");
		intent.setComponent(cn);
		intent.setAction("android.intent.action.SEND");
		intent.setData(Uri.parse("notEmpty"));
		intent.putExtra("field_id", 0);
		intent.putExtra("id_name", "abcde");
		intent.putExtra("observation_project", 0);
		intent.putExtra("photoUri", "abcde");
		ArrayList<Integer> project_ids = new ArrayList<Integer>();
		intent.putIntegerArrayListExtra("project_ids", project_ids);
		MySerializable taxon_result = new MySerializable();
		intent.putExtra("taxon_result", taxon_result);
		intent.putExtra("accuracy", 0.0);
		intent.putExtra("taxon_id", Integer.MAX_VALUE);
		intent.putExtra("latitude", 0.0);
		intent.putExtra("from_suggestion", true);
		startActivity(intent);
		//android.intent.action.SEND;;null;;notEmpty;;null;;boolean->from_suggestion->true,double->latitude->0.0,int->taxon_id->Integer.MAX_VALUE,double->accuracy->0.0,Serializable->taxon_result->SerializableObj,IntegerArrayList->project_ids->0,String->photoUri->abcde,int->observation_project->0,String->id_name->abcde,int->field_id->0,
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
