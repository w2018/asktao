package xyz.xdxn.asktao;

import android.*;
import android.content.*;
import android.os.*;
import android.support.v4.app.*;
import android.view.*;
import android.widget.*;
import org.apache.commons.codec.binary.*;

public class Fragment7 extends Fragment
{
    private EditText tv,tv2,edit_jjm;
    private Button btn_jjm,btn_jh,btn_64jm,btn_64jiem,btn_32jm,btn_32jiem;
    private StringBuffer sgb = null;
    private GlobalVariable global;
    private IntentFilter intentFilter;
    protected BroadcastReceiver mbr = new BroadcastReceiver(){
        @Override
        public void onReceive(Context context, Intent intent)
        {
            int code = intent.getIntExtra("code", 0);
            String type = intent.getStringExtra("type");
            String data = intent.getStringExtra("data");
            if (code == 7)
            {
                global.getLoadingDialog().dismiss();
                switch (type)
                {
                    case "MSG"://消息提示
                        sgb.append(data + "\n");
                        tv.setText(sgb.toString());
                        break;
                    case "DATA"://数据处理

                        break;
                }
            }
        }
    };  

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        View rootView = inflater.inflate(R.layout.fragment7, container, false);//关键布局文件
        edit_jjm = (EditText) rootView.findViewById(R.id.edit_jjm);
        btn_jjm = (Button) rootView.findViewById(R.id.btn_jjm);
        btn_jh = (Button) rootView.findViewById(R.id.btn_jh);
        btn_64jm = (Button) rootView.findViewById(R.id.btn_64jm);
        btn_64jiem = (Button) rootView.findViewById(R.id.btn_64_jiem);
        btn_32jm = (Button) rootView.findViewById(R.id.btn_32jm);
        btn_32jiem = (Button) rootView.findViewById(R.id.btn_32jiem);
        tv = (EditText) rootView.findViewById(R.id.tv1);
        tv2 = (EditText) rootView.findViewById(R.id.tv2);
        sgb = new StringBuffer();
        intentFilter = new IntentFilter();
        intentFilter.addAction(getString(R.string.homepage));
        global = (GlobalVariable)getActivity().getApplicationContext();
        global.getLBM().registerReceiver(mbr, intentFilter);
        btn_jjm.setOnClickListener(new View.OnClickListener(){
                @Override
                public void onClick(View p1)
                { //异或运算
                    tv.setText(xdxn(edit_jjm.getText().toString()));
                }
            }); 
        btn_jh.setOnClickListener(new View.OnClickListener(){
                @Override
                public void onClick(View p1)
                { //上线交换
                    edit_jjm.setText(tv.getText().toString());
                }
            }); 
        btn_64jm.setOnClickListener(new View.OnClickListener(){
                @Override
                public void onClick(View p1)
                { //base64 加密
                    try
                    {
                        tv.setText(new String(Base64.encodeBase64((tv.getText().toString().getBytes()))));
                    }
                    catch (Exception e)
                    {
                        Toast.makeText(getActivity(), e.toString(), 0).show();
                    }
                }
            }); 
        btn_64jiem.setOnClickListener(new View.OnClickListener(){
                @Override
                public void onClick(View p1)
                { //base64 解密
                    try
                    {
                        tv.setText(new String(Base64.decodeBase64((tv.getText().toString().getBytes()))));
                    }
                    catch (Exception e)
                    {
                        Toast.makeText(getActivity(), e.toString(), 0).show();
                    }
                }
            }); 
        btn_32jm.setOnClickListener(new View.OnClickListener(){
                @Override
                public void onClick(View p1)
                { //16进制 加密
                    tv2.setText(global.str2HexStr((tv.getText().toString())));
                }
            }); 
        btn_32jiem.setOnClickListener(new View.OnClickListener(){
                @Override
                public void onClick(View p1)
                { //16进制 解密
                    tv.setText(global.hexStr2Str((tv2.getText().toString())));
                }
            });
        return rootView;
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
