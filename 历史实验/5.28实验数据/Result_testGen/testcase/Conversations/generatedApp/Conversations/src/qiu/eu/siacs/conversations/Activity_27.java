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

public class Activity_27 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("eu.siacs.conversations","eu.siacs.conversations.ui.ContactDetailsActivity");
		intent.setComponent(cn);
		intent.setAction("view_contact");
		intent.putExtra("account", "!@#$%^ds:+_");
		intent.putExtra("fingerprint", "!@#$%^ds:+_");
		intent.putExtra("contact", "!@#$%^ds:+_");
		startActivity(intent);
		//view_contact;;null;;null;;null;;String->contact->!@#$%^ds:+_,String->fingerprint->!@#$%^ds:+_,String->account->!@#$%^ds:+_,
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
