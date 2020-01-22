.class Lxyz/xdxn/asktao/Fragment3$100000010;
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
    name = "100000010"
.end annotation


# instance fields
.field private final this$0:Lxyz/xdxn/asktao/Fragment3;

.field private final val$coin:I

.field private final val$id:I


# direct methods
.method constructor <init>(Lxyz/xdxn/asktao/Fragment3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment3$100000010;->this$0:Lxyz/xdxn/asktao/Fragment3;

    iput p2, p0, Lxyz/xdxn/asktao/Fragment3$100000010;->val$id:I

    iput p3, p0, Lxyz/xdxn/asktao/Fragment3$100000010;->val$coin:I

    return-void
.end method

.method static access$0(Lxyz/xdxn/asktao/Fragment3$100000010;)Lxyz/xdxn/asktao/Fragment3;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000010;->this$0:Lxyz/xdxn/asktao/Fragment3;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    .line 338
    const/4 v0, 0x0

    :try_start_0
    check-cast v0, Ljava/lang/String;

    .line 339
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "SELECT * FROM `accounts` WHERE `id` = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lxyz/xdxn/asktao/Fragment3$100000010;->val$id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\' LIMIT 0, 10"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    iget-object v1, p0, Lxyz/xdxn/asktao/Fragment3$100000010;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v1}, Lxyz/xdxn/asktao/Fragment3;->access$L1000002(Lxyz/xdxn/asktao/Fragment3;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v1

    invoke-virtual {v1}, Lxyz/xdxn/asktao/GlobalVariable;->getStmt()Ljava/sql/Statement;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    .line 341
    :cond_0
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-nez v1, :cond_1

    .line 364
    :goto_0
    return-void

    .line 343
    :cond_1
    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const/16 v4, 0x2327

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const/16 v4, 0x3e8

    int-to-double v4, v4

    add-double/2addr v2, v4

    double-to-int v2, v2

    .line 345
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "INSERT INTO `charge` (`accountname`, `coin`, `state`, `add_time`, `update_time`, `deleted`, `money`, `code`)VALUES (\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\', "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget v7, p0, Lxyz/xdxn/asktao/Fragment3$100000010;->val$coin:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", 0, now(), now(), 0, 0, \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 347
    iget-object v4, p0, Lxyz/xdxn/asktao/Fragment3$100000010;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v4}, Lxyz/xdxn/asktao/Fragment3;->access$L1000002(Lxyz/xdxn/asktao/Fragment3;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v4

    invoke-virtual {v4}, Lxyz/xdxn/asktao/GlobalVariable;->getStmt()Ljava/sql/Statement;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    move-result v3

    .line 348
    if-lez v3, :cond_0

    .line 350
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "SELECT * FROM `charge` WHERE `accountname` = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v7, "\' AND `coin` = \'"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v6, p0, Lxyz/xdxn/asktao/Fragment3$100000010;->val$coin:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "\' AND `code` = \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' LIMIT 0, 100"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 352
    iget-object v2, p0, Lxyz/xdxn/asktao/Fragment3$100000010;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v2}, Lxyz/xdxn/asktao/Fragment3;->access$L1000002(Lxyz/xdxn/asktao/Fragment3;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v2

    invoke-virtual {v2}, Lxyz/xdxn/asktao/GlobalVariable;->getStmt()Ljava/sql/Statement;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    .line 353
    :goto_1
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    const-string v2, "coin"

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 356
    const-string v3, "accountname"

    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 357
    iget-object v4, p0, Lxyz/xdxn/asktao/Fragment3$100000010;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v4}, Lxyz/xdxn/asktao/Fragment3;->access$L1000002(Lxyz/xdxn/asktao/Fragment3;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v4

    const/4 v5, 0x3

    const-string v6, "MSG"

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "充值成功 | 用户: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v8, " | 元宝数: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v4, v5, v6, v2, v3}, Lxyz/xdxn/asktao/GlobalVariable;->sendBroadMsg(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 341
    :catch_0
    move-exception v0

    .line 364
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000010;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment3;->access$L1000002(Lxyz/xdxn/asktao/Fragment3;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v0

    const-string v1, "MSG"

    const-string v2, "充值失败，请检查网络状况！"

    invoke-virtual {v0, v12, v1, v2, v11}, Lxyz/xdxn/asktao/GlobalVariable;->sendBroadMsg(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method
