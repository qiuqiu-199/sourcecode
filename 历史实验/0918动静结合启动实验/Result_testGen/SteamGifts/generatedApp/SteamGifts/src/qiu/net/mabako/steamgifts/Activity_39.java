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

public class Activity_39 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("net.mabako.steamgifts","net.mabako.steamgifts.activities.MainActivity");
		intent.setComponent(cn);
		intent.putExtra("no", false);
		MySerializable type = new MySerializable();
		intent.putExtra("type", type);
		startActivity(intent);
		//null;;null;;null;;null;;String->query->null,Serializable->type->SerializableObj,boolean->no->false,
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
