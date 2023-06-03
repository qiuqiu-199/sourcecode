package qiu.com.fsck.k9;

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

public class Activity_120 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.fsck.k9","com.fsck.k9.activity.MessageCompose");
		intent.setComponent(cn);
		intent.setAction("com.fsck.k9.intent.action.FORWARD_AS_ATTACHMENT");
		intent.putExtra("message_reference", "abcde");
		Parcelable message_decryption_result = new MyParcelable();
		intent.putExtra("message_decryption_result", message_decryption_result);
		startActivity(intent);
		//com.fsck.k9.intent.action.FORWARD_AS_ATTACHMENT;;null;;null;;null;;Parcelable->message_decryption_result->ParcelableObj,String->message_reference->abcde,
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
