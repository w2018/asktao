.class Lxyz/xdxn/asktao/Fragment4$100000000;
.super Landroid/content/BroadcastReceiver;
.source "Fragment4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/xdxn/asktao/Fragment4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lxyz/xdxn/asktao/Fragment4;


# direct methods
.method constructor <init>(Lxyz/xdxn/asktao/Fragment4;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment4$100000000;->this$0:Lxyz/xdxn/asktao/Fragment4;

    return-void
.end method

.method static access$0(Lxyz/xdxn/asktao/Fragment4$100000000;)Lxyz/xdxn/asktao/Fragment4;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment4$100000000;->this$0:Lxyz/xdxn/asktao/Fragment4;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
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
    const/4 v4, 0x1

    .line 19
    const-string v0, "code"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 20
    const-string v1, "type"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    const-string v2, "data"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 24
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment4$100000000;->this$0:Lxyz/xdxn/asktao/Fragment4;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment4;->access$L1000002(Lxyz/xdxn/asktao/Fragment4;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v0

    invoke-virtual {v0}, Lxyz/xdxn/asktao/GlobalVariable;->getLoadingDialog()Lxyz/xdxn/asktao/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lxyz/xdxn/asktao/LoadingDialog;->dismiss()V

    .line 25
    const-string v0, "MSG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_1

    .line 28
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment4$100000000;->this$0:Lxyz/xdxn/asktao/Fragment4;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment4;->access$L1000001(Lxyz/xdxn/asktao/Fragment4;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment4$100000000;->this$0:Lxyz/xdxn/asktao/Fragment4;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment4;->access$L1000000(Lxyz/xdxn/asktao/Fragment4;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lxyz/xdxn/asktao/Fragment4$100000000;->this$0:Lxyz/xdxn/asktao/Fragment4;

    invoke-static {v1}, Lxyz/xdxn/asktao/Fragment4;->access$L1000001(Lxyz/xdxn/asktao/Fragment4;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const-string v0, "DATA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_0

    goto :goto_0
.end method
