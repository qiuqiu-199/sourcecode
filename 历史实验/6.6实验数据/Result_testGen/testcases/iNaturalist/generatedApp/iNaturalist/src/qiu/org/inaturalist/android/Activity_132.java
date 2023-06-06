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

public class Activity_132 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.ProjectSelectorActivity");
		intent.setComponent(cn);
		ArrayList<String> project_id = new ArrayList<String>();
		intent.putExtra("project_id", project_id);
		MySerializable project_fields = new MySerializable();
		intent.putExtra("project_fields", project_fields);
		intent.putExtra("is_confirmation", false);
		MySerializable observation_id = new MySerializable();
		intent.putExtra("observation_id", observation_id);
		ArrayList<String> umbrella_project_ids = new ArrayList<String>();
		intent.putExtra("umbrella_project_ids", umbrella_project_ids);
		startActivity(intent);
		//null;;null;;null;;null;;ArrayList->umbrella_project_ids->ArrayListObj,Serializable->observation_id->SerializableObj,boolean->is_confirmation->false,Serializable->project_fields->SerializableObj,ArrayList->project_id->ArrayListObj,
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
