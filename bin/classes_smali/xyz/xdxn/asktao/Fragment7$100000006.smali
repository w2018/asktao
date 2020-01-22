.class Lxyz/xdxn/asktao/Fragment7$100000006;
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
    name = "100000006"
.end annotation


# instance fields
.field private final this$0:Lxyz/xdxn/asktao/Fragment7;


# direct methods
.method constructor <init>(Lxyz/xdxn/asktao/Fragment7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment7$100000006;->this$0:Lxyz/xdxn/asktao/Fragment7;

    return-void
.end method

.method static access$0(Lxyz/xdxn/asktao/Fragment7$100000006;)Lxyz/xdxn/asktao/Fragment7;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment7$100000006;->this$0:Lxyz/xdxn/asktao/Fragment7;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
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
    .line 114
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment7$100000006;->this$0:Lxyz/xdxn/asktao/Fragment7;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment7;->access$L1000002(Lxyz/xdxn/asktao/Fragment7;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lxyz/xdxn/asktao/Fragment7$100000006;->this$0:Lxyz/xdxn/asktao/Fragment7;

    invoke-static {v1}, Lxyz/xdxn/asktao/Fragment7;->access$L1000000(Lxyz/xdxn/asktao/Fragment7;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
