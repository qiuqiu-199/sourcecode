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

public class Activity_303 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.sufficientlysecure.keychain","org.sufficientlysecure.keychain.ui.DeleteKeyDialogActivity");
		intent.setComponent(cn);
		long[] extra_delete_master_key_ids = new long[1];
		intent.putExtra("extra_delete_master_key_ids", extra_delete_master_key_ids);
		intent.putExtra("extra_has_secret", true);
		Parcelable result_crypto_input = new MyParcelable();
		intent.putExtra("result_crypto_input", result_crypto_input);
		Parcelable extra_keyserver = new MyParcelable();
		intent.putExtra("extra_keyserver", extra_keyserver);
		Parcelable result_data = new MyParcelable();
		intent.putExtra("result_data", result_data);
		startActivity(intent);
		//null;;null;;null;;null;;Parcelable->result_data->ParcelableObj,Parcelable->extra_keyserver->ParcelableObj,Parcelable->result_crypto_input->ParcelableObj,boolean->extra_has_secret->true,longArray->extra_delete_master_key_ids->0,
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
