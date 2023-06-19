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

public class Activity_364 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.example.testBench","com.example.testBench.extra.ExtraBundle");
		intent.setComponent(cn);
		Bundle bundle_l1 = new Bundle();
		intent.putExtra("bundle_l1", bundle_l1);
		intent.putExtra("str_l1", "abcde");
		startActivity(intent);
		//null;;null;;null;;null;;String->str_l1->abcde,Bundle->bundle_l1->BundleObj,(,),
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
