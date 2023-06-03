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

public class Activity_102 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.ProjectSelectorActivity");
		intent.setComponent(cn);
		intent.putExtra("id_name", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("field_id", Integer.MIN_VALUE);
		MySerializable project_fields = new MySerializable();
		intent.putExtra("project_fields", project_fields);
		ArrayList<Integer> project_id = new ArrayList<Integer>();
		intent.putIntegerArrayListExtra("project_id", project_id);
		ArrayList<Integer> umbrella_project_ids = new ArrayList<Integer>();
		intent.putIntegerArrayListExtra("umbrella_project_ids", umbrella_project_ids);
		intent.putExtra("taxon_name", "!@#$%^ds:+_");
		MySerializable projects_result = new MySerializable();
		intent.putExtra("projects_result", projects_result);
		intent.putExtra("is_confirmation", false);
		intent.putExtra("observation_id", 0);
		intent.putExtra("taxon_id", Integer.MAX_VALUE);
		intent.putExtra("id_url", "!@#$%^ds:+_");
		startActivity(intent);
		//null;;null;;null;;null;;String->id_url->!@#$%^ds:+_,int->taxon_id->Integer.MAX_VALUE,int->observation_id->0,boolean->is_confirmation->false,Serializable->projects_result->SerializableObj,String->taxon_name->!@#$%^ds:+_,IntegerArrayList->umbrella_project_ids->Integer.MIN_VALUE,IntegerArrayList->project_id->0,Serializable->project_fields->SerializableObj,int->field_id->Integer.MIN_VALUE,String->id_name->999999999999999999999999999999999999999999999999999,
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
