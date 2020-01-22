.class Lxyz/xdxn/asktao/Fragment3$100000013;
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
    name = "100000013"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxyz/xdxn/asktao/Fragment3$100000013$100000012;
    }
.end annotation


# instance fields
.field private final this$0:Lxyz/xdxn/asktao/Fragment3;


# direct methods
.method constructor <init>(Lxyz/xdxn/asktao/Fragment3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment3$100000013;->this$0:Lxyz/xdxn/asktao/Fragment3;

    return-void
.end method

.method static access$0(Lxyz/xdxn/asktao/Fragment3$100000013;)Lxyz/xdxn/asktao/Fragment3;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000013;->this$0:Lxyz/xdxn/asktao/Fragment3;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 398
    :try_start_0
    const-string v0, "SELECT * FROM `characters` LIMIT 0, 5000"

    .line 400
    iget-object v1, p0, Lxyz/xdxn/asktao/Fragment3$100000013;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v1}, Lxyz/xdxn/asktao/Fragment3;->access$L1000002(Lxyz/xdxn/asktao/Fragment3;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v1

    invoke-virtual {v1}, Lxyz/xdxn/asktao/GlobalVariable;->getStmt()Ljava/sql/Statement;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    .line 401
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000013;->this$0:Lxyz/xdxn/asktao/Fragment3;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v2}, Lxyz/xdxn/asktao/Fragment3;->access$S1000001(Lxyz/xdxn/asktao/Fragment3;Ljava/util/List;)V

    .line 402
    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000013;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment3;->access$L1000002(Lxyz/xdxn/asktao/Fragment3;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "DATA"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lxyz/xdxn/asktao/GlobalVariable;->sendBroadMsg(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 447
    :goto_1
    return-void

    .line 404
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 405
    const-string v0, "update_time"

    invoke-interface {v1, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 406
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000013;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment3;->access$L1000002(Lxyz/xdxn/asktao/Fragment3;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v0

    invoke-virtual {v0, v3}, Lxyz/xdxn/asktao/GlobalVariable;->getTimeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const/16 v0, 0x3e8

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    .line 408
    const-string v0, "image"

    const v4, 0x7f020006

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :goto_2
    const-string v0, "user"

    const-string v4, "name"

    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string v0, "regtime"

    const-string v4, "add_time"

    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    const-string v0, "account_id"

    const-string v4, "account_id"

    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string v0, "id"

    const-string v4, "id"

    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string v0, "data"

    const-string v4, "data"

    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v0, "update_time"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v0, "deleted"

    const-string v3, "deleted"

    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000013;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment3;->access$L1000001(Lxyz/xdxn/asktao/Fragment3;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000013;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment3;->access$L1000001(Lxyz/xdxn/asktao/Fragment3;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lxyz/xdxn/asktao/Fragment3$100000013$100000012;

    invoke-direct {v2, p0}, Lxyz/xdxn/asktao/Fragment3$100000013$100000012;-><init>(Lxyz/xdxn/asktao/Fragment3$100000013;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 443
    :catch_0
    move-exception v0

    .line 447
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000013;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment3;->access$L1000002(Lxyz/xdxn/asktao/Fragment3;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v0

    const-string v1, "MSG"

    iget-object v2, p0, Lxyz/xdxn/asktao/Fragment3$100000013;->this$0:Lxyz/xdxn/asktao/Fragment3;

    const v3, 0x7f05001a

    invoke-virtual {v2, v3}, Lxyz/xdxn/asktao/Fragment3;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v1, v2, v8}, Lxyz/xdxn/asktao/GlobalVariable;->sendBroadMsg(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 412
    :cond_1
    :try_start_1
    const-string v0, "image"

    const v4, 0x7f020005

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
