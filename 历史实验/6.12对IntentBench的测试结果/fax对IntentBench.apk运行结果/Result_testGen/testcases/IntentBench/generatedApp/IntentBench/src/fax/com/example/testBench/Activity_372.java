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

public class Activity_372 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.example.testBench","com.example.testBench.complete.motivatingExample");
		intent.setComponent(cn);
		Bundle b2 = new Bundle();
		b2.putString("s3", "abcde");
		Bundle b1 = new Bundle();
		b1.putBundle("b2", b2);
		intent.putExtra("b1", b1);
		intent.putExtra("s1", "!@#$%^ds:+_");
		startActivity(intent);
		//null;;null;;null;;null;;String->s1->!@#$%^ds:+_,Bundle->b1->BundleObj,(,Bundle->b2->BundleObj,(,String->s3->abcde,),),
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
