.class public Lxyz/xdxn/asktao/Fragment2;
.super Landroid/support/v4/app/Fragment;
.source "Fragment2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxyz/xdxn/asktao/Fragment2$100000001;,
        Lxyz/xdxn/asktao/Fragment2$100000000;
    }
.end annotation


# instance fields
.field private btn_db_connect:Landroid/widget/Button;

.field private connectStatus:Landroid/widget/TextView;

.field private edit_db_host:Landroid/widget/EditText;

.field private edit_db_name:Landroid/widget/EditText;

.field private edit_db_pass:Landroid/widget/EditText;

.field private edit_db_port:Landroid/widget/EditText;

.field private edit_db_user:Landroid/widget/EditText;

.field private edit_user_key:Landroid/widget/EditText;

.field private falg:Z

.field private global:Lxyz/xdxn/asktao/GlobalVariable;

.field private intentFilter:Landroid/content/IntentFilter;

.field protected mbr:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lxyz/xdxn/asktao/Fragment2;->falg:Z

    new-instance v0, Lxyz/xdxn/asktao/Fragment2$100000000;

    invoke-direct {v0, p0}, Lxyz/xdxn/asktao/Fragment2$100000000;-><init>(Lxyz/xdxn/asktao/Fragment2;)V

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->mbr:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$L1000000(Lxyz/xdxn/asktao/Fragment2;)Lxyz/xdxn/asktao/GlobalVariable;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->global:Lxyz/xdxn/asktao/GlobalVariable;

    return-object v0
.end method

.method static synthetic access$L1000001(Lxyz/xdxn/asktao/Fragment2;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->btn_db_connect:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$L1000007(Lxyz/xdxn/asktao/Fragment2;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->edit_user_key:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$L1000008(Lxyz/xdxn/asktao/Fragment2;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->connectStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$L1000010(Lxyz/xdxn/asktao/Fragment2;)Z
    .locals 1

    iget-boolean v0, p0, Lxyz/xdxn/asktao/Fragment2;->falg:Z

    return v0
.end method

.method static synthetic access$S1000000(Lxyz/xdxn/asktao/Fragment2;Lxyz/xdxn/asktao/GlobalVariable;)V
    .locals 0

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment2;->global:Lxyz/xdxn/asktao/GlobalVariable;

    return-void
.end method

.method static synthetic access$S1000001(Lxyz/xdxn/asktao/Fragment2;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment2;->btn_db_connect:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$S1000007(Lxyz/xdxn/asktao/Fragment2;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment2;->edit_user_key:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$S1000008(Lxyz/xdxn/asktao/Fragment2;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment2;->connectStatus:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$S1000010(Lxyz/xdxn/asktao/Fragment2;Z)V
    .locals 0

    iput-boolean p1, p0, Lxyz/xdxn/asktao/Fragment2;->falg:Z

    return-void
.end method


# virtual methods
.method public Connect()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->global:Lxyz/xdxn/asktao/GlobalVariable;

    iget-object v1, p0, Lxyz/xdxn/asktao/Fragment2;->edit_db_host:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lxyz/xdxn/asktao/Fragment2;->edit_db_port:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lxyz/xdxn/asktao/Fragment2;->edit_db_name:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lxyz/xdxn/asktao/Fragment2;->edit_db_user:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lxyz/xdxn/asktao/Fragment2;->edit_db_pass:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lxyz/xdxn/asktao/GlobalVariable;->ConnectionMysql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->connectStatus:Landroid/widget/TextView;

    const v1, 0x7f05000c

    invoke-virtual {p0, v1}, Lxyz/xdxn/asktao/Fragment2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->global:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-virtual {v0}, Lxyz/xdxn/asktao/GlobalVariable;->getLoadingDialog()Lxyz/xdxn/asktao/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lxyz/xdxn/asktao/LoadingDialog;->show()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 64
    const v0, 0x7f030005

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 65
    invoke-virtual {p0}, Lxyz/xdxn/asktao/Fragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lxyz/xdxn/asktao/GlobalVariable;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->global:Lxyz/xdxn/asktao/GlobalVariable;

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->intentFilter:Landroid/content/IntentFilter;

    .line 67
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->intentFilter:Landroid/content/IntentFilter;

    const/high16 v2, 0x7f05

    invoke-virtual {p0, v2}, Lxyz/xdxn/asktao/Fragment2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->global:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-virtual {v0}, Lxyz/xdxn/asktao/GlobalVariable;->getLBM()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v2, p0, Lxyz/xdxn/asktao/Fragment2;->mbr:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lxyz/xdxn/asktao/Fragment2;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 70
    const v0, 0x7f08000b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->edit_db_host:Landroid/widget/EditText;

    .line 71
    const v0, 0x7f08000c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->edit_db_port:Landroid/widget/EditText;

    .line 72
    const v0, 0x7f08000d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->edit_db_name:Landroid/widget/EditText;

    .line 73
    const v0, 0x7f08000e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->edit_db_user:Landroid/widget/EditText;

    .line 74
    const v0, 0x7f08000f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->edit_db_pass:Landroid/widget/EditText;

    .line 75
    const v0, 0x7f080011

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->edit_user_key:Landroid/widget/EditText;

    .line 76
    const v0, 0x7f08000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->connectStatus:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->edit_db_host:Landroid/widget/EditText;

    iget-object v2, p0, Lxyz/xdxn/asktao/Fragment2;->global:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-virtual {v2}, Lxyz/xdxn/asktao/GlobalVariable;->getShare()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "db_host"

    const-string v4, "127.0.0.1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->edit_db_port:Landroid/widget/EditText;

    iget-object v2, p0, Lxyz/xdxn/asktao/Fragment2;->global:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-virtual {v2}, Lxyz/xdxn/asktao/GlobalVariable;->getShare()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "db_port"

    const-string v4, "3306"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->edit_db_name:Landroid/widget/EditText;

    iget-object v2, p0, Lxyz/xdxn/asktao/Fragment2;->global:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-virtual {v2}, Lxyz/xdxn/asktao/GlobalVariable;->getShare()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "db_name"

    const-string v4, "gserver"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->edit_db_user:Landroid/widget/EditText;

    iget-object v2, p0, Lxyz/xdxn/asktao/Fragment2;->global:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-virtual {v2}, Lxyz/xdxn/asktao/GlobalVariable;->getShare()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "db_user"

    const-string v4, "root"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->edit_db_pass:Landroid/widget/EditText;

    iget-object v2, p0, Lxyz/xdxn/asktao/Fragment2;->global:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-virtual {v2}, Lxyz/xdxn/asktao/GlobalVariable;->getShare()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "db_pass"

    const-string v4, "123456"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v0, 0x7f080010

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->btn_db_connect:Landroid/widget/Button;

    .line 85
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2;->btn_db_connect:Landroid/widget/Button;

    new-instance v2, Lxyz/xdxn/asktao/Fragment2$100000001;

    invoke-direct {v2, p0}, Lxyz/xdxn/asktao/Fragment2$100000001;-><init>(Lxyz/xdxn/asktao/Fragment2;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
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
    .line 112
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
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
    .line 118
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
    .line 124
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
    .line 130
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
    .line 136
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method
