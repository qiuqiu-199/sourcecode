package qiu.com.example.testBench;

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

public class Activity_166 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.example.testBench","com.example.testBench.sensitivity.ContextSensitive");
		intent.setComponent(cn);
		intent.setAction("if_a1");
		intent.putExtra("d0", 0.0);
		intent.putExtra("if_d1", 0.0);
		intent.putExtra("if_d2", 0.0);
		intent.putExtra("if_d3", 0.0);
		startActivity(intent);
		//if_a1;;null;;null;;null;;double->if_d3->0.0,double->if_d2->0.0,double->if_d1->0.0,double->d0->0.0,
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
