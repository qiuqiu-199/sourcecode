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

public class Activity_18 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("net.mabako.steamgifts","net.mabako.steamgifts.activities.DetailActivity");
		intent.setComponent(cn);
		MySerializable giveaway = new MySerializable();
		intent.putExtra("giveaway", giveaway);
		MySerializable discussion = new MySerializable();
		intent.putExtra("discussion", discussion);
		MySerializable notifications = new MySerializable();
		intent.putExtra("notifications", notifications);
		MySerializable whitelist = new MySerializable();
		intent.putExtra("whitelist", whitelist);
		intent.putExtra("user", "abcde");
		MySerializable uuid = new MySerializable();
		intent.putExtra("uuid", uuid);
		MySerializable edited = new MySerializable();
		intent.putExtra("edited", edited);
		intent.putExtra("close", "!@#$%^ds:+_");
		MySerializable comment = new MySerializable();
		intent.putExtra("comment", comment);
		intent.putExtra("entered", false);
		startActivity(intent);
		//null;;null;;null;;null;;boolean->entered->false,Serializable->comment->SerializableObj,String->close->!@#$%^ds:+_,Serializable->edited->SerializableObj,Serializable->uuid->SerializableObj,String->user->abcde,Serializable->whitelist->SerializableObj,Serializable->notifications->SerializableObj,Serializable->discussion->SerializableObj,Serializable->giveaway->SerializableObj,
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
