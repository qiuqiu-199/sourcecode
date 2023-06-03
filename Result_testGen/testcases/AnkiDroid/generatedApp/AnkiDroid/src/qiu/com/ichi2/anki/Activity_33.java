package qiu.com.ichi2.anki;

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

public class Activity_33 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.ichi2.anki","com.ichi2.anki.multimediacard.activity.MultimediaEditFieldActivity");
		intent.setComponent(cn);
		intent.putExtra("multim.card.ed.extra.field.index", Integer.MAX_VALUE);
		MySerializable multim_dot_card_dot_ed_dot_extra_dot_whole_dot_note = new MySerializable();
		intent.putExtra("multim.card.ed.extra.whole.note", multim_dot_card_dot_ed_dot_extra_dot_whole_dot_note);
		MySerializable multim_dot_card_dot_ed_dot_extra_dot_field = new MySerializable();
		intent.putExtra("multim.card.ed.extra.field", multim_dot_card_dot_ed_dot_extra_dot_field);
		startActivity(intent);
		//null;;null;;null;;null;;Serializable->multim.card.ed.extra.field->SerializableObj,Serializable->multim.card.ed.extra.whole.note->SerializableObj,int->multim.card.ed.extra.field.index->Integer.MAX_VALUE,
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
