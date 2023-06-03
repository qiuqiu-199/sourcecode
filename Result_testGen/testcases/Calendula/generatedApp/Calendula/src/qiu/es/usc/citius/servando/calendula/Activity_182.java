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

public class Activity_182 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("es.usc.citius.servando.calendula","es.usc.citius.servando.calendula.activities.ScanActivity");
		intent.setComponent(cn);
		intent.putExtra("patient_id", Long.MAX_VALUE);
		intent.putExtra("after_scan_pkg", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("after_scan_cls", "!@#$%^ds:+_");
		startActivity(intent);
		//null;;null;;null;;null;;String->after_scan_cls->!@#$%^ds:+_,String->after_scan_pkg->999999999999999999999999999999999999999999999999999,long->patient_id->Long.MAX_VALUE,
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
