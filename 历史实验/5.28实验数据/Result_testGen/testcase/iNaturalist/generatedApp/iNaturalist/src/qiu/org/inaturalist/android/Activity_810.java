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

public class Activity_810 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.ObservationViewerActivity");
		intent.setComponent(cn);
		intent.setData(Uri.parse("notEmpty"));
		intent.putExtra("is_shared_on_app", false);
		intent.putExtra("read_only", false);
		intent.putExtra("taxon_name", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("show_comments", false);
		intent.putExtra("species_guess", "!@#$%^ds:+_");
		intent.putExtra("observation", "abcde");
		MySerializable observation_result = new MySerializable();
		intent.putExtra("observation_result", observation_result);
		intent.putExtra("observation_json_result", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("scroll_to_comments_bottom", true);
		intent.putExtra("taxon_id", 0);
		intent.putExtra("from_suggestion", true);
		intent.putExtra("id_remarks", "abcde");
		startActivity(intent);
		//null;;null;;notEmpty;;null;;String->id_remarks->abcde,boolean->from_suggestion->true,int->taxon_id->0,boolean->scroll_to_comments_bottom->true,String->observation_json_result->999999999999999999999999999999999999999999999999999,Serializable->observation_result->SerializableObj,String->observation->abcde,String->species_guess->!@#$%^ds:+_,boolean->show_comments->false,String->taxon_name->999999999999999999999999999999999999999999999999999,boolean->read_only->false,boolean->is_shared_on_app->false,
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
