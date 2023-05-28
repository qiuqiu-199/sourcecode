package qiu.eu.siacs.conversations;

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

public class Activity_201 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("eu.siacs.conversations","eu.siacs.conversations.ui.ConversationsActivity");
		intent.setComponent(cn);
		intent.setAction("new java.util.List");
		Parcelable error = new MyParcelable();
		intent.putExtra("error", error);
		Parcelable metadata = new MyParcelable();
		intent.putExtra("metadata", metadata);
		Parcelable intent1 = new MyParcelable();
		intent.putExtra("intent", intent);
		intent.putExtra("result_code", Integer.MAX_VALUE);
		intent.putExtra("conversationUuid", "abcde");
		intent.putExtra("eu.siacs.conversations.invite_uri", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("sign_key_id", 0);
		startActivity(intent);
		//new java.util.List;;null;;null;;null;;long->sign_key_id->0,String->eu.siacs.conversations.invite_uri->999999999999999999999999999999999999999999999999999,String->conversationUuid->abcde,int->result_code->Integer.MAX_VALUE,Parcelable->intent->ParcelableObj,Parcelable->metadata->ParcelableObj,Parcelable->error->ParcelableObj,
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
