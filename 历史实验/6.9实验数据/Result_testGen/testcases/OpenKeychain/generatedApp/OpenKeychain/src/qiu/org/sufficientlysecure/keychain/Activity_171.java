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

public class Activity_171 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.sufficientlysecure.keychain","org.sufficientlysecure.keychain.ui.ImportKeysActivity");
		intent.setComponent(cn);
		intent.setAction("org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_CLIPBOARD");
		intent.setData(Uri.parse("?:?//.well-known/openpgpkey/hu/"));
		Parcelable result_crypto_input = new MyParcelable();
		intent.putExtra("result_crypto_input", result_crypto_input);
		Parcelable result_data = new MyParcelable();
		intent.putExtra("result_data", result_data);
		startActivity(intent);
		//org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_CLIPBOARD;;null;;?:?//.well-known/openpgpkey/hu/;;null;;Parcelable->result_data->ParcelableObj,Parcelable->result_crypto_input->ParcelableObj,
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
