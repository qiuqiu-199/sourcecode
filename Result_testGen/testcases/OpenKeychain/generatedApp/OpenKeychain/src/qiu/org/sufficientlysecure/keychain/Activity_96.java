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

public class Activity_96 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.sufficientlysecure.keychain","org.sufficientlysecure.keychain.remote.ui.RemoteSecurityProblemDialogActivity");
		intent.setComponent(cn);
		intent.putExtra("support_override", false);
		intent.putExtra("package_name", "!@#$%^ds:+_");
		MySerializable security_problem = new MySerializable();
		intent.putExtra("security_problem", security_problem);
		startActivity(intent);
		//null;;null;;null;;null;;Serializable->security_problem->SerializableObj,String->package_name->!@#$%^ds:+_,boolean->support_override->false,
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
