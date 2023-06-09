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

public class Activity_7 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.fsck.k9","com.fsck.k9.activity.ChooseFolder");
		intent.setComponent(cn);
		intent.putExtra("com.fsck.k9.ChooseFolder_showDisplayableOnly", "!@#$%^ds:+_");
		intent.putExtra("com.fsck.k9.ChooseFolder_account", "!@#$%^ds:+_");
		startActivity(intent);
		//null;;null;;null;;null;;String->com.fsck.k9.ChooseFolder_account->!@#$%^ds:+_,String->com.fsck.k9.ChooseFolder_showDisplayableOnly->!@#$%^ds:+_,
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
