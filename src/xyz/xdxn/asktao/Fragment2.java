package xyz.xdxn.asktao;

import android.content.*;
import android.graphics.*;
import android.os.*;
import android.support.v4.app.*;
import android.view.*;
import android.widget.*;
import org.json.*;

public class Fragment2 extends Fragment
{
    private GlobalVariable global;
	private Button btn_db_connect ;
	private EditText edit_db_host, edit_db_port, edit_db_name, edit_db_user, edit_db_pass, edit_user_key;
    private TextView connectStatus;
    private IntentFilter intentFilter;
    private boolean falg = false;
    protected BroadcastReceiver mbr = new BroadcastReceiver(){
        @Override
        public void onReceive(Context context, Intent intent)
        {
            int code = intent.getIntExtra("code", 0);
            String type = intent.getStringExtra("type");
            String data = intent.getStringExtra("data");
            falg = intent.getBooleanExtra("falg", false);
            falg = global.getMysqlStatus();
            if (code == 2)
            {
                global.getLoadingDialog().dismiss();
                switch (type)
                {
                    case "MSG":
                        Toast.makeText(getActivity(), data, Toast.LENGTH_SHORT).show();
                        break;
                    case "DATA":
                        edit_user_key.setText(data);
                        break;
                    case "RECONNECT":
                        if (!falg)
                        {
                            Toast.makeText(getActivity(), data, Toast.LENGTH_SHORT).show();
                            getActivity().setTitle("人物属性修改 安卓版！@小打小闹");
                            global.getViewPager().setCurrentItem(1); 
                            Connect();
                        }
                        break;
                }
                btn_db_connect.setText(falg ? getString(R.string.db_close) : getString(R.string.db_connect));
                connectStatus.setText(falg ? getString(R.string.db_status_success) : getString(R.string.db_status_error));
                connectStatus.setTextColor(falg ? Color.BLUE : Color.RED);
                if (falg)
                {
                    global.getViewPager().setCurrentItem(2); //连接成功跳转到 用户列表页
                    global.sendBroadMsg(3, "EXEC", null, false);
                }
            }
        }
	};	

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        View rootView = inflater.inflate(R.layout.fragment2, container, false);
        global = (GlobalVariable)getActivity().getApplicationContext();
        intentFilter = new IntentFilter();
        intentFilter.addAction(getString(R.string.homepage));
        global.getLBM().registerReceiver(mbr, intentFilter);

        edit_db_host = (EditText)rootView.findViewById(R.id.edit_db_host);
        edit_db_port = (EditText)rootView.findViewById(R.id.edit_db_port);
        edit_db_name = (EditText)rootView.findViewById(R.id.edit_db_name);
        edit_db_user = (EditText)rootView.findViewById(R.id.edit_db_user);
        edit_db_pass = (EditText)rootView.findViewById(R.id.edit_db_pass);
        edit_user_key = (EditText)rootView.findViewById(R.id.edit_user_key);
        connectStatus = (TextView)rootView.findViewById(R.id.ConnectStatus);

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
                    if (falg)
                    {
                        global.closeMysql();
                    }
                    else
                    {
                        Connect();
                    }
                }
            });
		return rootView;
	}

    public void Connect()
    {// 连接数据库
        global.ConnectionMysql(edit_db_host.getText().toString().trim(), edit_db_port.getText().toString().trim(), edit_db_name.getText().toString().trim(), edit_db_user.getText().toString().trim(), edit_db_pass.getText().toString().trim());
        connectStatus.setText(getString(R.string.db_status_connect));
        global.getLoadingDialog().show();
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
 
