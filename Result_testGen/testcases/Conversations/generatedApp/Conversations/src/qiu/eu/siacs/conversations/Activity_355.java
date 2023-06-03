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

public class Activity_355 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("eu.siacs.conversations","eu.siacs.conversations.ui.StartConversationActivity");
		intent.setComponent(cn);
		intent.setAction("?");
		intent.setData(Uri.parse("?"));
		intent.putExtra("account", "!@#$%^ds:+_");
		Parcelable metadata = new MyParcelable();
		intent.putExtra("metadata", metadata);
		Parcelable intent1 = new MyParcelable();
		intent.putExtra("intent", intent);
		intent.putExtra("result_code", 0);
		intent.putExtra("extra_select_multiple", true);
		intent.putExtra("contact", "abcde");
		intent.putExtra("scanned", true);
		intent.putExtra("extra_group_chat_name", "abcde");
		String[] contacts = new String[1];
		intent.putExtra("contacts", contacts);
		intent.putExtra("eu.siacs.conversations.invite_uri", "!@#$%^ds:+_");
		intent.putExtra("extra_conversation", "abcde");
		startActivity(intent);
		//?;;null;;?;;null;;String->extra_conversation->abcde,String->eu.siacs.conversations.invite_uri->!@#$%^ds:+_,StringArray->contacts->999999999999999999999999999999999999999999999999999,String->extra_group_chat_name->abcde,boolean->scanned->true,String->contact->abcde,boolean->extra_select_multiple->true,int->result_code->0,Parcelable->intent->ParcelableObj,Parcelable->metadata->ParcelableObj,String->account->!@#$%^ds:+_,
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
