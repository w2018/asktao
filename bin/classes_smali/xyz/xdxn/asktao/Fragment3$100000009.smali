.class Lxyz/xdxn/asktao/Fragment3$100000009;
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
    name = "100000009"
.end annotation


# instance fields
.field private final this$0:Lxyz/xdxn/asktao/Fragment3;

.field private final val$account_id:I

.field private final val$all:Z

.field private final val$id:I


# direct methods
.method constructor <init>(Lxyz/xdxn/asktao/Fragment3;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment3$100000009;->this$0:Lxyz/xdxn/asktao/Fragment3;

    iput p2, p0, Lxyz/xdxn/asktao/Fragment3$100000009;->val$id:I

    iput p3, p0, Lxyz/xdxn/asktao/Fragment3$100000009;->val$account_id:I

    iput-boolean p4, p0, Lxyz/xdxn/asktao/Fragment3$100000009;->val$all:Z

    return-void
.end method

.method static access$0(Lxyz/xdxn/asktao/Fragment3$100000009;)Lxyz/xdxn/asktao/Fragment3;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000009;->this$0:Lxyz/xdxn/asktao/Fragment3;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v2, 0x0

    .line 304
    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "DELETE FROM `characters` WHERE `characters`.`id` ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lxyz/xdxn/asktao/Fragment3$100000009;->val$id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 305
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "DELETE FROM `accounts` WHERE `accounts`.`id` ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p0, Lxyz/xdxn/asktao/Fragment3$100000009;->val$account_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "DELETE FROM `characters` WHERE `characters`.`id` ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p0, Lxyz/xdxn/asktao/Fragment3$100000009;->val$id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 306
    iget-boolean v3, p0, Lxyz/xdxn/asktao/Fragment3$100000009;->val$all:Z

    if-eqz v3, :cond_0

    :goto_0
    move v1, v2

    .line 315
    :goto_1
    array-length v3, v0

    if-lt v1, v3, :cond_1

    .line 321
    :goto_2
    return-void

    :cond_0
    move-object v0, v1

    .line 306
    goto :goto_0

    :cond_1
    aget-object v3, v0, v1

    .line 308
    iget-object v4, p0, Lxyz/xdxn/asktao/Fragment3$100000009;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v4}, Lxyz/xdxn/asktao/Fragment3;->access$L1000002(Lxyz/xdxn/asktao/Fragment3;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v4

    invoke-virtual {v4}, Lxyz/xdxn/asktao/GlobalVariable;->getStmt()Ljava/sql/Statement;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    move-result v3

    .line 309
    if-lez v3, :cond_2

    .line 311
    iget-object v3, p0, Lxyz/xdxn/asktao/Fragment3$100000009;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v3}, Lxyz/xdxn/asktao/Fragment3;->access$L1000002(Lxyz/xdxn/asktao/Fragment3;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v3

    const/4 v4, 0x3

    const-string v5, "MSG"

    const-string v6, "成功删除账号！"

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lxyz/xdxn/asktao/GlobalVariable;->sendBroadMsg(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 315
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lxyz/xdxn/asktao/Fragment3$100000009;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v3}, Lxyz/xdxn/asktao/Fragment3;->access$L1000002(Lxyz/xdxn/asktao/Fragment3;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v3

    const/4 v4, 0x3

    const-string v5, "MSG"

    const-string v6, "删除失败 或 账号不存在！"

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lxyz/xdxn/asktao/GlobalVariable;->sendBroadMsg(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 321
    iget-object v1, p0, Lxyz/xdxn/asktao/Fragment3$100000009;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v1}, Lxyz/xdxn/asktao/Fragment3;->access$L1000002(Lxyz/xdxn/asktao/Fragment3;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v1

    const-string v3, "MSG"

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "删除失败！"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v8, v3, v0, v2}, Lxyz/xdxn/asktao/GlobalVariable;->sendBroadMsg(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2
.end method
