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

public class Activity_49 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("eu.siacs.conversations","eu.siacs.conversations.ui.ChooseContactActivity");
		intent.setComponent(cn);
		intent.putExtra("result", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("account", "abcde");
		intent.putExtra("extra_title_res_id", Integer.MIN_VALUE);
		intent.putExtra("extra_select_multiple", true);
		intent.putExtra("contact", "abcde");
		String[] extra_filtered_contacts = new String[1];
		intent.putExtra("extra_filtered_contacts", extra_filtered_contacts);
		intent.putExtra("extra_group_chat_name", "abcde");
		intent.putExtra("extra_conversation", "999999999999999999999999999999999999999999999999999");
		String[] contacts = new String[1];
		intent.putExtra("contacts", contacts);
		intent.putExtra("extra_show_enter_jid", true);
		intent.putExtra("direct_search", false);
		startActivity(intent);
		//null;;null;;null;;null;;boolean->direct_search->false,boolean->extra_show_enter_jid->true,StringArray->contacts->999999999999999999999999999999999999999999999999999,String->extra_conversation->999999999999999999999999999999999999999999999999999,String->extra_group_chat_name->abcde,StringArray->extra_filtered_contacts->999999999999999999999999999999999999999999999999999,String->contact->abcde,boolean->extra_select_multiple->true,int->extra_title_res_id->Integer.MIN_VALUE,String->account->abcde,String->result->999999999999999999999999999999999999999999999999999,
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
