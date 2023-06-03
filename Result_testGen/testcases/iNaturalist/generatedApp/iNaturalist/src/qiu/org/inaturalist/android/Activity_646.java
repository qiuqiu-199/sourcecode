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

public class Activity_646 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.TaxonTagPhotosViewer");
		intent.setComponent(cn);
		intent.putExtra("guide_xml_filename", "!@#$%^ds:+_");
		intent.putExtra("tag_name", "abcde");
		intent.putExtra("guide_id", "abcde");
		intent.putExtra("tag_value", "abcde");
		startActivity(intent);
		//null;;null;;null;;null;;String->tag_value->abcde,String->guide_id->abcde,String->tag_name->abcde,String->guide_xml_filename->!@#$%^ds:+_,
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
