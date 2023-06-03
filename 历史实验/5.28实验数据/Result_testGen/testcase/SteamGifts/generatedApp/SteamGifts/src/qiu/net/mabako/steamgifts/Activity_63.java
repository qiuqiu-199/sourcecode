package qiu.net.mabako.steamgifts;

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

public class Activity_63 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("net.mabako.steamgifts","net.mabako.steamgifts.activities.WriteCommentActivity");
		intent.setComponent(cn);
		intent.putExtra("title", "!@#$%^ds:+_");
		intent.putExtra("giveaway", "abcde");
		intent.putExtra("xsrf", "abcde");
		MySerializable parent = new MySerializable();
		intent.putExtra("parent", parent);
		MySerializable comment = new MySerializable();
		intent.putExtra("comment", comment);
		intent.putExtra("path", "abcde");
		startActivity(intent);
		//null;;null;;null;;null;;String->path->abcde,Serializable->comment->SerializableObj,Serializable->parent->SerializableObj,String->xsrf->abcde,String->giveaway->abcde,String->title->!@#$%^ds:+_,
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
