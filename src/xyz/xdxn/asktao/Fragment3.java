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
    private ListView listview;
    List<Map<String, Object>> list_data;
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

                        /*
                         List<Map<String, Object>> list_data = new ArrayList<Map<String, Object>>();
                         Map<String, Object> item = new HashMap<String, Object>();
                         item.put("image", R.drawable.ic_launcher);
                         item.put("user", "6");
                         item.put("regtime",  "2020");
                         list_data.add(item);
                         */
                        SimpleAdapter simpleAdapter = new SimpleAdapter(global.getContext(), list_data, R.layout.listview_main_item, new String[] { "image", "user", "regtime", "account_id"}, new int[] { R.id.image, R.id.user, R.id.regtime, R.id.account_id});
                        listview.setAdapter(simpleAdapter);
                        global.getLoadingDialog().dismiss();
                        break;
                    case "EXEC"://执行
                        listview.setAdapter(null);
                        global.getLoadingDialog().show();
                        getUserList();
                        break;
                }
            }
        }
	};	

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        View rootView = inflater.inflate(R.layout.fragment3, container, false);
        global = (GlobalVariable)getActivity().getApplicationContext();
        intentFilter = new IntentFilter();
        intentFilter.addAction(getString(R.string.homepage));
        global.getLBM().registerReceiver(mbr, intentFilter);
        listview = (ListView)rootView.findViewById(R.id.listView);
		return rootView;
	}

    public void getUserList()
    {// 获取用户列表
        if (falg = global.getMysqlStatus())
        {
            new Thread(new Runnable() {
                    @Override
                    public void run()
                    {
                        try
                        {
                            String sql = "SELECT * FROM `characters` LIMIT 0, 5000";
                            //String sql = "SELECT * FROM `accounts` WHERE `name` = '" + account + "' LIMIT 0, 1000";
                            ResultSet rs = global.getStmt().executeQuery(sql);
                            list_data = new ArrayList<Map<String, Object>>();
                            while (rs.next())
                            {
                                HashMap<String,Object> map = new HashMap<String,Object>();
                                String update_time = rs.getString("update_time");
                                if (Calendar.getInstance().getTimeInMillis() - global.getTimeLong(update_time) < 1000)
                                {
                                    map.put("image", R.drawable.online); //在线
                                }
                                else
                                {
                                    map.put("image", R.drawable.offline); //离线
                                }
                                map.put("user", rs.getString("name")); //游戏名称
                                map.put("regtime", rs.getString("add_time"));//创建时间
                                map.put("account_id", rs.getInt("account_id"));//用户ID
                                map.put("data", rs.getString("data"));//人物json数据
                                list_data.add(map);
                            }
                            global.sendBroadMsg(3, "DATA", null, false);

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
