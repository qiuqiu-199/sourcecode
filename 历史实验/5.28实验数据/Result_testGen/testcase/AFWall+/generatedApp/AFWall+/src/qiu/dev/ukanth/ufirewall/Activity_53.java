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

public class Activity_53 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("dev.ukanth.ufirewall","haibison.android.lockpattern.LockPatternActivity");
		intent.setComponent(cn);
		intent.setAction("haibison.android.lockpattern.LockPatternActivity.VERIFY_CAPTCHA");
		ArrayList  haibison_dot_android_dot_lockpattern_dot_LockPatternActivity_dot_PATTERN = new ArrayList<MyParcelable>();
		haibison_dot_android_dot_lockpattern_dot_LockPatternActivity_dot_PATTERN.add(new MyParcelable());
		intent.putParcelableArrayListExtra("haibison.android.lockpattern.LockPatternActivity.PATTERN", haibison_dot_android_dot_lockpattern_dot_LockPatternActivity_dot_PATTERN);
		Parcelable haibison_dot_android_dot_lockpattern_dot_LockPatternActivity_dot_RESULT_RECEIVER = new MyParcelable();
		intent.putExtra("haibison.android.lockpattern.LockPatternActivity.RESULT_RECEIVER", haibison_dot_android_dot_lockpattern_dot_LockPatternActivity_dot_RESULT_RECEIVER);
		Parcelable haibison_dot_android_dot_lockpattern_dot_LockPatternActivity_dot_PENDING_INTENT_CANCELLED = new MyParcelable();
		intent.putExtra("haibison.android.lockpattern.LockPatternActivity.PENDING_INTENT_CANCELLED", haibison_dot_android_dot_lockpattern_dot_LockPatternActivity_dot_PENDING_INTENT_CANCELLED);
		Parcelable haibison_dot_android_dot_lockpattern_dot_LockPatternActivity_dot_PENDING_INTENT_FORGOT_PATTERN = new MyParcelable();
		intent.putExtra("haibison.android.lockpattern.LockPatternActivity.PENDING_INTENT_FORGOT_PATTERN", haibison_dot_android_dot_lockpattern_dot_LockPatternActivity_dot_PENDING_INTENT_FORGOT_PATTERN);
		startActivity(intent);
		//haibison.android.lockpattern.LockPatternActivity.VERIFY_CAPTCHA;;null;;null;;null;;Parcelable->haibison.android.lockpattern.LockPatternActivity.PENDING_INTENT_FORGOT_PATTERN->ParcelableObj,Parcelable->haibison.android.lockpattern.LockPatternActivity.PENDING_INTENT_CANCELLED->ParcelableObj,Parcelable->haibison.android.lockpattern.LockPatternActivity.RESULT_RECEIVER->ParcelableObj,ParcelableArrayList->haibison.android.lockpattern.LockPatternActivity.PATTERN->ParcelableArrayListObj,
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
