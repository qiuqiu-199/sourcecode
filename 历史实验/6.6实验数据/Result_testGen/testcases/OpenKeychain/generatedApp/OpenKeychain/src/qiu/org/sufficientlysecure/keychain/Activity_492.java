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

public class Activity_492 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.sufficientlysecure.keychain","edu.cmu.cylab.starslinger.exchange.VerifyActivity");
		intent.setComponent(cn);
		byte[] FlagHash = new byte[1];
		intent.putExtra("FlagHash", FlagHash);
		intent.putExtra("RandomPosition", 0);
		intent.putExtra("NumUsers", 0);
		byte[] DecoyHash1 = new byte[1];
		intent.putExtra("DecoyHash1", DecoyHash1);
		byte[] DecoyHash2 = new byte[1];
		intent.putExtra("DecoyHash2", DecoyHash2);
		startActivity(intent);
		//null;;null;;null;;null;;byteArray->DecoyHash2->Byte.MAX_VALUE,byteArray->DecoyHash1->0,int->NumUsers->0,int->RandomPosition->0,byteArray->FlagHash->0,
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
