.class Lxyz/xdxn/asktao/Fragment3$100000000;
.super Landroid/content/BroadcastReceiver;
.source "Fragment3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/xdxn/asktao/Fragment3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lxyz/xdxn/asktao/Fragment3;


# direct methods
.method constructor <init>(Lxyz/xdxn/asktao/Fragment3;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment3$100000000;->this$0:Lxyz/xdxn/asktao/Fragment3;

    return-void
.end method

.method static access$0(Lxyz/xdxn/asktao/Fragment3$100000000;)Lxyz/xdxn/asktao/Fragment3;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000000;->this$0:Lxyz/xdxn/asktao/Fragment3;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
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
    const/4 v0, 0x0

    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 30
    const-string v1, "code"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 31
    const-string v2, "type"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    const-string v3, "data"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    iget-object v4, p0, Lxyz/xdxn/asktao/Fragment3$100000000;->this$0:Lxyz/xdxn/asktao/Fragment3;

    const-string v5, "falg"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v4, v5}, Lxyz/xdxn/asktao/Fragment3;->access$S1000004(Lxyz/xdxn/asktao/Fragment3;Z)V

    .line 34
    if-ne v1, v8, :cond_0

    .line 36
    iget-object v1, p0, Lxyz/xdxn/asktao/Fragment3$100000000;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v1}, Lxyz/xdxn/asktao/Fragment3;->access$L1000002(Lxyz/xdxn/asktao/Fragment3;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v1

    invoke-virtual {v1}, Lxyz/xdxn/asktao/GlobalVariable;->getLoadingDialog()Lxyz/xdxn/asktao/LoadingDialog;

    move-result-object v1

    invoke-virtual {v1}, Lxyz/xdxn/asktao/LoadingDialog;->dismiss()V

    .line 37
    const-string v1, "MSG"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v7, :cond_1

    .line 40
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000000;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-virtual {v0}, Lxyz/xdxn/asktao/Fragment3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const-string v1, "DATA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v7, :cond_2

    .line 52
    iget-object v1, p0, Lxyz/xdxn/asktao/Fragment3$100000000;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v1}, Lxyz/xdxn/asktao/Fragment3;->access$L1000000(Lxyz/xdxn/asktao/Fragment3;)Landroid/widget/ListView;

    move-result-object v1

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lxyz/xdxn/asktao/Fragment3$100000000;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v1}, Lxyz/xdxn/asktao/Fragment3;->access$L1000002(Lxyz/xdxn/asktao/Fragment3;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v1

    invoke-virtual {v1}, Lxyz/xdxn/asktao/GlobalVariable;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lxyz/xdxn/asktao/Fragment3$100000000;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v2}, Lxyz/xdxn/asktao/Fragment3;->access$L1000001(Lxyz/xdxn/asktao/Fragment3;)Ljava/util/List;

    move-result-object v2

    const v3, 0x7f03000c

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "image"

    aput-object v5, v4, v6

    const-string v5, "user"

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string v6, "regtime"

    aput-object v6, v4, v5

    const-string v5, "account_id"

    aput-object v5, v4, v8

    const/4 v5, 0x4

    const-string v6, "update_time"

    aput-object v6, v4, v5

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 54
    iget-object v1, p0, Lxyz/xdxn/asktao/Fragment3$100000000;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v1}, Lxyz/xdxn/asktao/Fragment3;->access$L1000000(Lxyz/xdxn/asktao/Fragment3;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 55
    :cond_2
    const-string v1, "EXEC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v7, :cond_0

    .line 57
    iget-object v1, p0, Lxyz/xdxn/asktao/Fragment3$100000000;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v1}, Lxyz/xdxn/asktao/Fragment3;->access$L1000000(Lxyz/xdxn/asktao/Fragment3;)Landroid/widget/ListView;

    move-result-object v1

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000000;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment3;->access$L1000002(Lxyz/xdxn/asktao/Fragment3;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v0

    invoke-virtual {v0}, Lxyz/xdxn/asktao/GlobalVariable;->getLoadingDialog()Lxyz/xdxn/asktao/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lxyz/xdxn/asktao/LoadingDialog;->show()V

    .line 59
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000000;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-virtual {v0}, Lxyz/xdxn/asktao/Fragment3;->getUserList()V

    goto :goto_0

    .line 53
    nop

    :array_0
    .array-data 0x4
        0x20t 0x0t 0x8t 0x7ft
        0x21t 0x0t 0x8t 0x7ft
        0x23t 0x0t 0x8t 0x7ft
        0x22t 0x0t 0x8t 0x7ft
        0x24t 0x0t 0x8t 0x7ft
    .end array-data
.end method
