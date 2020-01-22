.class public Lxyz/xdxn/asktao/Fragment1;
.super Landroid/support/v4/app/Fragment;
.source "Fragment1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxyz/xdxn/asktao/Fragment1$NetBroadcastReceiver;,
        Lxyz/xdxn/asktao/Fragment1$100000000;,
        Lxyz/xdxn/asktao/Fragment1$100000001;,
        Lxyz/xdxn/asktao/Fragment1$100000002;
    }
.end annotation


# instance fields
.field private _url:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private webshow:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$L1000000(Lxyz/xdxn/asktao/Fragment1;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment1;->webshow:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$L1000002(Lxyz/xdxn/asktao/Fragment1;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment1;->_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$S1000000(Lxyz/xdxn/asktao/Fragment1;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment1;->webshow:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$S1000002(Lxyz/xdxn/asktao/Fragment1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment1;->_url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 20
    const v0, 0x7f030004

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 21
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lxyz/xdxn/asktao/Fragment1;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment1;->_url:Ljava/lang/String;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment1;->url:Ljava/lang/String;

    .line 22
    new-instance v0, Lxyz/xdxn/asktao/Fragment1$NetBroadcastReceiver;

    invoke-direct {v0, p0}, Lxyz/xdxn/asktao/Fragment1$NetBroadcastReceiver;-><init>(Lxyz/xdxn/asktao/Fragment1;)V

    .line 23
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lxyz/xdxn/asktao/Fragment1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 26
    const v0, 0x7f080008

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lxyz/xdxn/asktao/Fragment1;->webshow:Landroid/webkit/WebView;

    .line 27
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment1;->webshow:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 28
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment1;->webshow:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 29
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment1;->webshow:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 30
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment1;->webshow:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 31
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment1;->webshow:Landroid/webkit/WebView;

    iget-object v2, p0, Lxyz/xdxn/asktao/Fragment1;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment1;->webshow:Landroid/webkit/WebView;

    new-instance v2, Lxyz/xdxn/asktao/Fragment1$100000000;

    invoke-direct {v2, p0}, Lxyz/xdxn/asktao/Fragment1$100000000;-><init>(Lxyz/xdxn/asktao/Fragment1;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 54
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment1;->webshow:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 55
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment1;->webshow:Landroid/webkit/WebView;

    new-instance v2, Lxyz/xdxn/asktao/Fragment1$100000001;

    invoke-direct {v2, p0}, Lxyz/xdxn/asktao/Fragment1$100000001;-><init>(Lxyz/xdxn/asktao/Fragment1;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 63
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment1;->webshow:Landroid/webkit/WebView;

    new-instance v2, Lxyz/xdxn/asktao/Fragment1$100000002;

    invoke-direct {v2, p0}, Lxyz/xdxn/asktao/Fragment1$100000002;-><init>(Lxyz/xdxn/asktao/Fragment1;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
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
    .line 88
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment1;->webshow:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment1;->webshow:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lxyz/xdxn/asktao/Fragment1;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
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
    .line 94
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
    .line 100
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
    .line 106
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
    .line 112
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method
