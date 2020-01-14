package xyz.xdxn.asktao;

import android.content.*;
import android.os.*;
import android.support.v4.app.*;
import android.view.*;
import android.widget.*;
import java.sql.*;
import java.util.*;

import android.support.v4.app.Fragment;


public class Fragment3 extends Fragment
{
    private TextView tv1;
    private GlobalVariable global;
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
            if (code == 3)
            {
                switch (type)
                {
                    case "MSG"://消息提示
                        Toast.makeText(getActivity(), data, Toast.LENGTH_SHORT).show();
                        break;
                    case "DATA"://数据处理
                        tv1.setText(data);
                        break;
                    case "EXEC"://执行
                        getUserList();
                        break;
                }
                global.getLoadingDialog().dismiss();
            }
        }
	};	

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        View rootView = inflater.inflate(R.layout.fragment_all, container, false);
        global = (GlobalVariable)getActivity().getApplicationContext();
        intentFilter = new IntentFilter();
        intentFilter.addAction(getString(R.string.homepage));
        global.getLBM().registerReceiver(mbr, intentFilter);

        tv1 = (TextView)rootView.findViewById(R.id.tv1);
        tv1.setOnClickListener(new View.OnClickListener(){
                @Override
                public void onClick(View p1)
                { 

                }
            });
		return rootView;
	}

    public void getUserList()
    {// 获取用户列表
        if (falg = global.getMysqlStatus())
        {
            global.getLoadingDialog().show();
            new Thread(new Runnable() {
                    @Override
                    public void run()
                    {
                        try
                        {
                            String sql = "SELECT * FROM `accounts` LIMIT 0, 1000";
                            //String sql = "SELECT * FROM `accounts` WHERE `name` = '" + account + "' LIMIT 0, 1000";
                            ResultSet rs = global.getStmt().executeQuery(sql);
                            HashMap<String,Integer> map = new HashMap<String,Integer>();
                            while (rs.next())
                            {
                                map.put(rs.getString("name"), rs.getInt("id"));
                            }
                            global.sendBroadMsg(3, "DATA", map.toString(), false);
                        }
                        catch (Exception e)
                        {
                            global.sendBroadMsg(3, "MSG", "错误：" + e.toString(), false);
                        }
                    }
                }).start();
        }
    }


	@Override
	public void onDestroy()
    {
		super.onDestroy();
        // Toast.makeText(getActivity(), "onDestroy", Toast.LENGTH_SHORT).show();
	}

	@Override
	public void onPause()
    {
		super.onPause();
        //  Toast.makeText(getActivity(), "onPause", Toast.LENGTH_SHORT).show();
	}

	@Override
	public void onResume()
    {
		super.onResume();
        //  Toast.makeText(getActivity(), "onResume", Toast.LENGTH_SHORT).show();
	}

	@Override
	public void onStart()
    {
		super.onStart();
        //    Toast.makeText(getActivity(), "onStart", Toast.LENGTH_SHORT).show();
	}

	@Override
	public void onStop()
    {
		super.onStop();
        //   Toast.makeText(getActivity(), "onStop", Toast.LENGTH_SHORT).show();
	}
}
