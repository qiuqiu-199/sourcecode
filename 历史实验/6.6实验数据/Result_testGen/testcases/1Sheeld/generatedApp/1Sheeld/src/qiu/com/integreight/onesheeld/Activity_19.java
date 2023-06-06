package qiu.com.integreight.onesheeld;

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

public class Activity_19 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.integreight.onesheeld","com.integreight.onesheeld.MainActivity");
		intent.setComponent(cn);
		intent.setAction("android.nfc.action.NDEF_DISCOVERED");
		intent.putExtra("url", "abcde");
		Parcelable android_dot_nfc_dot_extra_dot_TAG = new MyParcelable();
		intent.putExtra("android.nfc.extra.TAG", android_dot_nfc_dot_extra_dot_TAG);
		startActivity(intent);
		//android.nfc.action.NDEF_DISCOVERED;;null;;null;;null;;Parcelable->android.nfc.extra.TAG->ParcelableObj,String->url->abcde,
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
