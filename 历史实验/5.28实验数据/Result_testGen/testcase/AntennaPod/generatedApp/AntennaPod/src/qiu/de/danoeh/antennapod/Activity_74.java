package qiu.de.danoeh.antennapod;

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

public class Activity_74 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("de.danoeh.antennapod","de.danoeh.antennapod.activity.gpoddernet.GpodnetAuthenticationActivity");
		intent.setComponent(cn);
		intent.setAction(".activity.gpoddernet.GpodnetAuthenticationActivity");
		intent.addCategory("android.intent.category.DEFAULT");
		startActivity(intent);
		//.activity.gpoddernet.GpodnetAuthenticationActivity;;android.intent.category.DEFAULT;;null;;null;;
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
