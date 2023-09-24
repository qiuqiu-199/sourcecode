package qiu.dev.ukanth.ufirewall;

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

public class Activity_67 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("dev.ukanth.ufirewall","dev.ukanth.ufirewall.plugin.LocaleEdit");
		intent.setComponent(cn);
		Bundle com_dot_twofortyfouram_dot_locale_dot_intent_dot_extra_dot_BUNDLE1 = new Bundle();
		com_dot_twofortyfouram_dot_locale_dot_intent_dot_extra_dot_BUNDLE1.putString("dev.ukanth.ufirewall.plugin.APPLY_PROFILE", "abcde");
		com_dot_twofortyfouram_dot_locale_dot_intent_dot_extra_dot_BUNDLE1 = new Bundle();
		intent.putExtra("com.twofortyfouram.locale.intent.extra.BUNDLE1", com_dot_twofortyfouram_dot_locale_dot_intent_dot_extra_dot_BUNDLE1);
		intent.putExtra("com.twofortyfouram.locale.intent.extra.BUNDLE1", com_dot_twofortyfouram_dot_locale_dot_intent_dot_extra_dot_BUNDLE1);
		startActivity(intent);
		//null;;null;;null;;null;;Bundle->com.twofortyfouram.locale.intent.extra.BUNDLE1->BundleObj,(,String->dev.ukanth.ufirewall.plugin.APPLY_PROFILE->abcde,),Bundle->com.twofortyfouram.locale.intent.extra.BUNDLE1->BundleObj,(,),
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
