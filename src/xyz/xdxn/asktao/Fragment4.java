package xyz.xdxn.asktao;

import android.*;
import android.content.*;
import android.os.*;
import android.support.v4.app.*;
import android.view.*;
import android.widget.*;

public class Fragment4 extends Fragment{
    private EditText tv;
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
            if (code == 4)
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
    public View onCreateView(LayoutInflater inflater, ViewGroup container,Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.fragment4, container, false);//关键布局文件
        tv = (EditText) rootView.findViewById(R.id.tv1);
        sgb = new StringBuffer();
        intentFilter = new IntentFilter();
        intentFilter.addAction(getString(R.string.homepage));
        global = (GlobalVariable)getActivity().getApplicationContext();
        global.getLBM().registerReceiver(mbr, intentFilter);
        return rootView;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Override
    public void onPause() {
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
    }

    @Override
    public void onStart() {
        super.onStart();
    }

    @Override
    public void onStop() {
        super.onStop();
    }

}
