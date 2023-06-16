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

public class Activity_87 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("eu.siacs.conversations","eu.siacs.conversations.ui.ConversationsActivity");
		intent.setComponent(cn);
		intent.setAction("android.intent.action.SEND_MULTIPLE");
		intent.putExtra("conversationUuid", "abcde");
		ArrayList<String> android_dot_intent_dot_extra_dot_STREAM = new ArrayList<String>();
		intent.putExtra("android.intent.extra.STREAM", android_dot_intent_dot_extra_dot_STREAM);
		startActivity(intent);
		//android.intent.action.SEND_MULTIPLE;;null;;null;;null;;ArrayList->android.intent.extra.STREAM->ArrayListObj,String->conversationUuid->abcde,
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
