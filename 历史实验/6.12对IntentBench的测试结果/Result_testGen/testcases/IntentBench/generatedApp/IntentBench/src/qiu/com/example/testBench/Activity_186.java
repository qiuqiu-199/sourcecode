package qiu.com.example.testBench;

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

public class Activity_186 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.example.testBench","com.example.testBench.extra.ExtraArray");
		intent.setComponent(cn);
		short[] short_arr = new short[1];
		intent.putExtra("short_arr", short_arr);
		float[] float_arr = new float[1];
		intent.putExtra("float_arr", float_arr);
		long[] long_arr = new long[1];
		intent.putExtra("long_arr", long_arr);
		double[] double_arr = new double[1];
		intent.putExtra("double_arr", double_arr);
		int[] int_arr = new int[1];
		intent.putExtra("int_arr", int_arr);
		boolean[] bool_arr = new boolean[1];
		intent.putExtra("bool_arr", bool_arr);
		String[] str_arr = new String[1];
		intent.putExtra("str_arr", str_arr);
		startActivity(intent);
		//null;;null;;null;;null;;StringArray->str_arr->abcde,booleanArray->bool_arr->true,intArray->int_arr->0,doubleArray->double_arr->0.0,longArray->long_arr->0,floatArray->float_arr->0.0,shortArray->short_arr->0.0,
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
