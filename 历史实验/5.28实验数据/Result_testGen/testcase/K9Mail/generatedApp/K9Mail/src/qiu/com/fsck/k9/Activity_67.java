package qiu.com.fsck.k9;

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

public class Activity_67 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.fsck.k9","com.fsck.k9.activity.MessageList");
		intent.setComponent(cn);
		intent.setAction("android.intent.action.SEARCH");
		intent.setData(Uri.parse("notEmpty"));
		intent.putExtra("account", "999999999999999999999999999999999999999999999999999");
		Parcelable error = new MyParcelable();
		intent.putExtra("error", error);
		intent.putExtra("no_threading", false);
		Parcelable intent1 = new MyParcelable();
		intent.putExtra("intent", intent);
		intent.putExtra("com.fsck.k9.search_folder", "!@#$%^ds:+_");
		intent.putExtra("query", "abcde");
		Parcelable decryption = new MyParcelable();
		intent.putExtra("decryption", decryption);
		Parcelable insecure_detail_intent = new MyParcelable();
		intent.putExtra("insecure_detail_intent", insecure_detail_intent);
		intent.putExtra("folder", "abcde");
		byte[] search_bytes = new byte[1];
		intent.putExtra("search_bytes", search_bytes);
		intent.putExtra("result_code", 0);
		intent.putExtra("special_folder", "!@#$%^ds:+_");
		Parcelable signature = new MyParcelable();
		intent.putExtra("signature", signature);
		intent.putExtra("app_data", "app_data");
		intent.putExtra("override_crypto_warning", true);
		intent.putExtra("com.fsck.k9.search_account", "abcde");
		startActivity(intent);
		//android.intent.action.SEARCH;;null;;notEmpty;;null;;String->com.fsck.k9.search_account->abcde,boolean->override_crypto_warning->true,Bundle->app_data->BundleObj,Parcelable->signature->ParcelableObj,String->special_folder->!@#$%^ds:+_,int->result_code->0,byteArray->search_bytes->Byte.MAX_VALUE,String->folder->abcde,Parcelable->insecure_detail_intent->ParcelableObj,Parcelable->decryption->ParcelableObj,String->query->abcde,String->com.fsck.k9.search_folder->!@#$%^ds:+_,Parcelable->intent->ParcelableObj,boolean->no_threading->false,Parcelable->error->ParcelableObj,String->account->999999999999999999999999999999999999999999999999999,
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
