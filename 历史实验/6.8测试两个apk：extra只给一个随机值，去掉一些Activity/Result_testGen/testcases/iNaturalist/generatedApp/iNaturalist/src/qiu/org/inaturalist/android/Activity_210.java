package qiu.org.inaturalist.android;

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

public class Activity_210 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("org.inaturalist.android","org.inaturalist.android.GuideTaxonActivity");
		intent.setComponent(cn);
		MySerializable taxon = new MySerializable();
		intent.putExtra("taxon", taxon);
		intent.putExtra("guide_xml_filename", "abcde");
		intent.putExtra("new com.adobe.xmp.properties.XMPPropertyInfo", "abcde");
		intent.putExtra("guide_id", "abcde");
		intent.putExtra("guide_taxon", false);
		intent.putExtra("taxon_id", "abcde");
		intent.putExtra("show_add", false);
		MySerializable taxon_result = new MySerializable();
		intent.putExtra("taxon_result", taxon_result);
		intent.putExtra("download_taxon", false);
		startActivity(intent);
		//null;;null;;null;;null;;boolean->download_taxon->false,Serializable->taxon_result->SerializableObj,boolean->show_add->false,String->taxon_id->abcde,boolean->guide_taxon->false,String->guide_id->abcde,String->new com.adobe.xmp.properties.XMPPropertyInfo->abcde,String->guide_xml_filename->abcde,Serializable->taxon->SerializableObj,
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
