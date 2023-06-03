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

public class Activity_70 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.nutomic.syncthingandroid","com.nutomic.syncthingandroid.activities.FolderActivity");
		intent.setComponent(cn);
		intent.setData(Uri.parse("?"));
		intent.putExtra("com.nutomic.syncthingandroid.activities.FolderPickerActivity.RESULT_DIRECTORY", "abcde");
		intent.putExtra("com.nutomic.syncthingandroid.activities.FolderActivity.FOLDER_LABEL", "!@#$%^ds:+_");
		intent.putExtra("com.nutomic.syncthingandroid.activities.FolderActivity.DEVICE_ID", "abcde");
		intent.putExtra("com.nutomic.syncthinandroid.activities.FolderTypeDialogActivity.EXTRA_RESULT_FOLDER_TYPE", "abcde");
		intent.putExtra("com.nutomic.syncthingandroid.activities.FolderActivity.NOTIFICATION_ID", Integer.MAX_VALUE);
		intent.putExtra("com.nutomic.syncthinandroid.activities.PullOrderDialogActivity.EXTRA_RESULT_PULL_ORDER", "!@#$%^ds:+_");
		intent.putExtra("com.nutomic.syncthingandroid.activities.FolderActivity.IS_CREATE", true);
		intent.putExtra("com.nutomic.syncthingandroid.activities.FolderActivity.FOLDER_ID", "abcde");
		startActivity(intent);
		//null;;null;;?;;null;;String->com.nutomic.syncthingandroid.activities.FolderActivity.FOLDER_ID->abcde,boolean->com.nutomic.syncthingandroid.activities.FolderActivity.IS_CREATE->true,String->com.nutomic.syncthinandroid.activities.PullOrderDialogActivity.EXTRA_RESULT_PULL_ORDER->!@#$%^ds:+_,int->com.nutomic.syncthingandroid.activities.FolderActivity.NOTIFICATION_ID->Integer.MAX_VALUE,String->com.nutomic.syncthinandroid.activities.FolderTypeDialogActivity.EXTRA_RESULT_FOLDER_TYPE->abcde,String->com.nutomic.syncthingandroid.activities.FolderActivity.DEVICE_ID->abcde,String->com.nutomic.syncthingandroid.activities.FolderActivity.FOLDER_LABEL->!@#$%^ds:+_,String->com.nutomic.syncthingandroid.activities.FolderPickerActivity.RESULT_DIRECTORY->abcde,
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
