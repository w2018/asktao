.class Lxyz/xdxn/asktao/Fragment3$100000001;
.super Ljava/lang/Object;
.source "Fragment3.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/xdxn/asktao/Fragment3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# instance fields
.field private final this$0:Lxyz/xdxn/asktao/Fragment3;

.field private final val$edit_cz_coin:Landroid/widget/EditText;

.field private final val$id:I


# direct methods
.method constructor <init>(Lxyz/xdxn/asktao/Fragment3;ILandroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment3$100000001;->this$0:Lxyz/xdxn/asktao/Fragment3;

    iput p2, p0, Lxyz/xdxn/asktao/Fragment3$100000001;->val$id:I

    iput-object p3, p0, Lxyz/xdxn/asktao/Fragment3$100000001;->val$edit_cz_coin:Landroid/widget/EditText;

    return-void
.end method

.method static access$0(Lxyz/xdxn/asktao/Fragment3$100000001;)Lxyz/xdxn/asktao/Fragment3;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000001;->this$0:Lxyz/xdxn/asktao/Fragment3;

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
    .line 133
    iget-object v1, p0, Lxyz/xdxn/asktao/Fragment3$100000001;->this$0:Lxyz/xdxn/asktao/Fragment3;

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000001;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment3;->access$L1000001(Lxyz/xdxn/asktao/Fragment3;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lxyz/xdxn/asktao/Fragment3$100000001;->val$id:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "account_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lxyz/xdxn/asktao/Fragment3$100000001;->val$edit_cz_coin:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lxyz/xdxn/asktao/Fragment3;->mInsertCoin(II)V

    return-void
.end method
