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

public class Activity_326 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.example.testBench","com.example.testBench.extra.ExtraBasic");
		intent.setComponent(cn);
		intent.putExtra("float_c", Float.MAX_VALUE);
		intent.putExtra("short_e", Short.MIN_VALUE);
		intent.putExtra("int_a", 0);
		intent.putExtra("long_d", 0);
		intent.putExtra("double_b", Double.MIN_VALUE);
		startActivity(intent);
		//null;;null;;null;;null;;double->double_b->Double.MIN_VALUE,long->long_d->0,int->int_a->0,short->short_e->Short.MIN_VALUE,float->float_c->Float.MAX_VALUE,
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
