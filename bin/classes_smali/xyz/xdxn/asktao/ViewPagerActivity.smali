.class public Lxyz/xdxn/asktao/ViewPagerActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ViewPagerActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxyz/xdxn/asktao/ViewPagerActivity$MyViewPagerAdapter;
    }
.end annotation


# instance fields
.field private global:Lxyz/xdxn/asktao/GlobalVariable;

.field private loadingDialog:Lxyz/xdxn/asktao/LoadingDialog;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mfragmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field titleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxyz/xdxn/asktao/ViewPagerActivity;->titleList:Ljava/util/ArrayList;

    return-void
.end method

.method private initViewPager()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 40
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lxyz/xdxn/asktao/ViewPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lxyz/xdxn/asktao/ViewPagerActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 41
    iget-object v0, p0, Lxyz/xdxn/asktao/ViewPagerActivity;->global:Lxyz/xdxn/asktao/GlobalVariable;

    iget-object v2, p0, Lxyz/xdxn/asktao/ViewPagerActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Lxyz/xdxn/asktao/GlobalVariable;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxyz/xdxn/asktao/ViewPagerActivity;->mfragmentList:Ljava/util/ArrayList;

    .line 44
    iget-object v0, p0, Lxyz/xdxn/asktao/ViewPagerActivity;->mfragmentList:Ljava/util/ArrayList;

    new-instance v2, Lxyz/xdxn/asktao/Fragment1;

    invoke-direct {v2}, Lxyz/xdxn/asktao/Fragment1;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lxyz/xdxn/asktao/ViewPagerActivity;->mfragmentList:Ljava/util/ArrayList;

    new-instance v2, Lxyz/xdxn/asktao/Fragment2;

    invoke-direct {v2}, Lxyz/xdxn/asktao/Fragment2;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lxyz/xdxn/asktao/ViewPagerActivity;->mfragmentList:Ljava/util/ArrayList;

    new-instance v2, Lxyz/xdxn/asktao/Fragment3;

    invoke-direct {v2}, Lxyz/xdxn/asktao/Fragment3;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lxyz/xdxn/asktao/ViewPagerActivity;->mfragmentList:Ljava/util/ArrayList;

    new-instance v2, Lxyz/xdxn/asktao/Fragment4;

    invoke-direct {v2}, Lxyz/xdxn/asktao/Fragment4;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lxyz/xdxn/asktao/ViewPagerActivity;->mfragmentList:Ljava/util/ArrayList;

    new-instance v2, Lxyz/xdxn/asktao/Fragment5;

    invoke-direct {v2}, Lxyz/xdxn/asktao/Fragment5;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lxyz/xdxn/asktao/ViewPagerActivity;->mfragmentList:Ljava/util/ArrayList;

    new-instance v2, Lxyz/xdxn/asktao/Fragment6;

    invoke-direct {v2}, Lxyz/xdxn/asktao/Fragment6;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lxyz/xdxn/asktao/ViewPagerActivity;->mfragmentList:Ljava/util/ArrayList;

    new-instance v2, Lxyz/xdxn/asktao/Fragment7;

    invoke-direct {v2}, Lxyz/xdxn/asktao/Fragment7;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lxyz/xdxn/asktao/ViewPagerActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lxyz/xdxn/asktao/ViewPagerActivity$MyViewPagerAdapter;

    invoke-virtual {p0}, Lxyz/xdxn/asktao/ViewPagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lxyz/xdxn/asktao/ViewPagerActivity;->mfragmentList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Lxyz/xdxn/asktao/ViewPagerActivity$MyViewPagerAdapter;-><init>(Lxyz/xdxn/asktao/ViewPagerActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 53
    iget-object v0, p0, Lxyz/xdxn/asktao/ViewPagerActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 54
    iget-object v0, p0, Lxyz/xdxn/asktao/ViewPagerActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 56
    invoke-virtual {p0}, Lxyz/xdxn/asktao/ViewPagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 57
    invoke-virtual {p0}, Lxyz/xdxn/asktao/ViewPagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lxyz/xdxn/asktao/ViewPagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    .line 60
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "发现"

    aput-object v0, v2, v1

    const-string v0, "数据库配置"

    aput-object v0, v2, v5

    const-string v0, "用户列表"

    aput-object v0, v2, v6

    const/4 v0, 0x3

    const-string v3, "人物属性"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "发送宠物"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "发送装备"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string v3, "开发工具"

    aput-object v3, v2, v0

    move v0, v1

    .line 63
    :goto_0
    array-length v1, v2

    if-lt v0, v1, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lxyz/xdxn/asktao/ViewPagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 65
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 66
    invoke-virtual {v1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 67
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 68
    invoke-virtual {p0}, Lxyz/xdxn/asktao/ViewPagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lxyz/xdxn/asktao/ViewPagerActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    invoke-static {p0}, LLogCatBroadcaster;->start(Landroid/content/Context;)V

    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lxyz/xdxn/asktao/ViewPagerActivity;->setContentView(I)V

    .line 31
    const-string v0, "人物属性修改 安卓版！@小打小闹"

    invoke-virtual {p0, v0}, Lxyz/xdxn/asktao/ViewPagerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {p0}, Lxyz/xdxn/asktao/ViewPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lxyz/xdxn/asktao/GlobalVariable;

    iput-object v0, p0, Lxyz/xdxn/asktao/ViewPagerActivity;->global:Lxyz/xdxn/asktao/GlobalVariable;

    .line 33
    new-instance v0, Lxyz/xdxn/asktao/LoadingDialog;

    const v1, 0x7f050013

    invoke-virtual {p0, v1}, Lxyz/xdxn/asktao/ViewPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020003

    invoke-direct {v0, p0, v1, v2}, Lxyz/xdxn/asktao/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lxyz/xdxn/asktao/ViewPagerActivity;->loadingDialog:Lxyz/xdxn/asktao/LoadingDialog;

    .line 34
    iget-object v0, p0, Lxyz/xdxn/asktao/ViewPagerActivity;->global:Lxyz/xdxn/asktao/GlobalVariable;

    iget-object v1, p0, Lxyz/xdxn/asktao/ViewPagerActivity;->loadingDialog:Lxyz/xdxn/asktao/LoadingDialog;

    invoke-virtual {v0, v1}, Lxyz/xdxn/asktao/GlobalVariable;->setLoadingDialog(Lxyz/xdxn/asktao/LoadingDialog;)V

    .line 35
    iget-object v0, p0, Lxyz/xdxn/asktao/ViewPagerActivity;->global:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-virtual {v0, p0}, Lxyz/xdxn/asktao/GlobalVariable;->setContext(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lxyz/xdxn/asktao/ViewPagerActivity;->initViewPager()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Lxyz/xdxn/asktao/ViewPagerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 155
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 161
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 171
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 164
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 165
    const v1, 0x7f050011

    invoke-virtual {p0, v1}, Lxyz/xdxn/asktao/ViewPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 167
    const v1, 0x7f050012

    invoke-virtual {p0, v1}, Lxyz/xdxn/asktao/ViewPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 168
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x7f08002a
        :pswitch_0
    .end packed-switch
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFI)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0}, Lxyz/xdxn/asktao/ViewPagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActionBar$Tab;",
            "Landroid/app/FragmentTransaction;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActionBar$Tab;",
            "Landroid/app/FragmentTransaction;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 140
    iget-object v1, p0, Lxyz/xdxn/asktao/ViewPagerActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lxyz/xdxn/asktao/ViewPagerActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lxyz/xdxn/asktao/ViewPagerActivity;->mfragmentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 142
    iget-object v1, p0, Lxyz/xdxn/asktao/ViewPagerActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActionBar$Tab;",
            "Landroid/app/FragmentTransaction;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method
