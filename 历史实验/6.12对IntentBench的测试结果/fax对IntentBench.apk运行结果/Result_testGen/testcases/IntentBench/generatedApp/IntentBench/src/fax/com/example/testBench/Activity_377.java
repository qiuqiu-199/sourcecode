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

public class Activity_377 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.example.testBench","com.example.testBench.complete.motivatingExample");
		intent.setComponent(cn);
		intent.setAction("staAB");
		Bundle b2 = new Bundle();
		b2.putString("s3", "999999999999999999999999999999999999999999999999999");
		Bundle b1 = new Bundle();
		b1.putBundle("b2", b2);
		intent.putExtra("b1", b1);
		startActivity(intent);
		//"staAB";;null;;null;;null;;Bundle->b1->BundleObj,(,Bundle->b2->BundleObj,(,String->s3->999999999999999999999999999999999999999999999999999,),),
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
