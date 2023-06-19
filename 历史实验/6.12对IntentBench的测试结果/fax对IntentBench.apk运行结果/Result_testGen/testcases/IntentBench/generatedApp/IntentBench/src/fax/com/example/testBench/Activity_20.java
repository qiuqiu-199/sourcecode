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

public class Activity_20 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.example.testBench","com.example.testBench.extra.ExtraParce");
		intent.setComponent(cn);
		ArrayList  parce_arr_list = new ArrayList<MyParcelable>();
		parce_arr_list.add(new MyParcelable());
		intent.putParcelableArrayListExtra("parce_arr_list", parce_arr_list);
		Parcelable[] parce_arr = new MyParcelable[1];
		parce_arr[0] = new MyParcelable();
		intent.putExtra("parce_arr", parce_arr);
		Parcelable parce = new MyParcelable();
		intent.putExtra("parce", parce);
		startActivity(intent);
		//null;;null;;null;;null;;Parcelable->parce->ParcelableObj,ParcelableArray->parce_arr->ParcelableArrayObj,ParcelableArrayList->parce_arr_list->ParcelableArrayListObj,
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
