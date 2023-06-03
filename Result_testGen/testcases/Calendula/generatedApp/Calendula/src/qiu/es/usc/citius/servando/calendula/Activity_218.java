package qiu.es.usc.citius.servando.calendula;

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

public class Activity_218 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("es.usc.citius.servando.calendula","es.usc.citius.servando.calendula.activities.ScanActivity");
		intent.setComponent(cn);
		byte[] SCAN_RESULT_BYTE_SEGMENTS_0 = new byte[1];
		intent.putExtra("SCAN_RESULT_BYTE_SEGMENTS_0", SCAN_RESULT_BYTE_SEGMENTS_0);
		intent.putExtra("SCAN_RESULT_IMAGE_PATH", "abcde");
		intent.putExtra("after_scan_pkg", "!@#$%^ds:+_");
		intent.putExtra("SCAN_RESULT_ERROR_CORRECTION_LEVEL", "abcde");
		byte[] SCAN_RESULT_BYTES = new byte[1];
		intent.putExtra("SCAN_RESULT_BYTES", SCAN_RESULT_BYTES);
		intent.putExtra("after_scan_cls", "!@#$%^ds:+_");
		intent.putExtra("SCAN_RESULT_ORIENTATION", Integer.MAX_VALUE);
		intent.putExtra("SCAN_RESULT", "abcde");
		intent.putExtra("SCAN_RESULT_FORMAT", "!@#$%^ds:+_");
		startActivity(intent);
		//null;;null;;null;;null;;String->SCAN_RESULT_FORMAT->!@#$%^ds:+_,String->SCAN_RESULT->abcde,int->SCAN_RESULT_ORIENTATION->Integer.MAX_VALUE,String->after_scan_cls->!@#$%^ds:+_,byteArray->SCAN_RESULT_BYTES->Byte.MAX_VALUE,String->SCAN_RESULT_ERROR_CORRECTION_LEVEL->abcde,String->after_scan_pkg->!@#$%^ds:+_,String->SCAN_RESULT_IMAGE_PATH->abcde,byteArray->SCAN_RESULT_BYTE_SEGMENTS_0->0,
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
