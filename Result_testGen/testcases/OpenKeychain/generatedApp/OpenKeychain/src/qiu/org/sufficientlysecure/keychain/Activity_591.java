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

public class Activity_591 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.sufficientlysecure.keychain","org.sufficientlysecure.keychain.remote.ui.dialog.RemoteSelectIdKeyActivity");
		intent.setComponent(cn);
		byte[] package_signature = new byte[1];
		intent.putExtra("package_signature", package_signature);
		intent.putExtra("show_autocrypt_hint", false);
		Parcelable result_crypto_input = new MyParcelable();
		intent.putExtra("result_crypto_input", result_crypto_input);
		intent.putExtra("package_name", "abcde");
		intent.putExtra("user_id", "999999999999999999999999999999999999999999999999999");
		Parcelable result_data = new MyParcelable();
		intent.putExtra("result_data", result_data);
		startActivity(intent);
		//null;;null;;null;;null;;Parcelable->result_data->ParcelableObj,String->user_id->999999999999999999999999999999999999999999999999999,String->package_name->abcde,Parcelable->result_crypto_input->ParcelableObj,boolean->show_autocrypt_hint->false,byteArray->package_signature->Byte.MIN_VALUE,
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
