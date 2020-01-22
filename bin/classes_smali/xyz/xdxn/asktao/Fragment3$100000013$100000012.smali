.class Lxyz/xdxn/asktao/Fragment3$100000013$100000012;
.super Ljava/lang/Object;
.source "Fragment3.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/xdxn/asktao/Fragment3$100000013;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000012"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final this$0:Lxyz/xdxn/asktao/Fragment3$100000013;


# direct methods
.method constructor <init>(Lxyz/xdxn/asktao/Fragment3$100000013;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment3$100000013$100000012;->this$0:Lxyz/xdxn/asktao/Fragment3$100000013;

    return-void
.end method

.method static access$0(Lxyz/xdxn/asktao/Fragment3$100000013$100000012;)Lxyz/xdxn/asktao/Fragment3$100000013;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000013$100000012;->this$0:Lxyz/xdxn/asktao/Fragment3$100000013;

    return-object v0
.end method


# virtual methods
.method public bridge compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lxyz/xdxn/asktao/Fragment3$100000013$100000012;->compare(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/Map;Ljava/util/Map;)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000013$100000012;->this$0:Lxyz/xdxn/asktao/Fragment3$100000013;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment3$100000013;->access$0(Lxyz/xdxn/asktao/Fragment3$100000013;)Lxyz/xdxn/asktao/Fragment3;

    move-result-object v0

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment3;->access$L1000002(Lxyz/xdxn/asktao/Fragment3;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v0

    const-string v1, "update_time"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxyz/xdxn/asktao/GlobalVariable;->getTimeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 429
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000013$100000012;->this$0:Lxyz/xdxn/asktao/Fragment3$100000013;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment3$100000013;->access$0(Lxyz/xdxn/asktao/Fragment3$100000013;)Lxyz/xdxn/asktao/Fragment3;

    move-result-object v0

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment3;->access$L1000002(Lxyz/xdxn/asktao/Fragment3;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v0

    const-string v3, "update_time"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lxyz/xdxn/asktao/GlobalVariable;->getTimeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 430
    sub-long v0, v3, v1

    long-to-int v0, v0

    .line 431
    if-lez v0, :cond_0

    .line 433
    const/4 v0, 0x1

    .line 439
    :goto_0
    return v0

    .line 435
    :cond_0
    if-gez v0, :cond_1

    .line 437
    const/4 v0, -0x1

    goto :goto_0

    .line 439
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
