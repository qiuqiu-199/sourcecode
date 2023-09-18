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

public class Activity_28 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.fsck.k9","com.fsck.k9.activity.MessageList");
		intent.setComponent(cn);
		intent.setAction("shortcut");
		intent.setData(Uri.parse("mSheme:mAuthority/?"));
		Bundle app_data = new Bundle();
		app_data.putString("com.fsck.k9.search_folder", "abcde");
		app_data = new Bundle();
		app_data.putString("com.fsck.k9.search_account", "abcde");
		intent.putExtra("account", "abcde");
		Parcelable error = new MyParcelable();
		intent.putExtra("error", error);
		Parcelable intent1 = new MyParcelable();
		intent.putExtra("intent", intent);
		Parcelable decryption = new MyParcelable();
		intent.putExtra("decryption", decryption);
		Parcelable insecure_detail_intent = new MyParcelable();
		intent.putExtra("insecure_detail_intent", insecure_detail_intent);
		intent.putExtra("no_threading", true);
		intent.putExtra("app_data", app_data);
		intent.putExtra("folder", "abcde");
		byte[] search_bytes = new byte[]{5,0,0,0,73,0,78,0,66,0,79,0,88,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,36,0,0,0,57,0,53,0,54,0,55,0,51,0,48,0,56,0,98,0,45,0,52,0,57,0,48,0,98,0,45,0,52,0,55,0,51,0,101,0,45,0,56,0,100,0,50,0,98,0,45,0,99,0,53,0,50,0,101,0,98,0,49,0,54,0,53,0,100,0,99,0,49,0,98,0,0,0,0,0,37,0,0,0,99,0,111,0,109,0,46,0,102,0,115,0,99,0,107,0,46,0,107,0,57,0,46,0,115,0,101,0,97,0,114,0,99,0,104,0,46,0,67,0,111,0,110,0,100,0,105,0,116,0,105,0,111,0,110,0,115,0,84,0,114,0,101,0,101,0,78,0,111,0,100,0,101,0,0,0,2,0,0,0,54,0,0,0,99,0,111,0,109,0,46,0,102,0,115,0,99,0,107,0,46,0,107,0,57,0,46,0,115,0,101,0,97,0,114,0,99,0,104,0,46,0,83,0,101,0,97,0,114,0,99,0,104,0,83,0,112,0,101,0,99,0,105,0,102,0,105,0,99,0,97,0,116,0,105,0,111,0,110,0,36,0,83,0,101,0,97,0,114,0,99,0,104,0,67,0,111,0,110,0,100,0,105,0,116,0,105,0,111,0,110,0,0,0,0,0,5,0,0,0,73,0,78,0,66,0,79,0,88,0,0,0,2,0,0,0,7,0,0,0,-1,-1,-1,-1,-1,-1,-1,-1};
		intent.putExtra("search_bytes", search_bytes);
		intent.putExtra("result_code", 0);
		intent.putExtra("special_folder", "abcde");
		Parcelable signature = new MyParcelable();
		intent.putExtra("signature", signature);
		intent.putExtra("override_crypto_warning", false);
		startActivity(intent);
		//shortcut;;null;;mSheme:mAuthority/?;;null;;boolean->override_crypto_warning->false,Parcelable->signature->ParcelableObj,String->special_folder->abcde,int->result_code->0,byteArray->search_bytes->[5:0:0:0:73:0:78:0:66:0:79:0:88:0:0:0:0:0:0:0:0:0:0:0:1:0:0:0:36:0:0:0:57:0:53:0:54:0:55:0:51:0:48:0:56:0:98:0:45:0:52:0:57:0:48:0:98:0:45:0:52:0:55:0:51:0:101:0:45:0:56:0:100:0:50:0:98:0:45:0:99:0:53:0:50:0:101:0:98:0:49:0:54:0:53:0:100:0:99:0:49:0:98:0:0:0:0:0:37:0:0:0:99:0:111:0:109:0:46:0:102:0:115:0:99:0:107:0:46:0:107:0:57:0:46:0:115:0:101:0:97:0:114:0:99:0:104:0:46:0:67:0:111:0:110:0:100:0:105:0:116:0:105:0:111:0:110:0:115:0:84:0:114:0:101:0:101:0:78:0:111:0:100:0:101:0:0:0:2:0:0:0:54:0:0:0:99:0:111:0:109:0:46:0:102:0:115:0:99:0:107:0:46:0:107:0:57:0:46:0:115:0:101:0:97:0:114:0:99:0:104:0:46:0:83:0:101:0:97:0:114:0:99:0:104:0:83:0:112:0:101:0:99:0:105:0:102:0:105:0:99:0:97:0:116:0:105:0:111:0:110:0:36:0:83:0:101:0:97:0:114:0:99:0:104:0:67:0:111:0:110:0:100:0:105:0:116:0:105:0:111:0:110:0:0:0:0:0:5:0:0:0:73:0:78:0:66:0:79:0:88:0:0:0:2:0:0:0:7:0:0:0:-1:-1:-1:-1:-1:-1:-1:-1],String->folder->abcde,Bundle->app_data->BundleObj,(,String->com.fsck.k9.search_account->abcde,String->com.fsck.k9.search_folder->abcde,),boolean->no_threading->true,Parcelable->insecure_detail_intent->ParcelableObj,Parcelable->decryption->ParcelableObj,String->query->null,Parcelable->intent->ParcelableObj,String->message_reference->null,Parcelable->error->ParcelableObj,String->account->abcde,
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
