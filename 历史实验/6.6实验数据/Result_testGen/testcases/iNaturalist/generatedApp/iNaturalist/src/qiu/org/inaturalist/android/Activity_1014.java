package qiu.org.inaturalist.android;

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

public class Activity_1014 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.ItemSearchActivity");
		intent.setComponent(cn);
		MySerializable result_viewer_activity = new MySerializable();
		intent.putExtra("result_viewer_activity", result_viewer_activity);
		intent.putExtra("new com.adobe.xmp.properties.XMPPropertyInfo", "!@#$%^ds:+_");
		intent.putExtra("return_result", false);
		intent.putExtra("result_viewer_activity_param_name", "999999999999999999999999999999999999999999999999999");
		intent.putExtra("search_url", "abcde");
		intent.putExtra("is_user", false);
		intent.putExtra("search_hint_text", "999999999999999999999999999999999999999999999999999");
		startActivity(intent);
		//null;;null;;null;;null;;String->search_hint_text->999999999999999999999999999999999999999999999999999,boolean->is_user->false,String->search_url->abcde,String->result_viewer_activity_param_name->999999999999999999999999999999999999999999999999999,boolean->return_result->false,String->new com.adobe.xmp.properties.XMPPropertyInfo->!@#$%^ds:+_,Serializable->result_viewer_activity->SerializableObj,
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
