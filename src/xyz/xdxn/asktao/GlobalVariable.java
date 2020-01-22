package xyz.xdxn.asktao;
/*
 * 全局变量类
 */
import android.app.*;
import android.content.*;
import android.os.*;
import android.support.v4.content.*;
import android.support.v4.view.*;
import com.mysql.jdbc.*;
import java.sql.*;
import java.text.*;

import com.mysql.jdbc.Connection;
import java.sql.Statement;
import org.json.*;

public class GlobalVariable extends Application
{
    //数据库连接
    private Connection conn = null;
    private Statement stmt = null;
    private boolean status = false;
    //data解析
    private String Jdata = null;
    private String[] allowArr;
    private SharedPreferences share;
    //广播类
    private LocalBroadcastManager localBroadcastManager;
    //控件类
    private ViewPager viewPage;
    private LoadingDialog loadingDialog;
    //应用类
    private Context context;
    private boolean falg = false;
    private boolean iskey = false;
    private String qx_json = null;
    @Override
    public void onCreate()
    {
        super.onCreate();
        this.share = getSharedPreferences("dbconfig", MODE_PRIVATE);
        this.localBroadcastManager = this.localBroadcastManager.getInstance(this);
    }

    public void setContext(Context con)
    {
        this.context = con;
    }

    public Context getContext()
    {
        return this.context;
    }

    public void setVibrator(int time)
    {// 调用振动
        Vibrator vibrator = (Vibrator)this.getSystemService(this.VIBRATOR_SERVICE);
        vibrator.vibrate(time);
    }

    public Long getTimeLong(String time) 
    {// 转换成时间戳
        Long longTime = ;
        try
        {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            longTime = sdf.parse(time).getTime();
        }
        catch (ParseException e)
        {
            e.printStackTrace();
        }
        return longTime;
    }

    public void setLoadingDialog(LoadingDialog ld)
    {// 设置LoadingDialog
        this.loadingDialog = ld;
    }

    public LoadingDialog getLoadingDialog()
    {// LoadingDialog
        return this.loadingDialog;
    }

    public void sendBroadMsg(int code, String type, String data, boolean falg)
    {// 发送本地广播 
        // code {1,2,3,4,2,6,7} 对应 {"发现", "数据库配置", "用户列表", "人物属性", "发送宠物", "发送装备","开发工具" }
        Intent intent = new Intent(getString(R.string.homepage));
        intent.putExtra("code", code);
        intent.putExtra("type", type);//类型-> 提示：MSG，数据：DATA，执行：EXEC，...
        intent.putExtra("data", data);
        intent.putExtra("falg", falg);
        this.localBroadcastManager.sendBroadcast(intent);
    }

    public LocalBroadcastManager getLBM()
    {// 本地广播
        return this.localBroadcastManager;
    }

    public void setViewPager(ViewPager vp)
    {// 设置视图控件
        this.viewPage = vp;
    }

    public ViewPager getViewPager()
    {// 得到视图控件
        return this.viewPage;
    }

    public SharedPreferences getShare()
    {// 获取配置属性
        return this.share;
    }

    public void setAllowArr(String[] arr)
    {// 设置允许功能
        this.allowArr = arr;
    }

    public String[] getAllowArr()
    {// 获取允许功能
        return this.allowArr;
    }

    public boolean isKey()
    {// 是否秘钥登陆
        return this.iskey;
    }
    
    public String getQXJSON()
    {
        return this.qx_json;
    }
    
    public void ConnectionMysql(final String host, final String port, final String dbname, final String user, final String pass, final String key, final boolean is_key)
    {// 数据库连接（线程中操作网络）

        new Thread(new Runnable() {
                @Override
                public void run()
                {
                    try
                    {
                        if (is_key)
                        {
                            qx_json = xdxn(hexStr2Str(key));
                            JSONObject json = new JSONObject(qx_json);
                            iskey = is_key;
                            String dburl = "jdbc:mysql://" + json.getString("db_host") + ":" + json.getString("db_port") + "/" + json.getString("db_name");
                            Class.forName("com.mysql.jdbc.Driver");
                            conn = (Connection) DriverManager.getConnection(dburl, json.getString("db_user"), json.getString("db_pass"));
                            share.edit().putString("key", key).commit();
                            share.edit().apply();
                        }
                        else
                        {
                            iskey = is_key;
                            String dburl = "jdbc:mysql://" + host + ":" + port + "/" + dbname;
                            Class.forName("com.mysql.jdbc.Driver");
                            conn = (Connection) DriverManager.getConnection(dburl, user, pass);
                            share.edit().putString("db_host", host).commit();
                            share.edit().putString("db_port", port).commit();
                            share.edit().putString("db_name", dbname).commit();
                            share.edit().putString("db_user", user).commit();
                            share.edit().putString("db_pass", pass).commit();
                            share.edit().apply();
                        }
                        status = true;
                        falg = true;
                        sendBroadMsg(2, "MSG", getString(R.string.string_04), true);
                        new Thread(new IsStatus()).start();
                    }
                    catch (Exception e)
                    {
                        status = false;
                        try
                        {
                            Thread.sleep(5000);
                        }
                        catch (InterruptedException e1)
                        {}
                        sendBroadMsg(2, "MSG", getString(R.string.string_02), false);
                    }
                }
            }).start();

    }

    public Connection getConn() throws Exception
    {// 获取数据库连接信息
        return this.conn;
    }

    public Statement getStmt() throws Exception
    {// 数据库操作接口
        if (this.conn != null)
            return this.stmt = this.conn.createStatement();
        return null;
    }

    public boolean getMysqlStatus()
    {// 数据库连接状态
        return this.status;
    }

    public void closeMysql()
    {// 关闭数据库
        try
        {
            if (this.stmt != null)
                this.stmt.close();
            if (this.conn != null)
                this.conn.close();
        }
        catch (Exception e)
        {}
        this.falg = false;
        this.status = false;
        sendBroadMsg(2, "MSG", getString(R.string.db_status_error), false);
    }

    public void setJsonData(String json)
    {// 设置选中人物属性json
        this.Jdata = json;
    }

    public String getJsonData()
    {// 获取选中人物属性json
        return this.Jdata;
    }

    public String xdxn(String str)
    {// 字符加解密，对每个数组元素进行异或运算
        char[] array=str.toCharArray();
        for (int i = 0; i < array.length; i++)
        {
            array[i] = (char)(array[i] ^ 21992);
        }
        return new String(array);
    }

    public static String str2HexStr(String str)  
    {// 字符串转换成十六进制字符串
        char[] chars = "0123456789ABCDEF".toCharArray();    
        StringBuilder sb = new StringBuilder("");  
        byte[] bs = str.getBytes();    
        int bit;    

        for (int i = 0; i < bs.length; i++)  
        {    
            bit = (bs[i] & 0x0f0) >> 4;    
            sb.append(chars[bit]);    
            bit = bs[i] & 0x0f;    
            sb.append(chars[bit]);  
        }    
        return sb.toString().trim();    
    }  

    public static String hexStr2Str(String hexStr)  
    {// 十六进制转换字符串
        String str = "0123456789ABCDEF";    
        char[] hexs = hexStr.toCharArray();    
        byte[] bytes = new byte[hexStr.length() / 2];    
        int n;    

        for (int i = 0; i < bytes.length; i++)  
        {    
            n = str.indexOf(hexs[2 * i]) * 16;    
            n += str.indexOf(hexs[2 * i + 1]);    
            bytes[i] = (byte) (n & 0xff);    
        }    
        return new String(bytes);    
    }  

    class IsStatus implements Runnable
    {// 检测数据连接状态

        @Override
        public void run()
        {
            while (status)
            {
                try
                {
                    Thread.sleep(5000);
                    if (!conn.isValid(5000))
                    { //如果数据库关闭了
                        if (falg)
                            sendBroadMsg(2, "RECONNECT", getString(R.string.db_status_reconnection), false);
                        status = false;
                    }
                }
                catch (Exception e)
                {}
            }
        }
    }
}
