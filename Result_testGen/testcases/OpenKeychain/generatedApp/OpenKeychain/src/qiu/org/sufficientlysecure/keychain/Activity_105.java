package qiu.org.sufficientlysecure.keychain;

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

public class Activity_105 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.sufficientlysecure.keychain","org.sufficientlysecure.keychain.ui.MainActivity");
		intent.setComponent(cn);
		intent.setAction("android.nfc.action.TAG_DISCOVERED");
		Parcelable android_dot_nfc_dot_extra_dot_TAG = new MyParcelable();
		intent.putExtra("android.nfc.extra.TAG", android_dot_nfc_dot_extra_dot_TAG);
		intent.putExtra("init_frag", Integer.MAX_VALUE);
		intent.putExtra("skip_first_time", true);
		Parcelable operation_result = new MyParcelable();
		intent.putExtra("operation_result", operation_result);
		startActivity(intent);
		//android.nfc.action.TAG_DISCOVERED;;null;;null;;null;;Parcelable->operation_result->ParcelableObj,boolean->skip_first_time->true,int->init_frag->Integer.MAX_VALUE,Parcelable->android.nfc.extra.TAG->ParcelableObj,
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
