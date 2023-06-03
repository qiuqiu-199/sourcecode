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

public class Activity_250 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.sufficientlysecure.keychain","com.journeyapps.barcodescanner.CaptureActivity");
		intent.setComponent(cn);
		intent.setAction("com.google.zxing.client.android.SCAN");
		intent.putExtra("SCAN_MODE", "!@#$%^ds:+_");
		intent.putExtra("SCAN_FORMATS", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("PROMPT_MESSAGE", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("BARCODE_IMAGE_ENABLED", false);
		intent.putExtra("BEEP_ENABLED", true);
		intent.putExtra("SCAN_ORIENTATION_LOCKED", true);
		intent.putExtra("TIMEOUT", 0);
		intent.putExtra("CHARACTER_SET", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("SCAN_CAMERA_ID", 0);
		startActivity(intent);
		//com.google.zxing.client.android.SCAN;;null;;null;;null;;int->SCAN_CAMERA_ID->0,String->CHARACTER_SET->999999999999999999999999999999999999999999999999999,long->TIMEOUT->0,boolean->SCAN_ORIENTATION_LOCKED->true,boolean->BEEP_ENABLED->true,boolean->BARCODE_IMAGE_ENABLED->false,String->PROMPT_MESSAGE->999999999999999999999999999999999999999999999999999,String->SCAN_FORMATS->999999999999999999999999999999999999999999999999999,String->SCAN_MODE->!@#$%^ds:+_,
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
