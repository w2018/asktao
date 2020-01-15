package xyz.xdxn.asktao;

import android.app.*;
import android.os.*;
import android.content.*;
import android.support.v4.app.*;
import android.view.*;
import android.view.ContextMenu.*;
import android.widget.*;
import android.widget.AdapterView.*;
import java.sql.*;
import java.util.*;
import xyz.xdxn.asktao.*;

import android.support.v4.app.Fragment;


public class Fragment3 extends Fragment implements AdapterView.OnItemClickListener,AdapterView.OnItemLongClickListener
{
    private ListView listview;
    private List<Map<String, Object>> list_data;
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
                        listview.setAdapter(null);
                        SimpleAdapter simpleAdapter = new SimpleAdapter(global.getContext(), list_data, R.layout.listview_main_item, new String[] { "image", "user", "regtime", "account_id", "update_time"}, new int[] { R.id.image, R.id.user, R.id.regtime, R.id.account_id, R.id.update_time});
                        listview.setAdapter(simpleAdapter);
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
        listview.setOnItemClickListener(this);//点击事件
        listview.setOnItemLongClickListener(this);//长按事件
        listview.setOnCreateContextMenuListener(this);
		return rootView;
	}

    @Override
    public void onItemClick(AdapterView<?> parent, View view, final int position, long id)
    {// 点击获Item取属性
        Toast.makeText(getActivity(), getString(R.string.string_06), 0).show();
    }

    @Override
    public boolean onItemLongClick(AdapterView<?> parent, View view, int position, long id)
    {// 长按获Item取属性
        global.setJsonData(list_data.get(position).get("data").toString());
        getActivity().setTitle(getString(R.string.app_title) + " 〔已选定：" + list_data.get(position).get("user") + "〕");
        //global.setVibrator(20);
        return false;
    }

    @Override
    public void onCreateContextMenu(ContextMenu arg0, View arg1, ContextMenuInfo arg2) 
    {// 添加Item长按菜单
        arg0.setHeaderTitle("选择操作");
        arg0.add(0, 0, 0, "修改属性");
        arg0.add(0, 1, 0, "生成秘钥");
        arg0.add(0, 2, 0, "充值元宝");
        arg0.add(0, 3, 0, "修改密码");
        arg0.add(0, 4, 0, "封停账号");
        arg0.add(0, 5, 0, "删除账号");
    }

    @Override
    public boolean onContextItemSelected(MenuItem item) 
    {// 响应Item长按菜单事件处理
        AdapterContextMenuInfo info = (AdapterContextMenuInfo)item.getMenuInfo();//获取点击的item的id
        final int id = (int)info.id;  
        switch (item.getItemId())
        {
            case 0:
                Toast.makeText(getActivity(), getString(R.string.encoding), 0).show();
                break;
            case 1:

                break;
            case 2:
                //加载布局
                LinearLayout inputData = (LinearLayout) getActivity().getLayoutInflater().inflate(R.layout.cz_coin, null);
                final EditText edit_cz_coin = (EditText) inputData.findViewById(R.id.edit_cz_coin);
                Button btn_cz_coin = (Button) inputData.findViewById(R.id.btn_cz_coin);
                btn_cz_coin.setOnClickListener(new View.OnClickListener(){
                        @Override
                        public void onClick(View p1)
                        { 
                            mInsertCoin(Integer.parseInt(list_data.get(id).get("account_id").toString()),Integer.parseInt(edit_cz_coin.getText().toString().trim()));
                        }
                    });
                AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
                builder.setTitle("元宝充值（充值成功在一叶之秋处领取）");
                builder.setView(inputData);
                builder.setCancelable(false);
                builder.setPositiveButton("返回",
                    new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which)
                        {
                            Toast.makeText(getActivity(), "欢迎继续充值～", Toast.LENGTH_SHORT).show();
                        }
                    });
                builder.show();
                break;
            case 3:

                break;
            case 4:

                break;
            case 5:

                break;
        }

        return super.onContextItemSelected(item);
    }

    public void  mInsertCoin(final int id, final int coin)
    {//充值元宝
        if (falg = global.getMysqlStatus())
        {
            new Thread(new Runnable() {
                    @Override
                    public void run()
                    {
                        try
                        {
                            String name = null;
                            String cx_sql = "SELECT * FROM `accounts` WHERE `id` = '" + id + "' LIMIT 0, 10";
                            ResultSet rs = global.getStmt().executeQuery(cx_sql);
                            while (rs.next())
                            {
                                name = rs.getString("name");
                                int  code = (int) (Math.random() * (9999 - 1000) + 1000);
                                String sql = "INSERT INTO `charge` (`accountname`, `coin`, `state`, `add_time`, `update_time`, `deleted`, `money`, `code`)VALUES ('"
                                    + name + "', " + coin + ", 0, now(), now(), 0, 0, '" + code + "')";
                                int result = global.getStmt().executeUpdate(sql);
                                if (result > 0)
                                {
                                    String q_sql = "SELECT * FROM `charge` WHERE `accountname` = '" + name + "' AND `coin` = '"
                                        + coin + "' AND `code` = '" + code + "' LIMIT 0, 100";
                                    ResultSet q_rs = global.getStmt().executeQuery(q_sql);
                                    while (q_rs.next())
                                    {
                                        int addcion = q_rs.getInt("coin");
                                        String addname = q_rs.getString("accountname");
                                        global.sendBroadMsg(3, "MSG", "充值成功 | 用户: " + addname + " | 元宝数: " + addcion , false);
                                    }
                                }
                            }
                        }
                        catch (Exception e)
                        {    
                            global.sendBroadMsg(3, "MSG", "充值失败，请检查网络状况！", false);
                        }
                    }
                }).start();
        }
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
