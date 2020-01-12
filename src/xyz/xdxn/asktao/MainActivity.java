package xyz.xdxn.asktao;

import android.app.*;
import android.content.*;
import android.os.*;
import android.util.*;
import android.view.*;
import android.widget.*;
import java.io.*;

public class MainActivity extends Activity
{

    SharedPreferences share;
    Button bt_con;

    @Override
    public void onCreate(Bundle savedInstanceState)
	{
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        share = getSharedPreferences("dbconfig", MODE_PRIVATE);
        startApp();
        bt_con = (Button)this.findViewById(R.id.startcon);
        bt_con.setOnClickListener(new View.OnClickListener(){

                @Override
                public void onClick(View p1)
                {

                }
            });

    }


    private void startApp()
    {

        LinearLayout linear = new LinearLayout(this);
        linear.setOrientation(LinearLayout.VERTICAL);
        final EditText edit_db_host = new EditText(this);
        final EditText edit_db_port = new EditText(this);
        final EditText edit_db_name = new EditText(this);
        final EditText edit_db_user = new EditText(this);
        final EditText edit_db_pass = new EditText(this);

        edit_db_host.setHint(R.string.db_host);
        edit_db_port.setHint(R.string.db_port);
        edit_db_name.setHint(R.string.db_name);
        edit_db_user.setHint(R.string.db_user);
        edit_db_pass.setHint(R.string.db_pass);

        edit_db_host.setText(share.getString("db_host", "127.0.0.1"));
        edit_db_port.setText(share.getString("db_port", "3306"));
        edit_db_name.setText(share.getString("db_name", "gserver"));
        edit_db_user.setText(share.getString("db_user", "root"));
        edit_db_pass.setText(share.getString("db_pass", "123456"));

        linear.addView(edit_db_host);
        linear.addView(edit_db_port);
        linear.addView(edit_db_name);
        linear.addView(edit_db_user);
        linear.addView(edit_db_pass);

        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setView(linear);
        builder.setTitle(R.string.db_title);
        builder.setCancelable(true);
        builder.setNegativeButton(R.string.db_empty,
            new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialog, int which)
                {
                    new File("/data/data/" + MainActivity.this.getPackageName() + "/shared_prefs/dbconfig.xml").delete();
                    Toast.makeText(MainActivity.this, getString(R.string.string_00), Toast.LENGTH_LONG).show();
                    System.exit(0);
                }
            });
        builder.setPositiveButton(R.string.db_connect,
            new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialog, int which)
                {
                    share.edit().putString("db_host", edit_db_host.getText().toString().trim()).commit();
                    share.edit().putString("db_port", edit_db_port.getText().toString().trim()).commit();
                    share.edit().putString("db_name", edit_db_name.getText().toString().trim()).commit();
                    share.edit().putString("db_user", edit_db_user.getText().toString().trim()).commit();
                    share.edit().putString("db_pass", edit_db_pass.getText().toString().trim()).commit();
                    share.edit().apply();
                    Toast.makeText(MainActivity.this, getString(R.string.string_01), Toast.LENGTH_LONG).show();
                }
            });
        builder.show();

    }
    
    @Override
    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(R.menu.main, menu);
        return super.onCreateOptionsMenu(menu);
    }
    
    @Override
    public boolean onOptionsItemSelected(MenuItem item)
    {
        switch (item.getItemId())
        {
            case R.id.action_about:
                AlertDialog.Builder builder = new AlertDialog.Builder(this);
                builder.setTitle(getString(R.string.item_about_title));
               // builder.setIcon(R.drawable.launcher_icon_min);
                builder.setMessage(getString(R.string.item_about_msg));
                builder.show();
                break;
        }
        return super.onOptionsItemSelected(item);
    }

}
