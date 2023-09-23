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

public class Activity_19 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.ObservationEditor");
		intent.setComponent(cn);
		intent.setAction("android.intent.action.INSERT");
		intent.setData(Uri.parse("?"));
		intent.putExtra("iconic_taxon_name", "abcde");
		MySerializable project_fields = new MySerializable();
		intent.putExtra("project_fields", project_fields);
		intent.putExtra("new com.adobe.xmp.properties.XMPPropertyInfo", "abcde");
		intent.putExtra("is_shared_on_app", true);
		intent.putExtra("taxon_name", "abcde");
		intent.putExtra("species_guess", "abcde");
		intent.putExtra("rank", "abcde");
		intent.putExtra("is_custom", true);
		intent.putExtra("set_default_photo_index", 0);
		intent.putExtra("id_url", "abcde");
		intent.putExtra("take_photo", true);
		intent.putExtra("rank_level", 0);
		ArrayList  android_dot_intent_dot_extra_dot_STREAM = new ArrayList<MyParcelable>();
		android_dot_intent_dot_extra_dot_STREAM.add(new MyParcelable());
		intent.putParcelableArrayListExtra("android.intent.extra.STREAM", android_dot_intent_dot_extra_dot_STREAM);
		intent.putExtra("longitude", 0.0);
		intent.putExtra("observation_json", "abcde");
		intent.putExtra("return_to_observation_list", true);
		intent.putExtra("delete_photo_index", 0);
		intent.putExtra("choose_photo", false);
		intent.putExtra("field_id", 0);
		intent.putExtra("id_name", "abcde");
		intent.putExtra("observation_project", 0);
		intent.putExtra("photoUri", "abcde");
		ArrayList<Integer> project_ids = new ArrayList<Integer>();
		intent.putIntegerArrayListExtra("project_ids", project_ids);
		MySerializable taxon_result = new MySerializable();
		intent.putExtra("taxon_result", taxon_result);
		intent.putExtra("accuracy", 0.0);
		intent.putExtra("taxon_id", 0);
		intent.putExtra("latitude", 0.0);
		intent.putExtra("from_suggestion", false);
		startActivity(intent);
		//android.intent.action.INSERT;;null;;?;;null;;boolean->from_suggestion->false,double->latitude->0.0,int->taxon_id->0,double->accuracy->0.0,Serializable->taxon_result->SerializableObj,IntegerArrayList->project_ids->0,String->photoUri->abcde,int->observation_project->0,String->id_name->abcde,int->field_id->0,boolean->choose_photo->false,int->delete_photo_index->0,boolean->return_to_observation_list->true,String->observation_json->abcde,double->longitude->0.0,ParcelableArrayList->android.intent.extra.STREAM->ParcelableArrayListObj,int->rank_level->0,boolean->take_photo->true,String->id_url->abcde,int->set_default_photo_index->0,boolean->is_custom->true,String->rank->abcde,String->species_guess->abcde,String->taxon_name->abcde,boolean->is_shared_on_app->true,String->new com.adobe.xmp.properties.XMPPropertyInfo->abcde,Serializable->project_fields->SerializableObj,String->iconic_taxon_name->abcde,
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
