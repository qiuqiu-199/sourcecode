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

public class Activity_269 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.sufficientlysecure.keychain","org.sufficientlysecure.keychain.ui.keyview.ViewKeyActivity");
		intent.setComponent(cn);
		intent.setAction("android.nfc.action.TAG_DISCOVERED");
		intent.setData(Uri.parse("?"));
		Parcelable result_crypto_input = new MyParcelable();
		intent.putExtra("result_crypto_input", result_crypto_input);
		Parcelable display_result = new MyParcelable();
		intent.putExtra("display_result", display_result);
		intent.putExtra("master_key_id", 0);
		Parcelable operation_result = new MyParcelable();
		intent.putExtra("operation_result", operation_result);
		Parcelable result_data = new MyParcelable();
		intent.putExtra("result_data", result_data);
		byte[] fingerprint = new byte[]{0};
		intent.putExtra("fingerprint", fingerprint);
		startActivity(intent);
		//android.nfc.action.TAG_DISCOVERED;;null;;?;;null;;byteArray->fingerprint->0,Parcelable->result_data->ParcelableObj,Parcelable->operation_result->ParcelableObj,long->master_key_id->0,Parcelable->display_result->ParcelableObj,Parcelable->result_crypto_input->ParcelableObj,
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
