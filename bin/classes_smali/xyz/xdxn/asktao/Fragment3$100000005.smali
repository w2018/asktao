.class Lxyz/xdxn/asktao/Fragment3$100000005;
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
    name = "100000005"
.end annotation


# instance fields
.field private final this$0:Lxyz/xdxn/asktao/Fragment3;

.field private final val$code:I

.field private final val$edit_sc_code:Landroid/widget/EditText;

.field private final val$id:I


# direct methods
.method constructor <init>(Lxyz/xdxn/asktao/Fragment3;Landroid/widget/EditText;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment3$100000005;->this$0:Lxyz/xdxn/asktao/Fragment3;

    iput-object p2, p0, Lxyz/xdxn/asktao/Fragment3$100000005;->val$edit_sc_code:Landroid/widget/EditText;

    iput p3, p0, Lxyz/xdxn/asktao/Fragment3$100000005;->val$code:I

    iput p4, p0, Lxyz/xdxn/asktao/Fragment3$100000005;->val$id:I

    return-void
.end method

.method static access$0(Lxyz/xdxn/asktao/Fragment3$100000005;)Lxyz/xdxn/asktao/Fragment3;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000005;->this$0:Lxyz/xdxn/asktao/Fragment3;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
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
    .line 194
    :try_start_0
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000005;->val$edit_sc_code:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lxyz/xdxn/asktao/Fragment3$100000005;->val$code:I

    if-ne v0, v1, :cond_0

    .line 196
    iget-object v1, p0, Lxyz/xdxn/asktao/Fragment3$100000005;->this$0:Lxyz/xdxn/asktao/Fragment3;

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000005;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment3;->access$L1000001(Lxyz/xdxn/asktao/Fragment3;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lxyz/xdxn/asktao/Fragment3$100000005;->val$id:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "account_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000005;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment3;->access$L1000001(Lxyz/xdxn/asktao/Fragment3;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lxyz/xdxn/asktao/Fragment3$100000005;->val$id:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "id"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lxyz/xdxn/asktao/Fragment3;->mDeleteUserData(IIZ)V

    .line 200
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000005;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment3;->access$L1000002(Lxyz/xdxn/asktao/Fragment3;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "MSG"

    const-string v3, "输入不正确"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lxyz/xdxn/asktao/GlobalVariable;->sendBroadMsg(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
