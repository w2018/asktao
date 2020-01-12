package xyz.xdxn.asktao;


import android.os.*;
import android.support.v4.app.*;
import android.view.*;
import android.widget.*;


public class Fragment2 extends Fragment
{
	private View mMainView;
	private TextView tv;
	private Button btn;


	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        View rootView = inflater.inflate(R.layout.fragment2, container, false);//关联布局文件
        btn = (Button)rootView.findViewById(R.id.btn1);
        btn.setOnClickListener(new View.OnClickListener(){

                @Override
                public void onClick(View p1)
                { 
                    Toast.makeText(getActivity(), "点击了", Toast.LENGTH_LONG).show();

                }
            });

		return rootView;
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
