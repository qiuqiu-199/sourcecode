package qiu.com.nutomic.syncthingandroid;

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

public class Activity_45 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.nutomic.syncthingandroid","com.nutomic.syncthingandroid.activities.FolderPickerActivity");
		intent.setComponent(cn);
		intent.putExtra("com.nutomic.syncthingandroid.activities.FolderPickerActivity.INITIAL_DIRECTORY", "abcde");
		intent.putExtra("com.nutomic.syncthingandroid.activities.FolderPickerActivity.ROOT_DIRECTORY", "abcde");
		startActivity(intent);
		//null;;null;;null;;null;;String->com.nutomic.syncthingandroid.activities.FolderPickerActivity.ROOT_DIRECTORY->abcde,String->com.nutomic.syncthingandroid.activities.FolderPickerActivity.INITIAL_DIRECTORY->abcde,
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
