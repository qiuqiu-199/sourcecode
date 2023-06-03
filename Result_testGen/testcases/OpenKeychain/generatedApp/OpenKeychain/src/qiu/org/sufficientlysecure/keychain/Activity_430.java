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

public class Activity_430 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.sufficientlysecure.keychain","org.sufficientlysecure.keychain.remote.ui.RemoteSelectPubKeyActivity");
		intent.setComponent(cn);
		intent.putExtra("no_user_ids", false);
		ArrayList<String> dublicate_emails = new ArrayList<String>();
		intent.putStringArrayListExtra("dublicate_emails", dublicate_emails);
		ArrayList<String> missing_emails = new ArrayList<String>();
		intent.putStringArrayListExtra("missing_emails", missing_emails);
		long[] master_key_ids = new long[1];
		intent.putExtra("master_key_ids", master_key_ids);
		startActivity(intent);
		//null;;null;;null;;null;;longArray->master_key_ids->0,StringArrayList->missing_emails->abcde,StringArrayList->dublicate_emails->abcde,boolean->no_user_ids->false,
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
