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

public class Activity_153 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.fsck.k9","com.fsck.k9.activity.setup.FolderSettings");
		intent.setComponent(cn);
		intent.putExtra("com.fsck.k9.account", "999999999999999999999999999999999999999999999999999");
		MySerializable com_dot_fsck_dot_k9_dot_folderName = new MySerializable();
		intent.putExtra("com.fsck.k9.folderName", com_dot_fsck_dot_k9_dot_folderName);
		startActivity(intent);
		//null;;null;;null;;null;;Serializable->com.fsck.k9.folderName->SerializableObj,String->com.fsck.k9.account->999999999999999999999999999999999999999999999999999,
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
