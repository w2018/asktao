.class Lxyz/xdxn/asktao/Fragment2$100000000;
.super Landroid/content/BroadcastReceiver;
.source "Fragment2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/xdxn/asktao/Fragment2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lxyz/xdxn/asktao/Fragment2;


# direct methods
.method constructor <init>(Lxyz/xdxn/asktao/Fragment2;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    return-void
.end method

.method static access$0(Lxyz/xdxn/asktao/Fragment2$100000000;)Lxyz/xdxn/asktao/Fragment2;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
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
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 23
    const-string v0, "code"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 24
    const-string v1, "type"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    const-string v2, "data"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    iget-object v3, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    const-string v4, "falg"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v3, v4}, Lxyz/xdxn/asktao/Fragment2;->access$S1000010(Lxyz/xdxn/asktao/Fragment2;Z)V

    .line 27
    iget-object v3, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    iget-object v4, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    invoke-static {v4}, Lxyz/xdxn/asktao/Fragment2;->access$L1000000(Lxyz/xdxn/asktao/Fragment2;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v4

    invoke-virtual {v4}, Lxyz/xdxn/asktao/GlobalVariable;->getMysqlStatus()Z

    move-result v4

    invoke-static {v3, v4}, Lxyz/xdxn/asktao/Fragment2;->access$S1000010(Lxyz/xdxn/asktao/Fragment2;Z)V

    .line 28
    if-ne v0, v7, :cond_1

    .line 30
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment2;->access$L1000000(Lxyz/xdxn/asktao/Fragment2;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v0

    invoke-virtual {v0}, Lxyz/xdxn/asktao/GlobalVariable;->getLoadingDialog()Lxyz/xdxn/asktao/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lxyz/xdxn/asktao/LoadingDialog;->dismiss()V

    .line 31
    const-string v0, "MSG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v6, :cond_2

    .line 34
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    invoke-virtual {v0}, Lxyz/xdxn/asktao/Fragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 49
    :cond_0
    :goto_0
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment2;->access$L1000001(Lxyz/xdxn/asktao/Fragment2;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment2;->access$L1000010(Lxyz/xdxn/asktao/Fragment2;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    const v2, 0x7f05000a

    invoke-virtual {v0, v2}, Lxyz/xdxn/asktao/Fragment2;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment2;->access$L1000008(Lxyz/xdxn/asktao/Fragment2;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment2;->access$L1000010(Lxyz/xdxn/asktao/Fragment2;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    const v2, 0x7f05000d

    invoke-virtual {v0, v2}, Lxyz/xdxn/asktao/Fragment2;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment2;->access$L1000008(Lxyz/xdxn/asktao/Fragment2;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment2;->access$L1000010(Lxyz/xdxn/asktao/Fragment2;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, -0xffff01

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment2;->access$L1000010(Lxyz/xdxn/asktao/Fragment2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment2;->access$L1000000(Lxyz/xdxn/asktao/Fragment2;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v0

    invoke-virtual {v0}, Lxyz/xdxn/asktao/GlobalVariable;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 55
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment2;->access$L1000000(Lxyz/xdxn/asktao/Fragment2;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "EXEC"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0, v5}, Lxyz/xdxn/asktao/GlobalVariable;->sendBroadMsg(ILjava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void

    .line 35
    :cond_2
    const-string v0, "DATA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v6, :cond_3

    .line 37
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment2;->access$L1000007(Lxyz/xdxn/asktao/Fragment2;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 38
    :cond_3
    const-string v0, "RECONNECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v6, :cond_0

    .line 40
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment2;->access$L1000010(Lxyz/xdxn/asktao/Fragment2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    invoke-virtual {v0}, Lxyz/xdxn/asktao/Fragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 43
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    invoke-virtual {v0}, Lxyz/xdxn/asktao/Fragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "人物属性修改 安卓版！@小打小闹"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment2;->access$L1000000(Lxyz/xdxn/asktao/Fragment2;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v0

    invoke-virtual {v0}, Lxyz/xdxn/asktao/GlobalVariable;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 45
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    invoke-virtual {v0}, Lxyz/xdxn/asktao/Fragment2;->Connect()V

    goto/16 :goto_0

    .line 49
    :cond_4
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    const v2, 0x7f050009

    invoke-virtual {v0, v2}, Lxyz/xdxn/asktao/Fragment2;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 50
    :cond_5
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000000;->this$0:Lxyz/xdxn/asktao/Fragment2;

    const v2, 0x7f05000e

    invoke-virtual {v0, v2}, Lxyz/xdxn/asktao/Fragment2;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 51
    :cond_6
    const/high16 v0, -0x1

    goto/16 :goto_3
.end method
