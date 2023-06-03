package qiu.com.forrestguice.suntimeswidget;

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

public class Activity_21 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.forrestguice.suntimeswidget","com.forrestguice.suntimeswidget.themes.WidgetThemeListActivity");
		intent.setComponent(cn);
		intent.setData(Uri.parse("notEmpty"));
		intent.putExtra("previewID", 0);
		intent.putExtra("name", "abcde");
		intent.putExtra("useWallpaper", false);
		intent.putExtra("noselect", false);
		intent.putExtra("selected", "abcde");
		startActivity(intent);
		//null;;null;;notEmpty;;null;;String->selected->abcde,boolean->noselect->false,boolean->useWallpaper->false,String->name->abcde,int->previewID->0,
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
