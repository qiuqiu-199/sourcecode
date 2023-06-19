package fax.com.example.testBench;

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

public class Activity_70 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.example.testBench","com.example.testBench.extra.ExtraArray2");
		intent.setComponent(cn);
		CharSequence[] charseq_arr = new CharSequence[1];
		intent.putExtra("charseq_arr", charseq_arr);
		intent.putExtra("charseq", "999999999999999999999999999999999999999999999999999");
		ArrayList<String> str_arrlist = new ArrayList<String>();
		intent.putStringArrayListExtra("str_arrlist", str_arrlist);
		ArrayList<Integer> int_arrlist = new ArrayList<Integer>();
		intent.putIntegerArrayListExtra("int_arrlist", int_arrlist);
		byte[] bt_arr = new byte[1];
		intent.putExtra("bt_arr", bt_arr);
		ArrayList<CharSequence> charseq_arr_list = new ArrayList<CharSequence>();
		intent.putExtra("charseq_arr_list", charseq_arr_list);
		startActivity(intent);
		//null;;null;;null;;null;;CharSequenceArrayList->charseq_arr_list->abcde,byteArray->bt_arr->Byte.MAX_VALUE,IntegerArrayList->int_arrlist->0,StringArrayList->str_arrlist->!@#$%^ds:+_,CharSequence->charseq->999999999999999999999999999999999999999999999999999,CharSequenceArray->charseq_arr->!@#$%^ds:+_,
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
