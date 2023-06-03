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

public class Activity_147 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("es.usc.citius.servando.calendula","es.usc.citius.servando.calendula.activities.MedicinesActivity");
		intent.setComponent(cn);
		intent.putExtra("action", "999999999999999999999999999999999999999999999999999");
		Parcelable MedicineSearchActivity_dot_return_dot_extras_dot_PRESCRIPTION = new MyParcelable();
		intent.putExtra("MedicineSearchActivity.return.extras.PRESCRIPTION", MedicineSearchActivity_dot_return_dot_extras_dot_PRESCRIPTION);
		intent.putExtra("MedicineSearchActivity.return.extras.PRESCRIPTION_NAME", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("qr_data", "!@#$%^ds:+_");
		intent.putExtra("MedicinesActivity.extras.SEARCH_TEXT", "!@#$%^ds:+_");
		intent.putExtra("medicine_id", 0);
		startActivity(intent);
		//null;;null;;null;;null;;long->medicine_id->0,String->MedicinesActivity.extras.SEARCH_TEXT->!@#$%^ds:+_,String->qr_data->!@#$%^ds:+_,String->MedicineSearchActivity.return.extras.PRESCRIPTION_NAME->999999999999999999999999999999999999999999999999999,Parcelable->MedicineSearchActivity.return.extras.PRESCRIPTION->ParcelableObj,String->action->999999999999999999999999999999999999999999999999999,
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
