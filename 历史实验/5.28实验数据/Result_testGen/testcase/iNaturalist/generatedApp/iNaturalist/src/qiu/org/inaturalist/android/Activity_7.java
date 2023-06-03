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

public class Activity_7 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.ObservationEditor");
		intent.setComponent(cn);
		intent.setAction("android.intent.action.SEND_MULTIPLE");
		intent.setData(Uri.parse("notEmpty"));
		intent.putExtra("delete_photo_index", Integer.MIN_VALUE);
		intent.putExtra("choose_photo", true);
		intent.putExtra("field_id", Integer.MIN_VALUE);
		intent.putExtra("id_name", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("observation_project", Integer.MAX_VALUE);
		intent.putExtra("photoUri", "abcde");
		ArrayList<Integer> project_ids = new ArrayList<Integer>();
		intent.putIntegerArrayListExtra("project_ids", project_ids);
		MySerializable taxon_result = new MySerializable();
		intent.putExtra("taxon_result", taxon_result);
		intent.putExtra("accuracy", Double.MAX_VALUE);
		intent.putExtra("taxon_id", 0);
		intent.putExtra("latitude", 0.0);
		intent.putExtra("from_suggestion", true);
		startActivity(intent);
		//android.intent.action.SEND_MULTIPLE;;null;;notEmpty;;null;;boolean->from_suggestion->true,double->latitude->0.0,int->taxon_id->0,double->accuracy->Double.MAX_VALUE,Serializable->taxon_result->SerializableObj,IntegerArrayList->project_ids->Integer.MAX_VALUE,String->photoUri->abcde,int->observation_project->Integer.MAX_VALUE,String->id_name->999999999999999999999999999999999999999999999999999,int->field_id->Integer.MIN_VALUE,boolean->choose_photo->true,int->delete_photo_index->Integer.MIN_VALUE,
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
