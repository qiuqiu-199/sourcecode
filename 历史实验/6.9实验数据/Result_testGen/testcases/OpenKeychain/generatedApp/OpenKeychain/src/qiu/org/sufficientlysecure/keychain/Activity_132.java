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

public class Activity_132 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.sufficientlysecure.keychain","org.sufficientlysecure.keychain.ui.ImportKeysActivity");
		intent.setComponent(cn);
		intent.setAction("org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_KEY_SERVER_AND_RETURN_RESULT");
		intent.setData(Uri.parse("?://mHost:mPort//.well-known/openpgpkey/hu/"));
		startActivity(intent);
		//org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_KEY_SERVER_AND_RETURN_RESULT;;null;;?://mHost:mPort//.well-known/openpgpkey/hu/;;null;;
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
