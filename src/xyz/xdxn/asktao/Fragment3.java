package xyz.xdxn.asktao;

import android.os.*;
import android.support.v4.app.*;
import android.view.*;
import android.widget.*;


public class Fragment3 extends Fragment{
	private View mMainView;
	private TextView tv;
	private Button btn;


	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		 View rootView = inflater.inflate(R.layout.fragment_all, container, false);//关联布局文件
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
