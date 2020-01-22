.class Lxyz/xdxn/asktao/Fragment1$NetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Fragment1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/xdxn/asktao/Fragment1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "NetBroadcastReceiver"
.end annotation


# instance fields
.field private final this$0:Lxyz/xdxn/asktao/Fragment1;


# direct methods
.method public constructor <init>(Lxyz/xdxn/asktao/Fragment1;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment1$NetBroadcastReceiver;->this$0:Lxyz/xdxn/asktao/Fragment1;

    return-void
.end method

.method static access$0(Lxyz/xdxn/asktao/Fragment1$NetBroadcastReceiver;)Lxyz/xdxn/asktao/Fragment1;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment1$NetBroadcastReceiver;->this$0:Lxyz/xdxn/asktao/Fragment1;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 120
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 121
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 122
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 124
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment1$NetBroadcastReceiver;->this$0:Lxyz/xdxn/asktao/Fragment1;

    invoke-virtual {v0}, Lxyz/xdxn/asktao/Fragment1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lxyz/xdxn/asktao/Fragment1$NetBroadcastReceiver;->this$0:Lxyz/xdxn/asktao/Fragment1;

    const v2, 0x7f050018

    invoke-virtual {v1, v2}, Lxyz/xdxn/asktao/Fragment1;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 132
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment1$NetBroadcastReceiver;->this$0:Lxyz/xdxn/asktao/Fragment1;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment1;->access$L1000000(Lxyz/xdxn/asktao/Fragment1;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lxyz/xdxn/asktao/Fragment1$NetBroadcastReceiver;->this$0:Lxyz/xdxn/asktao/Fragment1;

    invoke-static {v1}, Lxyz/xdxn/asktao/Fragment1;->access$L1000002(Lxyz/xdxn/asktao/Fragment1;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
