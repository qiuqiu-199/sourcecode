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

public class Activity_38 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.sufficientlysecure.keychain","org.sufficientlysecure.keychain.ui.OrbotRequiredDialogActivity");
		intent.setComponent(cn);
		Parcelable messenger = new MyParcelable();
		intent.putExtra("messenger", messenger);
		intent.putExtra("start_orbot", true);
		Parcelable extra_crypto_input = new MyParcelable();
		intent.putExtra("extra_crypto_input", extra_crypto_input);
		startActivity(intent);
		//null;;null;;null;;null;;Parcelable->extra_crypto_input->ParcelableObj,boolean->start_orbot->true,Parcelable->messenger->ParcelableObj,
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