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

public class Activity_133 extends Activity
{
	public void launch(){
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		ComponentName cn=new ComponentName("com.ichi2.anki","com.ichi2.anki.CardBrowser");
		intent.setComponent(cn);
		intent.putExtra("selectedDeck", 0);
		intent.putExtra("defaultDeckId", 0);
		intent.putExtra("currentCard", 0);
		startActivity(intent);
		//null;;null;;null;;null;;long->currentCard->0,long->defaultDeckId->0,long->selectedDeck->0,
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