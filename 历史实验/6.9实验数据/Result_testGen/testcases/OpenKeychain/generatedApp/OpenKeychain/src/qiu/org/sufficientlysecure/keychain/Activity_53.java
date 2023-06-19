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

public class Activity_53 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.sufficientlysecure.keychain","org.sufficientlysecure.keychain.ui.QrCodeCaptureActivity");
		intent.setComponent(cn);
		intent.setAction("com.google.zxing.client.android.SCAN");
		intent.putExtra("SCAN_MODE", "abcde");
		intent.putExtra("SCAN_FORMATS", "abcde");
		intent.putExtra("PROMPT_MESSAGE", "abcde");
		intent.putExtra("BARCODE_IMAGE_ENABLED", true);
		intent.putExtra("BEEP_ENABLED", false);
		intent.putExtra("SCAN_ORIENTATION_LOCKED", true);
		intent.putExtra("TIMEOUT", 0);
		intent.putExtra("CHARACTER_SET", "abcde");
		intent.putExtra("SCAN_CAMERA_ID", 0);
		startActivity(intent);
		//com.google.zxing.client.android.SCAN;;null;;null;;null;;int->SCAN_CAMERA_ID->0,String->CHARACTER_SET->abcde,long->TIMEOUT->0,boolean->SCAN_ORIENTATION_LOCKED->true,boolean->BEEP_ENABLED->false,boolean->BARCODE_IMAGE_ENABLED->true,String->PROMPT_MESSAGE->abcde,String->SCAN_FORMATS->abcde,String->SCAN_MODE->abcde,
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
