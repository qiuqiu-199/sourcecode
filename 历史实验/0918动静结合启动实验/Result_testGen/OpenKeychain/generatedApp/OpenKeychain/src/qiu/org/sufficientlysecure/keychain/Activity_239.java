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

public class Activity_239 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.sufficientlysecure.keychain","org.sufficientlysecure.keychain.ui.ImportKeysProxyActivity");
		intent.setComponent(cn);
		intent.setAction("android.nfc.action.NDEF_DISCOVERED");
		intent.setData(Uri.parse("?"));
		intent.putExtra("SCAN_RESULT_IMAGE_PATH", "abcde");
		Parcelable result_crypto_input = new MyParcelable();
		intent.putExtra("result_crypto_input", result_crypto_input);
		intent.putExtra("SCAN_RESULT_ERROR_CORRECTION_LEVEL", "abcde");
		Parcelable[] android_dot_nfc_dot_extra_dot_NDEF_MESSAGES = new MyParcelable[1];
		android_dot_nfc_dot_extra_dot_NDEF_MESSAGES[0] = new MyParcelable();
		intent.putExtra("android.nfc.extra.NDEF_MESSAGES", android_dot_nfc_dot_extra_dot_NDEF_MESSAGES);
		byte[] SCAN_RESULT_BYTES = new byte[]{0};
		intent.putExtra("SCAN_RESULT_BYTES", SCAN_RESULT_BYTES);
		Parcelable operation_result = new MyParcelable();
		intent.putExtra("operation_result", operation_result);
		intent.putExtra("SCAN_RESULT_ORIENTATION", 0);
		intent.putExtra("SCAN_RESULT", "abcde");
		intent.putExtra("SCAN_RESULT_FORMAT", "abcde");
		Parcelable result_data = new MyParcelable();
		intent.putExtra("result_data", result_data);
		startActivity(intent);
		//android.nfc.action.NDEF_DISCOVERED;;null;;?;;null;;Parcelable->result_data->ParcelableObj,String->SCAN_RESULT_FORMAT->abcde,String->SCAN_RESULT->abcde,int->SCAN_RESULT_ORIENTATION->0,Parcelable->operation_result->ParcelableObj,byteArray->SCAN_RESULT_BYTES->0,ParcelableArray->android.nfc.extra.NDEF_MESSAGES->ParcelableArrayObj,String->SCAN_RESULT_ERROR_CORRECTION_LEVEL->abcde,Parcelable->result_crypto_input->ParcelableObj,String->SCAN_RESULT_IMAGE_PATH->abcde,
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
