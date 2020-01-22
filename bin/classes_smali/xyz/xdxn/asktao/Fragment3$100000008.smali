.class Lxyz/xdxn/asktao/Fragment3$100000008;
.super Ljava/lang/Object;
.source "Fragment3.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/xdxn/asktao/Fragment3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000008"
.end annotation


# instance fields
.field private final this$0:Lxyz/xdxn/asktao/Fragment3;

.field private final val$deleted:I

.field private final val$id:I


# direct methods
.method constructor <init>(Lxyz/xdxn/asktao/Fragment3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment3$100000008;->this$0:Lxyz/xdxn/asktao/Fragment3;

    iput p2, p0, Lxyz/xdxn/asktao/Fragment3$100000008;->val$deleted:I

    iput p3, p0, Lxyz/xdxn/asktao/Fragment3$100000008;->val$id:I

    return-void
.end method

.method static access$0(Lxyz/xdxn/asktao/Fragment3$100000008;)Lxyz/xdxn/asktao/Fragment3;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000008;->this$0:Lxyz/xdxn/asktao/Fragment3;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 274
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "UPDATE `characters` SET `deleted` = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lxyz/xdxn/asktao/Fragment3$100000008;->val$deleted:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' WHERE `characters`.`id` ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lxyz/xdxn/asktao/Fragment3$100000008;->val$id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lxyz/xdxn/asktao/Fragment3$100000008;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v1}, Lxyz/xdxn/asktao/Fragment3;->access$L1000002(Lxyz/xdxn/asktao/Fragment3;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v1

    invoke-virtual {v1}, Lxyz/xdxn/asktao/GlobalVariable;->getStmt()Ljava/sql/Statement;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    move-result v0

    .line 276
    if-lez v0, :cond_1

    .line 278
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000008;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment3;->access$L1000002(Lxyz/xdxn/asktao/Fragment3;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "MSG"

    iget v0, p0, Lxyz/xdxn/asktao/Fragment3$100000008;->val$deleted:I

    if-ne v0, v4, :cond_0

    const-string v0, "封号成功！"

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lxyz/xdxn/asktao/GlobalVariable;->sendBroadMsg(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 287
    :goto_1
    return-void

    .line 278
    :cond_0
    const-string v0, "解封成功！"

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000008;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment3;->access$L1000002(Lxyz/xdxn/asktao/Fragment3;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "MSG"

    iget v0, p0, Lxyz/xdxn/asktao/Fragment3$100000008;->val$deleted:I

    if-ne v0, v4, :cond_2

    const-string v0, "封号失败！"

    :goto_2
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lxyz/xdxn/asktao/GlobalVariable;->sendBroadMsg(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 287
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000008;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment3;->access$L1000002(Lxyz/xdxn/asktao/Fragment3;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v0

    const-string v1, "MSG"

    const-string v2, "操作失败，请检查网络状况！"

    invoke-virtual {v0, v6, v1, v2, v5}, Lxyz/xdxn/asktao/GlobalVariable;->sendBroadMsg(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 282
    :cond_2
    :try_start_1
    const-string v0, "解封失败！"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
