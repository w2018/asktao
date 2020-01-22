.class Lxyz/xdxn/asktao/Fragment7$100000003;
.super Ljava/lang/Object;
.source "Fragment7.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/xdxn/asktao/Fragment7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000003"
.end annotation


# instance fields
.field private final this$0:Lxyz/xdxn/asktao/Fragment7;


# direct methods
.method constructor <init>(Lxyz/xdxn/asktao/Fragment7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment7$100000003;->this$0:Lxyz/xdxn/asktao/Fragment7;

    return-void
.end method

.method static access$0(Lxyz/xdxn/asktao/Fragment7$100000003;)Lxyz/xdxn/asktao/Fragment7;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment7$100000003;->this$0:Lxyz/xdxn/asktao/Fragment7;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment7$100000003;->this$0:Lxyz/xdxn/asktao/Fragment7;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment7;->access$L1000000(Lxyz/xdxn/asktao/Fragment7;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lxyz/xdxn/asktao/Fragment7$100000003;->this$0:Lxyz/xdxn/asktao/Fragment7;

    invoke-static {v2}, Lxyz/xdxn/asktao/Fragment7;->access$L1000000(Lxyz/xdxn/asktao/Fragment7;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 84
    iget-object v1, p0, Lxyz/xdxn/asktao/Fragment7$100000003;->this$0:Lxyz/xdxn/asktao/Fragment7;

    invoke-virtual {v1}, Lxyz/xdxn/asktao/Fragment7;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
