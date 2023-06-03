package qiu.com.integreight.onesheeld;

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
		ComponentName cn=new ComponentName("com.integreight.onesheeld","com.integreight.onesheeld.plugin.action.ActionActivity");
		intent.setComponent(cn);
		intent.putExtra("com.integreight.onesheeld.extra.PIN_NUMBER", 0);
		intent.putExtra("com.twofortyfouram.locale.intent.extra.BUNDLE", "com_dot_twofortyfouram_dot_locale_dot_intent_dot_extra_dot_BUNDLE");
		intent.putExtra("com.integreight.onesheeld.extra.OUTPUT", true);
		intent.putExtra("com.twofortyfouram.locale.intent.extra.BREADCRUMB", "999999999999999999999999999999999999999999999999999");
		startActivity(intent);
		//null;;null;;null;;null;;String->com.twofortyfouram.locale.intent.extra.BREADCRUMB->999999999999999999999999999999999999999999999999999,boolean->com.integreight.onesheeld.extra.OUTPUT->true,Bundle->com.twofortyfouram.locale.intent.extra.BUNDLE->BundleObj,int->com.integreight.onesheeld.extra.PIN_NUMBER->0,
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
