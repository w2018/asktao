package xyz.xdxn.asktao;

import android.app.*;
import android.content.*;
import android.os.*;
import android.support.v4.app.*;
import android.view.*;
import android.view.ContextMenu.*;
import android.widget.*;
import android.widget.AdapterView.*;
import java.sql.*;
import java.util.*;
import org.apache.commons.codec.binary.*;
import org.json.*;

import android.support.v4.app.Fragment;


public class Fragment3 extends Fragment implements AdapterView.OnItemClickListener,AdapterView.OnItemLongClickListener
{
    private ListView listview;
    private List<Map<String, Object>> list_data;
    private GlobalVariable global;
    private IntentFilter intentFilter;
    private boolean falg = false;
    private String uname,jmstr;
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
        arg0.setHeaderTitle("人物离线后操作(约2~3分钟)");
        arg0.add(0, 0, 0, "修改属性");
        arg0.add(0, 1, 0, "生成秘钥");
        arg0.add(0, 2, 0, "充值元宝");
        arg0.add(0, 3, 0, "修改密码");
        arg0.add(0, 4, 0, "封停角色");
        arg0.add(0, 5, 0, "删除账号");
    }

    @Override
    public boolean onContextItemSelected(MenuItem item) 
    {// 响应Item长按菜单事件处理
        AdapterContextMenuInfo info = (AdapterContextMenuInfo)item.getMenuInfo();//获取点击的item的id
        final int id = (int)info.id; 
        uname = list_data.get(id).get("user").toString();
        switch (item.getItemId())
        {
            case 0:
                Toast.makeText(getActivity(), getString(R.string.encoding), 0).show();
                break;
            case 1:
                final JSONObject json = new JSONObject();
                final String randcode = "C" + (new Random().nextInt(5000) + 1000);
                LinearLayout qx_view = (LinearLayout) getActivity().getLayoutInflater().inflate(R.layout.authorize_setting, null);
                final EditText edit_qx_my = (EditText) qx_view.findViewById(R.id.edit_qx_my);
                CheckBox checkbox_ggk = (CheckBox)qx_view.findViewById(R.id.checkbox_ggk);//观光
                checkbox_ggk.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(){ 
                        @Override 
                        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked)
                        { 
                            try
                            {
                                json.put("ggk", isChecked);
                            }
                            catch (JSONException e)
                            {}
                        } 
                    });
                CheckBox checkbox_czyb = (CheckBox)qx_view.findViewById(R.id.checkbox_czyb);//充值元宝
                checkbox_czyb.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(){ 
                        @Override 
                        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked)
                        { 
                            try
                            {
                                json.put("czyb", isChecked);
                            }
                            catch (JSONException e)
                            {}
                        } 
                    });
                CheckBox checkbox_fscw = (CheckBox)qx_view.findViewById(R.id.checkbox_fscw);//发送宠物
                checkbox_fscw.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(){ 
                        @Override 
                        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked)
                        { 
                            try
                            {
                                json.put("facw", isChecked);
                            }
                            catch (JSONException e)
                            {}
                        } 
                    });
                CheckBox checkbox_fszb = (CheckBox)qx_view.findViewById(R.id.checkbox_fszb);//发送装备
                checkbox_fszb.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(){ 
                        @Override 
                        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked)
                        { 
                            try
                            {
                                json.put("fszb", isChecked);
                            }
                            catch (JSONException e)
                            {}
                        } 
                    });
                CheckBox checkbox_sczh = (CheckBox)qx_view.findViewById(R.id.checkbox_sczh);//删除账号
                checkbox_sczh.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(){ 
                        @Override 
                        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked)
                        { 
                            try
                            {
                                json.put("sczh", isChecked);
                            }
                            catch (JSONException e)
                            {} 
                        } 
                    });
                CheckBox checkbox_xgsx = (CheckBox)qx_view.findViewById(R.id.checkbox_xgsx);//修改属性
                checkbox_xgsx.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(){ 
                        @Override 
                        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked)
                        { 
                            try
                            {
                                json.put("xgsx", isChecked);
                            }
                            catch (JSONException e)
                            {} 
                        } 
                    });
                CheckBox checkbox_root = (CheckBox)qx_view.findViewById(R.id.checkbox_root);//设置管理员
                checkbox_root.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(){ 
                        @Override 
                        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked)
                        { 
                            try
                            {
                                json.put("root", isChecked);
                            }
                            catch (JSONException e)
                            {} 
                        } 
                    });
                Button btn_qx_sc = (Button) qx_view.findViewById(R.id.btn_qx_xg);
                btn_qx_sc.setOnClickListener(new View.OnClickListener(){
                        @Override
                        public void onClick(View p1)
                        { 
                            try
                            {
                                json.put("user_name", list_data.get(id).get("user").toString());//人物名称
                                json.put("user_id", Integer.parseInt(list_data.get(id).get("id").toString()));//人物ID
                                json.put("db_host", global.getShare().getString("db_host", "127.0.0.1"));
                                json.put("db_port", global.getShare().getString("db_port", "3306"));
                                json.put("db_name", global.getShare().getString("db_name", "gserver"));
                                json.put("db_user", global.getShare().getString("db_user", "root"));
                                json.put("db_pass", global.getShare().getString("db_pass", "123456"));
                                jmstr = global.xdxn(json.toString());//异或运算加密
                                // jmstr = new String(Base64.encodeBase64(jmstr.getBytes()));//base64加密
                                jmstr = global.str2HexStr(jmstr);
                                jmstr = randcode + jmstr;
                            }
                            catch (JSONException e)
                            {}    
                            edit_qx_my.setText(jmstr);
                        }
                    });
                setView(qx_view, "秘钥配置", "拿去浪吧～");
                break;
            case 2:
                //加载布局
                LinearLayout cz_view = (LinearLayout) getActivity().getLayoutInflater().inflate(R.layout.cz_coin, null);
                final EditText edit_cz_coin = (EditText) cz_view.findViewById(R.id.edit_cz_coin);
                Button btn_cz_coin = (Button) cz_view.findViewById(R.id.btn_cz_coin);
                btn_cz_coin.setOnClickListener(new View.OnClickListener(){
                        @Override
                        public void onClick(View p1)
                        { 
                            mInsertCoin(Integer.parseInt(list_data.get(id).get("account_id").toString()), Integer.parseInt(edit_cz_coin.getText().toString().trim()));
                        }
                    });
                setView(cz_view, "元宝充值（一叶之秋处领取）", "欢迎继续充值～");
                break;
            case 3:
                //加载布局
                LinearLayout gm_view = (LinearLayout) getActivity().getLayoutInflater().inflate(R.layout.gm_user, null);
                final EditText edit_gm_passwd = (EditText) gm_view.findViewById(R.id.edit_gm_passwd);
                final EditText edit_gm_key = (EditText) gm_view.findViewById(R.id.edit_gm_key);
                Button btn_gm_user = (Button) gm_view.findViewById(R.id.btn_gm_user);
                btn_gm_user.setOnClickListener(new View.OnClickListener(){
                        @Override
                        public void onClick(View p1)
                        { 
                            if (edit_gm_passwd.getText().toString().trim().length() > 1 && edit_gm_key.getText().toString().trim().length() > 1)
                            {
                                mUpdatePassWorld(Integer.parseInt(list_data.get(id).get("account_id").toString()), edit_gm_passwd.getText().toString().trim(), edit_gm_key.getText().toString().trim());
                            }
                        }
                    });
                setView(gm_view, "修改密码(所属账号密码)", "别又忘记了～");
                break;
            case 4:
                //加载布局
                LinearLayout fh_view = (LinearLayout) getActivity().getLayoutInflater().inflate(R.layout.fh_user, null);
                TextView text_fh_zt = (TextView) fh_view.findViewById(R.id.text_fh_zt);
                text_fh_zt.setText(Integer.parseInt(list_data.get(id).get("deleted").toString()) == 0 ? "正常": "已封号");
                Button btn_fh_on = (Button) fh_view.findViewById(R.id.btn_fh_on);
                btn_fh_on.setOnClickListener(new View.OnClickListener(){
                        @Override
                        public void onClick(View p1)
                        { //封号
                            mUpdateDeleted(Integer.parseInt(list_data.get(id).get("id").toString()), 1);
                        }
                    });
                Button btn_fh_off = (Button) fh_view.findViewById(R.id.btn_fh_off);
                btn_fh_off.setOnClickListener(new View.OnClickListener(){
                        @Override
                        public void onClick(View p1)
                        { //解封
                            mUpdateDeleted(Integer.parseInt(list_data.get(id).get("id").toString()), 0);
                        }
                    });
                setView(fh_view, "角色封停（只封人物角色）", "再看看还有谁做了坏事～");
                break;
            case 5:
                //加载布局
                final int code = (int) (Math.random() * (9999 - 1000) + 1000);//确认码
                //final int code = (int) (Math.random() * (999999999 - 100000000) + 100000000);//确认码
                LinearLayout sc_view = (LinearLayout) getActivity().getLayoutInflater().inflate(R.layout.sc_user, null);
                final TextView text_sc_code = (TextView) sc_view.findViewById(R.id.text_code);
                text_sc_code.setText(code + "");
                final EditText edit_sc_code = (EditText) sc_view.findViewById(R.id.edit_sc_code);
                Button btn_sc_dq = (Button) sc_view.findViewById(R.id.btn_sc_dq);
                btn_sc_dq.setOnClickListener(new View.OnClickListener(){
                        @Override
                        public void onClick(View p1)
                        {// 删除当前游戏人物
                            try
                            {
                                if (Integer.parseInt(edit_sc_code.getText().toString()) == code)
                                {
                                    mDeleteUserData(Integer.parseInt(list_data.get(id).get("account_id").toString()), Integer.parseInt(list_data.get(id).get("id").toString()), false);
                                }
                                else
                                {
                                    global.sendBroadMsg(3, "MSG", "输入不正确", false);
                                }
                            }
                            catch (NumberFormatException e)
                            {}
                        }
                    });
                Button btn_sc_all = (Button) sc_view.findViewById(R.id.btn_sc_all);
                btn_sc_all.setOnClickListener(new View.OnClickListener(){
                        @Override
                        public void onClick(View p1)
                        {// 删除账户（所有游戏人物）
                            try
                            {
                                if (Integer.parseInt(edit_sc_code.getText().toString()) == code)
                                {
                                    mDeleteUserData(Integer.parseInt(list_data.get(id).get("account_id").toString()), Integer.parseInt(list_data.get(id).get("id").toString()), true);
                                }
                                else
                                {
                                    global.sendBroadMsg(3, "MSG", "输入不正确", false);
                                }
                            }
                            catch (NumberFormatException e)
                            {}
                        }
                    });
                setView(sc_view, "删除账号（该操作不可逆）", "这得多大仇呀～");
                break;
        }

        return super.onContextItemSelected(item);
    }

    public void  mUpdatePassWorld(final int id, final String passwd, final String key)
    {//修改密码、超级密码
        if (falg = global.getMysqlStatus())
        {
            new Thread(new Runnable() {
                    @Override
                    public void run()
                    {
                        try
                        {
                            String fh_sql = "UPDATE `accounts` SET `keyword` = '" + key + "', `password` = '" + passwd + "' WHERE `accounts`.`id` =" + id;
                            int result = global.getStmt().executeUpdate(fh_sql);
                            if (result > 0)
                            {
                                global.sendBroadMsg(3, "MSG", "修改成功！", false);
                            }
                            else
                            {
                                global.sendBroadMsg(3, "MSG", "修改失败！", false);
                            }
                        }
                        catch (Exception e)
                        {    
                            global.sendBroadMsg(3, "MSG", "操作失败，请检查网络状况！", false);
                        }
                    }
                }).start();
        }
    }

    public void  mUpdateDeleted(final int id, final int deleted)
    {//封号  1封、0不封
        if (falg = global.getMysqlStatus())
        {
            new Thread(new Runnable() {
                    @Override
                    public void run()
                    {
                        try
                        {
                            String fh_sql = "UPDATE `characters` SET `deleted` = '" + deleted + "' WHERE `characters`.`id` =" + id;
                            int result = global.getStmt().executeUpdate(fh_sql);
                            if (result > 0)
                            {
                                global.sendBroadMsg(3, "MSG", deleted == 1 ? "封号成功！": "解封成功！", false);
                            }
                            else
                            {
                                global.sendBroadMsg(3, "MSG", deleted == 1 ? "封号失败！": "解封失败！", false);
                            }
                        }
                        catch (Exception e)
                        {    
                            global.sendBroadMsg(3, "MSG", "操作失败，请检查网络状况！", false);
                        }
                    }
                }).start();
        }
    }

    public void mDeleteUserData(final int account_id, final int id, final boolean all)
    {// 删除账号
        if (falg = global.getMysqlStatus())
        {
            new Thread(new Runnable() {
                    @Override
                    public void run()
                    {
                        try
                        {
                            String[] sql_dq = {"DELETE FROM `characters` WHERE `characters`.`id` =" + id};
                            String[] sql_all = {"DELETE FROM `accounts` WHERE `accounts`.`id` =" + account_id, "DELETE FROM `characters` WHERE `characters`.`id` =" + id};
                            for (String sql : all ? sql_all : sql_dq)
                            {
                                int result = global.getStmt().executeUpdate(sql);
                                if (result > 0)
                                {
                                    global.sendBroadMsg(3, "MSG", "成功删除账号！", false);
                                }
                                else
                                {
                                    global.sendBroadMsg(3, "MSG", "删除失败 或 账号不存在！", false);
                                }
                            }
                        }
                        catch (Exception e)
                        {
                            global.sendBroadMsg(3, "MSG", "删除失败！" + e.toString(), false);
                        }
                    }
                }).start();
        }
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

    public void setView(View view, String title, final String msg)
    {// 设置view
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setTitle(uname + "：" + title);
        builder.setView(view);
        builder.setCancelable(false);
        builder.setPositiveButton("返回",
            new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which)
                {
                    Toast.makeText(getActivity(), msg, Toast.LENGTH_SHORT).show();
                }
            });
        builder.show();
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
                            String sql = "";
                            if (global.isKey())
                            {
                                JSONObject json = new JSONObject(global.getQXJSON());
                                sql = "SELECT * FROM `characters` WHERE `id` = " + json.getInt("user_id");
                            }
                            else
                            {
                                sql = "SELECT * FROM `characters` LIMIT 0, 5000";
                                //String sql = "SELECT * FROM `accounts` WHERE `name` = '" + account + "' LIMIT 0, 1000";
                            }
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
                                map.put("id", rs.getInt("id"));//当前角色ID
                                map.put("data", rs.getString("data"));//人物json数据
                                map.put("update_time", update_time);//最近登陆时间
                                map.put("deleted", rs.getString("deleted"));//封号
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
