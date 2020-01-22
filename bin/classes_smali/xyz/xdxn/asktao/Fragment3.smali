.class public Lxyz/xdxn/asktao/Fragment3;
.super Landroid/support/v4/app/Fragment;
.source "Fragment3.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxyz/xdxn/asktao/Fragment3$100000001;,
        Lxyz/xdxn/asktao/Fragment3$100000002;,
        Lxyz/xdxn/asktao/Fragment3$100000003;,
        Lxyz/xdxn/asktao/Fragment3$100000004;,
        Lxyz/xdxn/asktao/Fragment3$100000005;,
        Lxyz/xdxn/asktao/Fragment3$100000006;,
        Lxyz/xdxn/asktao/Fragment3$100000007;,
        Lxyz/xdxn/asktao/Fragment3$100000008;,
        Lxyz/xdxn/asktao/Fragment3$100000009;,
        Lxyz/xdxn/asktao/Fragment3$100000010;,
        Lxyz/xdxn/asktao/Fragment3$100000011;,
        Lxyz/xdxn/asktao/Fragment3$100000013;,
        Lxyz/xdxn/asktao/Fragment3$100000000;
    }
.end annotation


# instance fields
.field private falg:Z

.field private global:Lxyz/xdxn/asktao/GlobalVariable;

.field private intentFilter:Landroid/content/IntentFilter;

.field private list_data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private listview:Landroid/widget/ListView;

.field protected mbr:Landroid/content/BroadcastReceiver;

.field private uname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 497
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lxyz/xdxn/asktao/Fragment3;->falg:Z

    new-instance v0, Lxyz/xdxn/asktao/Fragment3$100000000;

    invoke-direct {v0, p0}, Lxyz/xdxn/asktao/Fragment3$100000000;-><init>(Lxyz/xdxn/asktao/Fragment3;)V

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment3;->mbr:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$L1000000(Lxyz/xdxn/asktao/Fragment3;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3;->listview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$L1000001(Lxyz/xdxn/asktao/Fragment3;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3;->list_data:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$L1000002(Lxyz/xdxn/asktao/Fragment3;)Lxyz/xdxn/asktao/GlobalVariable;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3;->global:Lxyz/xdxn/asktao/GlobalVariable;

    return-object v0
.end method

.method static synthetic access$L1000004(Lxyz/xdxn/asktao/Fragment3;)Z
    .locals 1

    iget-boolean v0, p0, Lxyz/xdxn/asktao/Fragment3;->falg:Z

    return v0
.end method

.method static synthetic access$S1000000(Lxyz/xdxn/asktao/Fragment3;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment3;->listview:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic access$S1000001(Lxyz/xdxn/asktao/Fragment3;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment3;->list_data:Ljava/util/List;

    return-void
.end method

.method static synthetic access$S1000002(Lxyz/xdxn/asktao/Fragment3;Lxyz/xdxn/asktao/GlobalVariable;)V
    .locals 0

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment3;->global:Lxyz/xdxn/asktao/GlobalVariable;

    return-void
.end method

.method static synthetic access$S1000004(Lxyz/xdxn/asktao/Fragment3;Z)V
    .locals 0

    iput-boolean p1, p0, Lxyz/xdxn/asktao/Fragment3;->falg:Z

    return-void
.end method


# virtual methods
.method public getUserList()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3;->global:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-virtual {v0}, Lxyz/xdxn/asktao/GlobalVariable;->getMysqlStatus()Z

    move-result v0

    iput-boolean v0, p0, Lxyz/xdxn/asktao/Fragment3;->falg:Z

    if-eqz v0, :cond_0

    .line 392
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lxyz/xdxn/asktao/Fragment3$100000013;

    invoke-direct {v1, p0}, Lxyz/xdxn/asktao/Fragment3$100000013;-><init>(Lxyz/xdxn/asktao/Fragment3;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public mDeleteUserData(IIZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)V"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3;->global:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-virtual {v0}, Lxyz/xdxn/asktao/GlobalVariable;->getMysqlStatus()Z

    move-result v0

    iput-boolean v0, p0, Lxyz/xdxn/asktao/Fragment3;->falg:Z

    if-eqz v0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lxyz/xdxn/asktao/Fragment3$100000009;

    invoke-direct {v1, p0, p2, p1, p3}, Lxyz/xdxn/asktao/Fragment3$100000009;-><init>(Lxyz/xdxn/asktao/Fragment3;IIZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public mInsertCoin(II)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3;->global:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-virtual {v0}, Lxyz/xdxn/asktao/GlobalVariable;->getMysqlStatus()Z

    move-result v0

    iput-boolean v0, p0, Lxyz/xdxn/asktao/Fragment3;->falg:Z

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lxyz/xdxn/asktao/Fragment3$100000010;

    invoke-direct {v1, p0, p1, p2}, Lxyz/xdxn/asktao/Fragment3$100000010;-><init>(Lxyz/xdxn/asktao/Fragment3;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public mUpdateDeleted(II)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3;->global:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-virtual {v0}, Lxyz/xdxn/asktao/GlobalVariable;->getMysqlStatus()Z

    move-result v0

    iput-boolean v0, p0, Lxyz/xdxn/asktao/Fragment3;->falg:Z

    if-eqz v0, :cond_0

    .line 268
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lxyz/xdxn/asktao/Fragment3$100000008;

    invoke-direct {v1, p0, p2, p1}, Lxyz/xdxn/asktao/Fragment3$100000008;-><init>(Lxyz/xdxn/asktao/Fragment3;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public mUpdatePassWorld(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3;->global:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-virtual {v0}, Lxyz/xdxn/asktao/GlobalVariable;->getMysqlStatus()Z

    move-result v0

    iput-boolean v0, p0, Lxyz/xdxn/asktao/Fragment3;->falg:Z

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lxyz/xdxn/asktao/Fragment3$100000007;

    invoke-direct {v1, p0, p3, p2, p1}, Lxyz/xdxn/asktao/Fragment3$100000007;-><init>(Lxyz/xdxn/asktao/Fragment3;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 112
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    long-to-int v4, v2

    .line 113
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3;->list_data:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "user"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment3;->uname:Ljava/lang/String;

    .line 114
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 231
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 117
    :pswitch_0
    invoke-virtual {p0}, Lxyz/xdxn/asktao/Fragment3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f050014

    invoke-virtual {p0, v1}, Lxyz/xdxn/asktao/Fragment3;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3;->global:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-virtual {v0}, Lxyz/xdxn/asktao/GlobalVariable;->getJsonData()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {p0, v0}, Lxyz/xdxn/asktao/Fragment3;->xdxn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lxyz/xdxn/asktao/Fragment3;->global:Lxyz/xdxn/asktao/GlobalVariable;

    const/4 v2, 0x7

    const-string v3, "MSG"

    invoke-virtual {v1, v2, v3, v0, v5}, Lxyz/xdxn/asktao/GlobalVariable;->sendBroadMsg(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 126
    :pswitch_2
    invoke-virtual {p0}, Lxyz/xdxn/asktao/Fragment3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030001

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 127
    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 128
    const v2, 0x7f080002

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 129
    new-instance v3, Lxyz/xdxn/asktao/Fragment3$100000001;

    invoke-direct {v3, p0, v4, v1}, Lxyz/xdxn/asktao/Fragment3$100000001;-><init>(Lxyz/xdxn/asktao/Fragment3;ILandroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const-string v1, "元宝充值（一叶之秋处领取）"

    const-string v2, "欢迎继续充值～"

    invoke-virtual {p0, v0, v1, v2}, Lxyz/xdxn/asktao/Fragment3;->setView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :pswitch_3
    invoke-virtual {p0}, Lxyz/xdxn/asktao/Fragment3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03000b

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 141
    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 142
    const v2, 0x7f08001e

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 143
    const v3, 0x7f08001f

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 144
    new-instance v5, Lxyz/xdxn/asktao/Fragment3$100000002;

    invoke-direct {v5, p0, v1, v2, v4}, Lxyz/xdxn/asktao/Fragment3$100000002;-><init>(Lxyz/xdxn/asktao/Fragment3;Landroid/widget/EditText;Landroid/widget/EditText;I)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const-string v1, "修改密码(所属账号密码)"

    const-string v2, "别又忘记了～"

    invoke-virtual {p0, v0, v1, v2}, Lxyz/xdxn/asktao/Fragment3;->setView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :pswitch_4
    invoke-virtual {p0}, Lxyz/xdxn/asktao/Fragment3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030003

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 159
    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 160
    iget-object v2, p0, Lxyz/xdxn/asktao/Fragment3;->list_data:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "deleted"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "正常"

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 162
    new-instance v2, Lxyz/xdxn/asktao/Fragment3$100000003;

    invoke-direct {v2, p0, v4}, Lxyz/xdxn/asktao/Fragment3$100000003;-><init>(Lxyz/xdxn/asktao/Fragment3;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 170
    new-instance v2, Lxyz/xdxn/asktao/Fragment3$100000004;

    invoke-direct {v2, p0, v4}, Lxyz/xdxn/asktao/Fragment3$100000004;-><init>(Lxyz/xdxn/asktao/Fragment3;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const-string v1, "角色封停（只封人物角色）"

    const-string v2, "再看看还有谁做了坏事～"

    invoke-virtual {p0, v0, v1, v2}, Lxyz/xdxn/asktao/Fragment3;->setView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    :cond_0
    const-string v2, "已封号"

    goto :goto_1

    .line 181
    :pswitch_5
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const/16 v0, 0x2327

    int-to-double v5, v0

    mul-double/2addr v2, v5

    const/16 v0, 0x3e8

    int-to-double v5, v0

    add-double/2addr v2, v5

    double-to-int v3, v2

    .line 183
    invoke-virtual {p0}, Lxyz/xdxn/asktao/Fragment3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03000f

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 184
    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 185
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 187
    const v2, 0x7f080028

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 188
    new-instance v5, Lxyz/xdxn/asktao/Fragment3$100000005;

    invoke-direct {v5, p0, v1, v3, v4}, Lxyz/xdxn/asktao/Fragment3$100000005;-><init>(Lxyz/xdxn/asktao/Fragment3;Landroid/widget/EditText;II)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    const v2, 0x7f080029

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 208
    new-instance v5, Lxyz/xdxn/asktao/Fragment3$100000006;

    invoke-direct {v5, p0, v1, v3, v4}, Lxyz/xdxn/asktao/Fragment3$100000006;-><init>(Lxyz/xdxn/asktao/Fragment3;Landroid/widget/EditText;II)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    const-string v1, "删除账号（该操作不可逆）"

    const-string v2, "这得多大仇呀～"

    invoke-virtual {p0, v0, v1, v2}, Lxyz/xdxn/asktao/Fragment3;->setView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ContextMenu;",
            "Landroid/view/View;",
            "Landroid/view/ContextMenu$ContextMenuInfo;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 99
    const-string v0, "人物离线后操作(约2~3分钟)"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 100
    const-string v0, "修改属性"

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 101
    const/4 v0, 0x1

    const-string v1, "生成秘钥"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 102
    const/4 v0, 0x2

    const-string v1, "充值元宝"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 103
    const/4 v0, 0x3

    const-string v1, "修改密码"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 104
    const/4 v0, 0x4

    const-string v1, "封停角色"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 105
    const/4 v0, 0x5

    const-string v1, "删除账号"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 69
    const v0, 0x7f030006

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 70
    invoke-virtual {p0}, Lxyz/xdxn/asktao/Fragment3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lxyz/xdxn/asktao/GlobalVariable;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment3;->global:Lxyz/xdxn/asktao/GlobalVariable;

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment3;->intentFilter:Landroid/content/IntentFilter;

    .line 72
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3;->intentFilter:Landroid/content/IntentFilter;

    const/high16 v2, 0x7f05

    invoke-virtual {p0, v2}, Lxyz/xdxn/asktao/Fragment3;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3;->global:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-virtual {v0}, Lxyz/xdxn/asktao/GlobalVariable;->getLBM()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v2, p0, Lxyz/xdxn/asktao/Fragment3;->mbr:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lxyz/xdxn/asktao/Fragment3;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 74
    const v0, 0x7f080012

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment3;->listview:Landroid/widget/ListView;

    .line 75
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 77
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 78
    return-object v1
.end method

.method public onDestroy()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 467
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Lxyz/xdxn/asktao/Fragment3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f05001b

    invoke-virtual {p0, v1}, Lxyz/xdxn/asktao/Fragment3;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 90
    iget-object v1, p0, Lxyz/xdxn/asktao/Fragment3;->global:Lxyz/xdxn/asktao/GlobalVariable;

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3;->list_data:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "data"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lxyz/xdxn/asktao/GlobalVariable;->setJsonData(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lxyz/xdxn/asktao/Fragment3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const v4, 0x7f050002

    invoke-virtual {p0, v4}, Lxyz/xdxn/asktao/Fragment3;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " 〔已选定："

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3;->list_data:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v4, "user"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "〕"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 474
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 481
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 488
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 495
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method

.method public setView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 373
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lxyz/xdxn/asktao/Fragment3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 374
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lxyz/xdxn/asktao/Fragment3;->uname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 375
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 376
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 377
    const-string v1, "返回"

    new-instance v2, Lxyz/xdxn/asktao/Fragment3$100000011;

    invoke-direct {v2, p0, p3}, Lxyz/xdxn/asktao/Fragment3$100000011;-><init>(Lxyz/xdxn/asktao/Fragment3;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 385
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public xdxn(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 456
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 457
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 460
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 458
    :cond_0
    aget-char v2, v1, v0

    xor-int/lit16 v2, v2, 0x55e8

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
