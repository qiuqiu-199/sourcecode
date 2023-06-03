package qiu.eu.siacs.conversations;

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

public class Activity_96 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("eu.siacs.conversations","com.theartofdev.edmodo.cropper.CropImageActivity");
		intent.setComponent(cn);
		intent.putExtra("CROP_IMAGE_EXTRA_BUNDLE", "CROP_IMAGE_EXTRA_BUNDLE");
		Parcelable CROP_IMAGE_EXTRA_OPTIONS = new MyParcelable();
		intent.putExtra("CROP_IMAGE_EXTRA_OPTIONS", CROP_IMAGE_EXTRA_OPTIONS);
		Parcelable CROP_IMAGE_EXTRA_SOURCE = new MyParcelable();
		intent.putExtra("CROP_IMAGE_EXTRA_SOURCE", CROP_IMAGE_EXTRA_SOURCE);
		startActivity(intent);
		//null;;null;;null;;null;;Parcelable->CROP_IMAGE_EXTRA_SOURCE->ParcelableObj,Parcelable->CROP_IMAGE_EXTRA_OPTIONS->ParcelableObj,Bundle->CROP_IMAGE_EXTRA_BUNDLE->BundleObj,
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
