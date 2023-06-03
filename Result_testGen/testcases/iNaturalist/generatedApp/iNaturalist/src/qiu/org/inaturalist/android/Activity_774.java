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

public class Activity_774 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.LocationChooserActivity");
		intent.setComponent(cn);
		intent.putExtra("iconic_taxon_name", "!@#$%^ds:+_");
		MySerializable latitude = new MySerializable();
		intent.putExtra("latitude", latitude);
		intent.putExtra("accuracy", Double.MAX_VALUE);
		MySerializable longitude = new MySerializable();
		intent.putExtra("longitude", longitude);
		startActivity(intent);
		//null;;null;;null;;null;;Serializable->longitude->SerializableObj,double->accuracy->Double.MAX_VALUE,Serializable->latitude->SerializableObj,String->iconic_taxon_name->!@#$%^ds:+_,
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
