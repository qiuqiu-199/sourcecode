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

public class Activity_68 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.nutomic.syncthingandroid","com.nutomic.syncthingandroid.activities.DeviceActivity");
		intent.setComponent(cn);
		intent.putExtra("com.nutomic.syncthingandroid.activities.DeviceActivity.DEVICE_NAME", "abcde");
		intent.putExtra("com.nutomic.syncthingandroid.activities.DeviceActivity.DEVICE_ID", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("SCAN_RESULT_ERROR_CORRECTION_LEVEL", "abcde");
		byte[] SCAN_RESULT_BYTES = new byte[1];
		intent.putExtra("SCAN_RESULT_BYTES", SCAN_RESULT_BYTES);
		intent.putExtra("com.nutomic.syncthingandroid.activities.DeviceActivity.IS_CREATE", true);
		intent.putExtra("SCAN_RESULT_ORIENTATION", 0);
		intent.putExtra("SCAN_RESULT", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("com.nutomic.syncthingandroid.activities.DeviceActivity.NOTIFICATION_ID", 0);
		intent.putExtra("SCAN_RESULT_FORMAT", "abcde");
		startActivity(intent);
		//null;;null;;null;;null;;String->SCAN_RESULT_FORMAT->abcde,int->com.nutomic.syncthingandroid.activities.DeviceActivity.NOTIFICATION_ID->0,String->SCAN_RESULT->999999999999999999999999999999999999999999999999999,int->SCAN_RESULT_ORIENTATION->0,boolean->com.nutomic.syncthingandroid.activities.DeviceActivity.IS_CREATE->true,byteArray->SCAN_RESULT_BYTES->Byte.MIN_VALUE,String->SCAN_RESULT_ERROR_CORRECTION_LEVEL->abcde,String->com.nutomic.syncthingandroid.activities.DeviceActivity.DEVICE_ID->999999999999999999999999999999999999999999999999999,String->com.nutomic.syncthingandroid.activities.DeviceActivity.DEVICE_NAME->abcde,
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
