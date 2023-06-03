package qiu.eu.siacs.conversations;

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

public class Activity_540 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("eu.siacs.conversations","eu.siacs.conversations.ui.PublishProfilePictureActivity");
		intent.setComponent(cn);
		intent.setData(Uri.parse("?"));
		intent.putExtra("account", "abcde");
		Parcelable CROP_IMAGE_EXTRA_RESULT = new MyParcelable();
		intent.putExtra("CROP_IMAGE_EXTRA_RESULT", CROP_IMAGE_EXTRA_RESULT);
		intent.putExtra("setup", true);
		intent.putExtra("eu.siacs.conversations.invite_uri", "!@#$%^ds:+_");
		startActivity(intent);
		//null;;null;;?;;null;;String->eu.siacs.conversations.invite_uri->!@#$%^ds:+_,boolean->setup->true,Parcelable->CROP_IMAGE_EXTRA_RESULT->ParcelableObj,String->account->abcde,
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
