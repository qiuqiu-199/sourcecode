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

public class Activity_21 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.nutomic.syncthingandroid","com.nutomic.syncthingandroid.activities.ShareActivity");
		intent.setComponent(cn);
		intent.setAction("android.intent.action.SEND");
		intent.putExtra("com.nutomic.syncthingandroid.activities.FolderPickerActivity.RESULT_DIRECTORY", "!@#$%^ds:+_");
		Parcelable android_dot_intent_dot_extra_dot_STREAM = new MyParcelable();
		intent.putExtra("android.intent.extra.STREAM", android_dot_intent_dot_extra_dot_STREAM);
		intent.putExtra("com.nutomic.syncthing", true);
		startActivity(intent);
		//android.intent.action.SEND;;null;;null;;null;;boolean->com.nutomic.syncthing->true,Parcelable->android.intent.extra.STREAM->ParcelableObj,String->com.nutomic.syncthingandroid.activities.FolderPickerActivity.RESULT_DIRECTORY->!@#$%^ds:+_,
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
