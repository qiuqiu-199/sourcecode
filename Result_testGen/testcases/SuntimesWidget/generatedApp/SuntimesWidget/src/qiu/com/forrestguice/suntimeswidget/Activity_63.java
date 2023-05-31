package qiu.com.forrestguice.suntimeswidget;

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

public class Activity_63 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.forrestguice.suntimeswidget","com.forrestguice.suntimeswidget.SuntimesSettingsActivity");
		intent.setComponent(cn);
		intent.setAction("com.forrestguice.suntimeswidget.PREFS_GENERAL");
		intent.putExtra("isModified", true);
		intent.putExtra("name", "999999999999999999999999999999999999999999999999999");
		startActivity(intent);
		//com.forrestguice.suntimeswidget.PREFS_GENERAL;;null;;null;;null;;String->name->999999999999999999999999999999999999999999999999999,boolean->isModified->true,
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