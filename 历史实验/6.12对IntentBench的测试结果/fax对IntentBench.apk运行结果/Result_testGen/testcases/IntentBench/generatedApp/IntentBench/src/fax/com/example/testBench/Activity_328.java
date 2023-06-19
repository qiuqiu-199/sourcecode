package fax.com.example.testBench;

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

public class Activity_328 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.example.testBench","com.example.testBench.extra.ExtraBasic");
		intent.setComponent(cn);
		intent.putExtra("short_e", 0.0);
		intent.putExtra("int_a", Integer.MAX_VALUE);
		intent.putExtra("long_d", Long.MIN_VALUE);
		intent.putExtra("double_b", 0.0);
		startActivity(intent);
		//null;;null;;null;;null;;double->double_b->0.0,long->long_d->Long.MIN_VALUE,int->int_a->Integer.MAX_VALUE,short->short_e->0.0,
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
