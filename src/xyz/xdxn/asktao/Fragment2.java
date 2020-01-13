package xyz.xdxn.asktao;


import android.os.*;
import android.support.v4.app.*;
import android.view.*;
import android.widget.*;


public class Fragment2 extends Fragment
{
	private Button btn_db_connect ;
	private TextView edit_db_host, edit_db_port, edit_db_name, edit_db_user, edit_db_pass;

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        View rootView = inflater.inflate(R.layout.fragment2, container, false);
        final GlobalVariable global = (GlobalVariable)getActivity().getApplicationContext();
        //final GlobalVariable global=(GlobalVariable)getActivity().getApplication();
    
        edit_db_host = (TextView)rootView.findViewById(R.id.edit_db_host);
        edit_db_port = (TextView)rootView.findViewById(R.id.edit_db_port);
        edit_db_name = (TextView)rootView.findViewById(R.id.edit_db_name);
        edit_db_user = (TextView)rootView.findViewById(R.id.edit_db_user);
        edit_db_pass = (TextView)rootView.findViewById(R.id.edit_db_pass);
       
        edit_db_host.setText(global.getShare().getString("db_host", "127.0.0.1"));
        edit_db_port.setText(global.getShare().getString("db_port", "3306"));
        edit_db_name.setText(global.getShare().getString("db_name", "gserver"));
        edit_db_user.setText(global.getShare().getString("db_user", "root"));
        edit_db_pass.setText(global.getShare().getString("db_pass", "123456"));
        
        btn_db_connect  = (Button)rootView.findViewById(R.id.btn_db_connect);
        btn_db_connect .setOnClickListener(new View.OnClickListener(){
                @Override
                public void onClick(View p1)
                { 
                    global.getShare().edit().putString("db_host", edit_db_host.getText().toString().trim()).commit();
                    global.getShare().edit().putString("db_port", edit_db_port.getText().toString().trim()).commit();
                    global.getShare().edit().putString("db_name", edit_db_name.getText().toString().trim()).commit();
                    global.getShare().edit().putString("db_user", edit_db_user.getText().toString().trim()).commit();
                    global.getShare().edit().putString("db_pass", edit_db_pass.getText().toString().trim()).commit();
                    global.getShare().edit().apply();
                    
                    Toast.makeText(getActivity(), "连接中", Toast.LENGTH_LONG).show();
                }
            });
		return rootView;
	}

	@Override
	public void onDestroy()
    {
		super.onDestroy();
	}

	@Override
	public void onPause()
    {
		super.onPause();
	}

	@Override
	public void onResume()
    {
		super.onResume();
	}

	@Override
	public void onStart()
    {
		super.onStart();
	}

	@Override
	public void onStop()
    {
		super.onStop();
	}

}
