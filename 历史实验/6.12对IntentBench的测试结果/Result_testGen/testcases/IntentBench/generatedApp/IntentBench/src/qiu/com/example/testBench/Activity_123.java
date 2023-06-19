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

public class Activity_123 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.example.testBench","com.example.testBench.sensitivity.PathSensitive");
		intent.setComponent(cn);
		intent.setAction("view");
		intent.addCategory("?");
		intent.setData(Uri.parse("data"));
		intent.putExtra("e5", 0);
		intent.putExtra("e0", "abcde");
		intent.putExtra("e4", 0);
		intent.putExtra("e3", "abcde");
		intent.putExtra("e1", "abcde");
		intent.putExtra("e2", "abcde");
		startActivity(intent);
		//view;;?;;data;;null;;String->e2->abcde,String->e1->abcde,String->e3->abcde,int->e4->0,String->e0->abcde,int->e5->0,
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
