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

public class Activity_313 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.example.testBench","com.example.testBench.lifecycle.LifeCycle2");
		intent.setComponent(cn);
		intent.putExtra("onCreate_dd", Double.MIN_VALUE);
		intent.putExtra("onResume_dd", Double.MAX_VALUE);
		intent.putExtra("onDestroy_dd", Double.MIN_VALUE);
		startActivity(intent);
		//null;;null;;null;;null;;double->onDestroy_dd->Double.MIN_VALUE,double->onResume_dd->Double.MAX_VALUE,double->onCreate_dd->Double.MIN_VALUE,
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
