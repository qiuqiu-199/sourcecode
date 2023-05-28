package qiu.es.usc.citius.servando.calendula;

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

public class Activity_56 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("es.usc.citius.servando.calendula","com.mikepenz.aboutlibraries.ui.LibsActivity");
		intent.setComponent(cn);
		intent.putExtra("ABOUT_LIBRARIES_STYLE", "abcde");
		intent.putExtra("ABOUT_LIBRARIES_THEME", Integer.MAX_VALUE);
		MySerializable ABOUT_COLOR = new MySerializable();
		intent.putExtra("ABOUT_COLOR", ABOUT_COLOR);
		intent.putExtra("ABOUT_LIBRARIES_TITLE", "!@#$%^ds:+_");
		startActivity(intent);
		//null;;null;;null;;null;;String->ABOUT_LIBRARIES_TITLE->!@#$%^ds:+_,Serializable->ABOUT_COLOR->SerializableObj,int->ABOUT_LIBRARIES_THEME->Integer.MAX_VALUE,String->ABOUT_LIBRARIES_STYLE->abcde,
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
