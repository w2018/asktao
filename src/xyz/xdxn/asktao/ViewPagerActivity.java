package xyz.xdxn.asktao;

import android.app.*;
import android.app.ActionBar.*;
import android.content.*;
import android.os.*;
import android.support.v4.app.*;
import android.support.v4.view.*;
import android.support.v4.view.ViewPager.*;
import android.view.*;
import java.util.*;

import android.app.FragmentTransaction;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;

public class ViewPagerActivity extends FragmentActivity implements
OnPageChangeListener, TabListener {

    public SharedPreferences share;
    private ViewPager mPager;
    private ArrayList<Fragment> mfragmentList;
    // 标题列表
    ArrayList<String> titleList = new ArrayList<String>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_view_pager);
        share = getSharedPreferences("dbconfig", MODE_PRIVATE);
        initViewPager();
    }

    private void initViewPager() {
        mPager = (ViewPager) findViewById(R.id.viewpager);

        mfragmentList = new ArrayList<Fragment>();
        mfragmentList.add(new Fragment1());
        mfragmentList.add(new Fragment2());
        mfragmentList.add(new Fragment3());
        mfragmentList.add(new Fragment4());
        mfragmentList.add(new Fragment5());
        mfragmentList.add(new Fragment6());
        mfragmentList.add(new Fragment7());
        
        mPager.setAdapter(new MyViewPagerAdapter(getSupportFragmentManager(),mfragmentList));
        mPager.setCurrentItem(0);   
        mPager.setOnPageChangeListener(this);

        getActionBar().setNavigationMode(ActionBar.NAVIGATION_MODE_TABS);
        getActionBar().setBackgroundDrawable(getResources().getDrawable(R.drawable.title_bar_shape));//标题栏图标
        // 初始化TAB属性
        String[] tabName = null;
        String[] temTabName = {"发现", "数据库配置", "用户列表", "人物属性", "发送宠物", "发送装备","开发工具" };
        tabName = temTabName;

        for (int i = 0; i < tabName.length; i++) {
            ActionBar.Tab tab = getActionBar().newTab();
            tab.setText(tabName[i]);
            tab.setTabListener(this);
            tab.setTag(i);
            getActionBar().addTab(tab);
        }
    }

    //三个页面选项卡Fragment适配器
    public class MyViewPagerAdapter extends FragmentPagerAdapter {
        ArrayList<Fragment> list;

        public MyViewPagerAdapter(FragmentManager fManager,ArrayList<Fragment> arrayList) {
            super(fManager);
            this.list = arrayList;
        }

        @Override
        public int getCount() {
            return list == null ? 0 : list.size();
        }

        @Override
        public Fragment getItem(int arg0) {

            return list.get(arg0);
        }

        @Override
        public int getItemPosition(Object object) {
            return POSITION_NONE;
        }

        @Override
        public boolean isViewFromObject(View view, Object obj) {
            return view == ((Fragment) obj).getView();
        }

        @Override
        public void destroyItem(ViewGroup container, int position, Object object) {

        }

    }

    @Override
    public void onPageScrollStateChanged(int arg0) {
        // TODO Auto-generated method stub

    }

    @Override
    public void onPageScrolled(int arg0, float arg1, int arg2) {
        // TODO Auto-generated method stub

    }

    @Override
    public void onPageSelected(int arg0) {
        //滑动ViewPager的时候设置相对应的ActionBar Tab被选中  
        getActionBar().getTabAt(arg0).select();

    }

    @Override
    public void onTabReselected(Tab arg0, FragmentTransaction arg1) {
        // TODO Auto-generated method stub

    }

    @Override
    public void onTabSelected(Tab tab, FragmentTransaction arg1) {
        if (tab.getTag() == null)
            return;
        //选中tab,滑动选项卡
        int index = ((Integer) tab.getTag()).intValue();
        if (mPager != null && mPager.getChildCount() > 0
            && mfragmentList.size() > index)
            mPager.setCurrentItem(index);
    }

    @Override
    public void onTabUnselected(Tab arg0, FragmentTransaction arg1) {
        // TODO Auto-generated method stub

    }
    @Override
    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(R.menu.main, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item)
    {
        switch (item.getItemId())
        {
            case R.id.action_about:
                AlertDialog.Builder builder = new AlertDialog.Builder(this);
                builder.setTitle(getString(R.string.item_about_title));
                // builder.setIcon(R.drawable.launcher_icon_min);
                builder.setMessage(getString(R.string.item_about_msg));
                builder.show();
                break;
        }
        return super.onOptionsItemSelected(item);
    }
    
}

