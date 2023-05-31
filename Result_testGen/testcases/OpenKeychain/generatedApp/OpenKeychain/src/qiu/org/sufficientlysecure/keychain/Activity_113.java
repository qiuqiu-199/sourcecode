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

public class Activity_113 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.sufficientlysecure.keychain","org.sufficientlysecure.keychain.remote.ui.SelectSignKeyIdActivity");
		intent.setComponent(cn);
		intent.putExtra("package_name", "999999999999999999999999999999999999999999999999999");
		Parcelable data = new MyParcelable();
		intent.putExtra("data", data);
		intent.putExtra("package_signature", Byte.MIN_VALUE);
		intent.putExtra("user_id", "abcde");
		startActivity(intent);
		//null;;null;;null;;null;;String->user_id->abcde,byte[]->package_signature->Byte.MIN_VALUE,Parcelable->data->ParcelableObj,String->package_name->999999999999999999999999999999999999999999999999999,
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