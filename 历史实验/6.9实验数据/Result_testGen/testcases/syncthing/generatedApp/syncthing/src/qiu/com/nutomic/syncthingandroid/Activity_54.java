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

public class Activity_54 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.nutomic.syncthingandroid","com.nutomic.syncthingandroid.activities.FolderActivity");
		intent.setComponent(cn);
		intent.setData(Uri.parse("?"));
		intent.putExtra("com.nutomic.syncthingandroid.activities.FolderPickerActivity.RESULT_DIRECTORY", "abcde");
		intent.putExtra("com.nutomic.syncthingandroid.activities.FolderActivity.FOLDER_LABEL", "abcde");
		intent.putExtra("com.nutomic.syncthingandroid.activities.FolderActivity.DEVICE_ID", "abcde");
		intent.putExtra("com.nutomic.syncthinandroid.activities.FolderTypeDialogActivity.EXTRA_RESULT_FOLDER_TYPE", "abcde");
		intent.putExtra("com.nutomic.syncthingandroid.activities.FolderActivity.NOTIFICATION_ID", 0);
		intent.putExtra("com.nutomic.syncthinandroid.activities.PullOrderDialogActivity.EXTRA_RESULT_PULL_ORDER", "abcde");
		intent.putExtra("com.nutomic.syncthingandroid.activities.FolderActivity.IS_CREATE", true);
		intent.putExtra("com.nutomic.syncthingandroid.activities.FolderActivity.FOLDER_ID", "abcde");
		startActivity(intent);
		//null;;null;;?;;null;;String->com.nutomic.syncthingandroid.activities.FolderActivity.FOLDER_ID->abcde,boolean->com.nutomic.syncthingandroid.activities.FolderActivity.IS_CREATE->true,String->com.nutomic.syncthinandroid.activities.PullOrderDialogActivity.EXTRA_RESULT_PULL_ORDER->abcde,int->com.nutomic.syncthingandroid.activities.FolderActivity.NOTIFICATION_ID->0,String->com.nutomic.syncthinandroid.activities.FolderTypeDialogActivity.EXTRA_RESULT_FOLDER_TYPE->abcde,String->com.nutomic.syncthingandroid.activities.FolderActivity.DEVICE_ID->abcde,String->com.nutomic.syncthingandroid.activities.FolderActivity.FOLDER_LABEL->abcde,String->com.nutomic.syncthingandroid.activities.FolderPickerActivity.RESULT_DIRECTORY->abcde,
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
