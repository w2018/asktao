.class Lxyz/xdxn/asktao/Online;
.super Ljava/lang/Object;
.source "Fragment3.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private update_time:J


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    const-string v0, "update_time"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lxyz/xdxn/asktao/Online;->update_time:J

    return-void
.end method


# virtual methods
.method public bridge compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lxyz/xdxn/asktao/Online;->compareTo(Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/Map;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 532
    iget-wide v0, p0, Lxyz/xdxn/asktao/Online;->update_time:J

    invoke-virtual {p0}, Lxyz/xdxn/asktao/Online;->getUpdatetime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getUpdatetime()J
    .locals 2

    .prologue
    .line 515
    iget-wide v0, p0, Lxyz/xdxn/asktao/Online;->update_time:J

    return-wide v0
.end method

.method public setUpdate_time(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 520
    int-to-long v0, p1

    iput-wide v0, p0, Lxyz/xdxn/asktao/Online;->update_time:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 526
    const-string v0, ""

    return-object v0
.end method
