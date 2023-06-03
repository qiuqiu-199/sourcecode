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

public class Activity_239 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("eu.siacs.conversations","eu.siacs.conversations.ui.ConversationsActivity");
		intent.setComponent(cn);
		intent.setAction("eu.siacs.conversations.action.VIEW");
		intent.putExtra("nick", "!@#$%^ds:+_");
		intent.putExtra("as_quote", false);
		intent.putExtra("pm", false);
		intent.putExtra("do_not_append", false);
		intent.putExtra("conversationUuid", "abcde");
		intent.putExtra("android.intent.extra.TEXT", "abcde");
		startActivity(intent);
		//eu.siacs.conversations.action.VIEW;;null;;null;;null;;String->android.intent.extra.TEXT->abcde,String->conversationUuid->abcde,boolean->do_not_append->false,boolean->pm->false,boolean->as_quote->false,String->nick->!@#$%^ds:+_,
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
