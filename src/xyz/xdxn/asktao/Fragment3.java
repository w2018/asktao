package xyz.xdxn.asktao;

import android.content.*;
import android.os.*;
import android.support.v4.app.*;
import android.view.*;
import android.widget.*;
import java.sql.*;
import java.util.*;

import android.support.v4.app.Fragment;


public class Fragment3 extends Fragment implements AdapterView.OnItemClickListener,AdapterView.OnItemLongClickListener
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
                listview.setAdapter(null);
                global.getLoadingDialog().dismiss();
                switch (type)
                {
                    case "MSG"://消息提示
                        Toast.makeText(getActivity(), data, Toast.LENGTH_LONG).show();
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
                        SimpleAdapter simpleAdapter = new SimpleAdapter(global.getContext(), list_data, R.layout.listview_main_item, new String[] { "image", "user", "regtime", "account_id", "update_time"}, new int[] { R.id.image, R.id.user, R.id.regtime, R.id.account_id, R.id.update_time});
                        listview.setAdapter(simpleAdapter);
                        break;
                    case "EXEC"://执行
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
        listview.setOnItemClickListener(this);//点击事件
        listview.setOnItemLongClickListener(this);//长按事件
		return rootView;
	}

    @Override
    public void onItemClick(AdapterView<?> parent, View view, final int position, long id)
    {// 点击获Item取属性
        
        Toast.makeText(getActivity(), list_data.get(position).get("user").toString(), 0).show();
        
    }
    
    @Override
    public boolean onItemLongClick(AdapterView<?> parent, View view, int position, long id)
    {// 长按获Item取属性
        global.setJsonData(list_data.get(position).get("data").toString());
        getActivity().setTitle(getString(R.string.app_title) + " 〔已选定：" + list_data.get(position).get("user") + "〕");
        
        return false;
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
                                map.put("update_time", update_time);//最近登陆时间
                                list_data.add(map);

                                Collections.sort(list_data, new Comparator<Map<String, Object>>() {

                                        @Override
                                        public int compare(Map<String, Object> map1, Map<String, Object> map2)
                                        {
                                            long lo1 = global.getTimeLong(map1.get("update_time").toString());
                                            long lo2 = global.getTimeLong(map2.get("update_time").toString());
                                            int diff = (int)(lo2 - lo1);
                                            if (diff > 0)
                                            {
                                                return 1;
                                            }
                                            else if (diff < 0)
                                            {
                                                return -1;
                                            }
                                            return 0; //相等为0
                                        }
                                    }); // 按最后上线时间排序
                            }
                            global.sendBroadMsg(3, "DATA", null, false);
                        }
                        catch (Exception e)
                        { 
                            global.sendBroadMsg(3, "MSG", getString(R.string.string_05), false);
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

class Online implements Comparable<Map<String, Object>>
{

// 排序接口

    private long update_time; // 最后上线时间

    public Online(Map<String, Object> map)
    {
        this.update_time = map.get("update_time");
    }

    public long getUpdatetime()
    {
        return update_time;
    }

    public void setUpdate_time(int update_time)
    {
        this.update_time = update_time;
    }

    @Override
    public String toString()
    {
        return "";
    }

    @Override
    public int compareTo(Map<String, Object> map)
    {//重写Comparable接口的compareTo方法，
        return (int)(this.update_time - this.getUpdatetime());
        // 根据最后上线时间升序排列，降序修改相减顺序即可
    }
}
