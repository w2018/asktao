.class public Lxyz/xdxn/asktao/Fragment4;
.super Landroid/support/v4/app/Fragment;
.source "Fragment4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxyz/xdxn/asktao/Fragment4$100000000;
    }
.end annotation


# instance fields
.field private global:Lxyz/xdxn/asktao/GlobalVariable;

.field private intentFilter:Landroid/content/IntentFilter;

.field protected mbr:Landroid/content/BroadcastReceiver;

.field private sgb:Ljava/lang/StringBuffer;

.field private tv:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/StringBuffer;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment4;->sgb:Ljava/lang/StringBuffer;

    new-instance v0, Lxyz/xdxn/asktao/Fragment4$100000000;

    invoke-direct {v0, p0}, Lxyz/xdxn/asktao/Fragment4$100000000;-><init>(Lxyz/xdxn/asktao/Fragment4;)V

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment4;->mbr:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$L1000000(Lxyz/xdxn/asktao/Fragment4;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment4;->tv:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$L1000001(Lxyz/xdxn/asktao/Fragment4;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment4;->sgb:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$L1000002(Lxyz/xdxn/asktao/Fragment4;)Lxyz/xdxn/asktao/GlobalVariable;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment4;->global:Lxyz/xdxn/asktao/GlobalVariable;

    return-object v0
.end method

.method static synthetic access$S1000000(Lxyz/xdxn/asktao/Fragment4;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment4;->tv:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$S1000001(Lxyz/xdxn/asktao/Fragment4;Ljava/lang/StringBuffer;)V
    .locals 0

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment4;->sgb:Ljava/lang/StringBuffer;

    return-void
.end method

.method static synthetic access$S1000002(Lxyz/xdxn/asktao/Fragment4;Lxyz/xdxn/asktao/GlobalVariable;)V
    .locals 0

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment4;->global:Lxyz/xdxn/asktao/GlobalVariable;

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
    .line 41
    const v0, 0x7f030007

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 42
    const v0, 0x7f080013

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment4;->tv:Landroid/widget/EditText;

    .line 43
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment4;->sgb:Ljava/lang/StringBuffer;

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment4;->intentFilter:Landroid/content/IntentFilter;

    .line 45
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment4;->intentFilter:Landroid/content/IntentFilter;

    const/high16 v2, 0x7f05

    invoke-virtual {p0, v2}, Lxyz/xdxn/asktao/Fragment4;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lxyz/xdxn/asktao/Fragment4;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lxyz/xdxn/asktao/GlobalVariable;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment4;->global:Lxyz/xdxn/asktao/GlobalVariable;

    .line 47
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment4;->global:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-virtual {v0}, Lxyz/xdxn/asktao/GlobalVariable;->getLBM()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v2, p0, Lxyz/xdxn/asktao/Fragment4;->mbr:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lxyz/xdxn/asktao/Fragment4;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 48
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
    .line 53
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
    .line 58
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
    .line 63
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
    .line 68
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
    .line 73
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method
