.class public Lxyz/xdxn/asktao/Fragment7;
.super Landroid/support/v4/app/Fragment;
.source "Fragment7.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxyz/xdxn/asktao/Fragment7$100000001;,
        Lxyz/xdxn/asktao/Fragment7$100000002;,
        Lxyz/xdxn/asktao/Fragment7$100000003;,
        Lxyz/xdxn/asktao/Fragment7$100000004;,
        Lxyz/xdxn/asktao/Fragment7$100000005;,
        Lxyz/xdxn/asktao/Fragment7$100000006;,
        Lxyz/xdxn/asktao/Fragment7$100000000;
    }
.end annotation


# instance fields
.field private btn_32jiem:Landroid/widget/Button;

.field private btn_32jm:Landroid/widget/Button;

.field private btn_64jiem:Landroid/widget/Button;

.field private btn_64jm:Landroid/widget/Button;

.field private btn_jh:Landroid/widget/Button;

.field private btn_jjm:Landroid/widget/Button;

.field private edit_jjm:Landroid/widget/EditText;

.field private global:Lxyz/xdxn/asktao/GlobalVariable;

.field private intentFilter:Landroid/content/IntentFilter;

.field protected mbr:Landroid/content/BroadcastReceiver;

.field private sgb:Ljava/lang/StringBuffer;

.field private tv:Landroid/widget/EditText;

.field private tv2:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/StringBuffer;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->sgb:Ljava/lang/StringBuffer;

    new-instance v0, Lxyz/xdxn/asktao/Fragment7$100000000;

    invoke-direct {v0, p0}, Lxyz/xdxn/asktao/Fragment7$100000000;-><init>(Lxyz/xdxn/asktao/Fragment7;)V

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->mbr:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$L1000000(Lxyz/xdxn/asktao/Fragment7;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->tv:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$L1000001(Lxyz/xdxn/asktao/Fragment7;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->tv2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$L1000002(Lxyz/xdxn/asktao/Fragment7;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->edit_jjm:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$L1000009(Lxyz/xdxn/asktao/Fragment7;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->sgb:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$L1000010(Lxyz/xdxn/asktao/Fragment7;)Lxyz/xdxn/asktao/GlobalVariable;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->global:Lxyz/xdxn/asktao/GlobalVariable;

    return-object v0
.end method

.method static synthetic access$S1000000(Lxyz/xdxn/asktao/Fragment7;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment7;->tv:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$S1000001(Lxyz/xdxn/asktao/Fragment7;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment7;->tv2:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$S1000002(Lxyz/xdxn/asktao/Fragment7;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment7;->edit_jjm:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$S1000009(Lxyz/xdxn/asktao/Fragment7;Ljava/lang/StringBuffer;)V
    .locals 0

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment7;->sgb:Ljava/lang/StringBuffer;

    return-void
.end method

.method static synthetic access$S1000010(Lxyz/xdxn/asktao/Fragment7;Lxyz/xdxn/asktao/GlobalVariable;)V
    .locals 0

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment7;->global:Lxyz/xdxn/asktao/GlobalVariable;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 45
    const v0, 0x7f030009

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 46
    const v0, 0x7f080015

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->edit_jjm:Landroid/widget/EditText;

    .line 47
    const v0, 0x7f080016

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->btn_jjm:Landroid/widget/Button;

    .line 48
    const v0, 0x7f080019

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->btn_jh:Landroid/widget/Button;

    .line 49
    const v0, 0x7f080017

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->btn_64jm:Landroid/widget/Button;

    .line 50
    const v0, 0x7f080018

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->btn_64jiem:Landroid/widget/Button;

    .line 51
    const v0, 0x7f08001a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->btn_32jm:Landroid/widget/Button;

    .line 52
    const v0, 0x7f08001b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->btn_32jiem:Landroid/widget/Button;

    .line 53
    const v0, 0x7f080013

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->tv:Landroid/widget/EditText;

    .line 54
    const v0, 0x7f08001c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->tv2:Landroid/widget/EditText;

    .line 55
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->sgb:Ljava/lang/StringBuffer;

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->intentFilter:Landroid/content/IntentFilter;

    .line 57
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->intentFilter:Landroid/content/IntentFilter;

    const/high16 v2, 0x7f05

    invoke-virtual {p0, v2}, Lxyz/xdxn/asktao/Fragment7;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lxyz/xdxn/asktao/Fragment7;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lxyz/xdxn/asktao/GlobalVariable;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->global:Lxyz/xdxn/asktao/GlobalVariable;

    .line 59
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->global:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-virtual {v0}, Lxyz/xdxn/asktao/GlobalVariable;->getLBM()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v2, p0, Lxyz/xdxn/asktao/Fragment7;->mbr:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lxyz/xdxn/asktao/Fragment7;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 60
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->btn_jjm:Landroid/widget/Button;

    new-instance v2, Lxyz/xdxn/asktao/Fragment7$100000001;

    invoke-direct {v2, p0}, Lxyz/xdxn/asktao/Fragment7$100000001;-><init>(Lxyz/xdxn/asktao/Fragment7;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->btn_jh:Landroid/widget/Button;

    new-instance v2, Lxyz/xdxn/asktao/Fragment7$100000002;

    invoke-direct {v2, p0}, Lxyz/xdxn/asktao/Fragment7$100000002;-><init>(Lxyz/xdxn/asktao/Fragment7;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->btn_64jm:Landroid/widget/Button;

    new-instance v2, Lxyz/xdxn/asktao/Fragment7$100000003;

    invoke-direct {v2, p0}, Lxyz/xdxn/asktao/Fragment7$100000003;-><init>(Lxyz/xdxn/asktao/Fragment7;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->btn_64jiem:Landroid/widget/Button;

    new-instance v2, Lxyz/xdxn/asktao/Fragment7$100000004;

    invoke-direct {v2, p0}, Lxyz/xdxn/asktao/Fragment7$100000004;-><init>(Lxyz/xdxn/asktao/Fragment7;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->btn_32jm:Landroid/widget/Button;

    new-instance v2, Lxyz/xdxn/asktao/Fragment7$100000005;

    invoke-direct {v2, p0}, Lxyz/xdxn/asktao/Fragment7$100000005;-><init>(Lxyz/xdxn/asktao/Fragment7;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment7;->btn_32jiem:Landroid/widget/Button;

    new-instance v2, Lxyz/xdxn/asktao/Fragment7$100000006;

    invoke-direct {v2, p0}, Lxyz/xdxn/asktao/Fragment7$100000006;-><init>(Lxyz/xdxn/asktao/Fragment7;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
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
    .line 133
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
    .line 139
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
    .line 145
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
    .line 151
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
    .line 157
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method

.method public xdxn(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 123
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 127
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 125
    :cond_0
    aget-char v2, v1, v0

    xor-int/lit16 v2, v2, 0x55e8

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
