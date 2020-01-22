.class Lxyz/xdxn/asktao/Fragment1$100000000;
.super Landroid/webkit/WebViewClient;
.source "Fragment1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/xdxn/asktao/Fragment1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lxyz/xdxn/asktao/Fragment1;


# direct methods
.method constructor <init>(Lxyz/xdxn/asktao/Fragment1;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment1$100000000;->this$0:Lxyz/xdxn/asktao/Fragment1;

    return-void
.end method

.method static access$0(Lxyz/xdxn/asktao/Fragment1$100000000;)Lxyz/xdxn/asktao/Fragment1;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment1$100000000;->this$0:Lxyz/xdxn/asktao/Fragment1;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "file:///android_asset/error.html"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment1$100000000;->this$0:Lxyz/xdxn/asktao/Fragment1;

    invoke-static {v0, p2}, Lxyz/xdxn/asktao/Fragment1;->access$S1000002(Lxyz/xdxn/asktao/Fragment1;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x1

    return v0
.end method
