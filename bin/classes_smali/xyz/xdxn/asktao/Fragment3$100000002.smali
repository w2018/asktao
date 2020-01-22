.class Lxyz/xdxn/asktao/Fragment3$100000002;
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
    name = "100000002"
.end annotation


# instance fields
.field private final this$0:Lxyz/xdxn/asktao/Fragment3;

.field private final val$edit_gm_key:Landroid/widget/EditText;

.field private final val$edit_gm_passwd:Landroid/widget/EditText;

.field private final val$id:I


# direct methods
.method constructor <init>(Lxyz/xdxn/asktao/Fragment3;Landroid/widget/EditText;Landroid/widget/EditText;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment3$100000002;->this$0:Lxyz/xdxn/asktao/Fragment3;

    iput-object p2, p0, Lxyz/xdxn/asktao/Fragment3$100000002;->val$edit_gm_passwd:Landroid/widget/EditText;

    iput-object p3, p0, Lxyz/xdxn/asktao/Fragment3$100000002;->val$edit_gm_key:Landroid/widget/EditText;

    iput p4, p0, Lxyz/xdxn/asktao/Fragment3$100000002;->val$id:I

    return-void
.end method

.method static access$0(Lxyz/xdxn/asktao/Fragment3$100000002;)Lxyz/xdxn/asktao/Fragment3;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000002;->this$0:Lxyz/xdxn/asktao/Fragment3;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
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
    const/4 v1, 0x1

    .line 148
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000002;->val$edit_gm_passwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000002;->val$edit_gm_key:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 150
    iget-object v1, p0, Lxyz/xdxn/asktao/Fragment3$100000002;->this$0:Lxyz/xdxn/asktao/Fragment3;

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000002;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment3;->access$L1000001(Lxyz/xdxn/asktao/Fragment3;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lxyz/xdxn/asktao/Fragment3$100000002;->val$id:I

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

    iget-object v2, p0, Lxyz/xdxn/asktao/Fragment3$100000002;->val$edit_gm_passwd:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lxyz/xdxn/asktao/Fragment3$100000002;->val$edit_gm_key:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lxyz/xdxn/asktao/Fragment3;->mUpdatePassWorld(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
