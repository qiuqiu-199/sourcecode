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

public class Activity_281 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.sufficientlysecure.keychain","org.sufficientlysecure.keychain.remote.ui.dialog.RemoteDeduplicateActivity");
		intent.setComponent(cn);
		intent.putExtra("package_name", "!@#$%^ds:+_");
		Parcelable data = new MyParcelable();
		intent.putExtra("data", data);
		MySerializable duplicate_emails = new MySerializable();
		intent.putExtra("duplicate_emails", duplicate_emails);
		startActivity(intent);
		//null;;null;;null;;null;;Serializable->duplicate_emails->SerializableObj,Parcelable->data->ParcelableObj,String->package_name->!@#$%^ds:+_,
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