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

public class Activity_33 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("eu.siacs.conversations","eu.siacs.conversations.ui.ChooseContactActivity");
		intent.setComponent(cn);
		intent.putExtra("result", "abcde");
		intent.putExtra("account", "abcde");
		intent.putExtra("extra_title_res_id", 0);
		intent.putExtra("extra_select_multiple", true);
		intent.putExtra("contact", "abcde");
		String[] extra_filtered_contacts = new String[1];
		intent.putExtra("extra_filtered_contacts", extra_filtered_contacts);
		intent.putExtra("extra_group_chat_name", "abcde");
		intent.putExtra("extra_conversation", "abcde");
		String[] contacts = new String[1];
		intent.putExtra("contacts", contacts);
		intent.putExtra("extra_show_enter_jid", true);
		intent.putExtra("direct_search", true);
		startActivity(intent);
		//null;;null;;null;;null;;boolean->direct_search->true,boolean->extra_show_enter_jid->true,StringArray->contacts->abcde,String->extra_conversation->abcde,String->extra_group_chat_name->abcde,StringArray->extra_filtered_contacts->abcde,String->contact->abcde,boolean->extra_select_multiple->true,int->extra_title_res_id->0,String->account->abcde,String->result->abcde,
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
