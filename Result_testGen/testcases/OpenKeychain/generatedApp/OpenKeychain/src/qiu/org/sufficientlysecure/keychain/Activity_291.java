package qiu.org.sufficientlysecure.keychain;

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

public class Activity_291 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.sufficientlysecure.keychain","edu.cmu.cylab.starslinger.exchange.ExchangeActivity");
		intent.setComponent(cn);
		intent.putExtra("GroupId", "!@#$%^ds:+_");
		intent.putExtra("NumUsers", 0);
		byte[] UserData = new byte[1];
		intent.putExtra("UserData", UserData);
		intent.putExtra("HostName", "abcde");
		startActivity(intent);
		//null;;null;;null;;null;;String->HostName->abcde,byteArray->UserData->Byte.MAX_VALUE,int->NumUsers->0,String->GroupId->!@#$%^ds:+_,
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
