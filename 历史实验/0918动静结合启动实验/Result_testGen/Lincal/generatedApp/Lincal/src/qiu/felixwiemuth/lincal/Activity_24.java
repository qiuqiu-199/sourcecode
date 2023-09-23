package qiu.felixwiemuth.lincal;

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

public class Activity_24 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("felixwiemuth.lincal","felixwiemuth.lincal.ui.CalendarViewActivity");
		intent.setComponent(cn);
		intent.putExtra("felixwiemuth.lincal.CalendarListActivity.EXTRA_ARG_CALENDAR_POS", 0);
		startActivity(intent);
		//null;;null;;null;;null;;int->felixwiemuth.lincal.CalendarListActivity.EXTRA_ARG_CALENDAR_POS->0,
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
