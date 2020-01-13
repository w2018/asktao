package xyz.xdxn.asktao;
/*
* 全局变量类
*/
import android.app.*;
import android.content.*;

public class GlobalVariable extends Application
{
    private String b;
    private SharedPreferences share;
    
    public SharedPreferences getShare()
    {
        return this.share;
    }
    
    public void setB(String c)
    {
        this.b = c;
    }
    
    @Override
    public void onCreate()
    {
        super.onCreate();
        share = getSharedPreferences("dbconfig", MODE_PRIVATE);
        
    }
}
