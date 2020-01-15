package xyz.xdxn.asktao;

import android.*;
import android.content.*;
import android.net.*;
import android.os.*;
import android.support.v4.app.*;
import android.view.*;
import android.webkit.*;
import android.widget.*;

public class Fragment1 extends Fragment
{
    private WebView webshow;
    private String url,_url;

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        View rootView = inflater.inflate(R.layout.fragment1, container, false);
        url = _url = getString(R.string.homepage);
        NetBroadcastReceiver receiver = new NetBroadcastReceiver();
        IntentFilter filter = new IntentFilter(ConnectivityManager.CONNECTIVITY_ACTION);
        getActivity().registerReceiver(receiver, filter);

        webshow = (WebView) rootView.findViewById(R.id.webshow);
        webshow.getSettings().setJavaScriptEnabled(true);//允许JavaScript
        webshow.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        webshow.getSettings().setSupportMultipleWindows(true);
        webshow.getSettings().setBuiltInZoomControls(false);//禁止出现缩放工具
        webshow.loadUrl(url);
        webshow.setWebViewClient(new WebViewClient() {
                @Override
                public boolean shouldOverrideUrlLoading(WebView view, String url)
                {
                    _url = url;
                    view.loadUrl(url);
                    return true;
                }

                @Override
                public void onPageFinished(WebView view, String url)
                {
                    super.onPageFinished(view, url);
                }

                @Override
                public void onReceivedError(WebView view, int errorCode, String description, String failingUrl)
                {
                    super.onReceivedError(view, errorCode, description, failingUrl);
                    view.loadUrl("file:///android_asset/error.html");
                }
            });
        webshow.setWebChromeClient(new WebChromeClient());
        webshow.setOnLongClickListener(new View.OnLongClickListener(){

                @Override
                public boolean onLongClick(View p1)
                {
                    return false;
                }
            });
        webshow.setOnTouchListener(new View.OnTouchListener()
            {
                @Override
                public boolean onTouch(View view, MotionEvent motionEvent)
                {
                    return false;
                }
            });
		return rootView;
	}

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event)
    {
        if ((keyCode == KeyEvent.KEYCODE_BACK) && webshow.canGoBack())
        {
            webshow.goBack();//网页回退
            return true;
        }
        return onKeyDown(keyCode, event);
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

    class NetBroadcastReceiver extends BroadcastReceiver
    {
        @Override
        public void onReceive(Context context, Intent intent)
        {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
            NetworkInfo mobNetInfo = connectivityManager.getNetworkInfo(ConnectivityManager.TYPE_MOBILE);
            NetworkInfo wifiNetInfo = connectivityManager.getNetworkInfo(ConnectivityManager.TYPE_WIFI);

            if (!mobNetInfo.isConnected() && !wifiNetInfo.isConnected())
            {
                //WIFI和移动网络均未连接
                Toast.makeText(getActivity(), getString(R.string.string_03), Toast.LENGTH_SHORT).show();
            }
            else
            {
                //WIFI连接或者移动网络连接
                Fragment1.this.webshow.loadUrl(_url);
            }
        }
    }
}

