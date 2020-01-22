.class public Lcom/mysql/fabric/RangeShardMapping;
.super Lcom/mysql/fabric/ShardMapping;
.source "RangeShardMapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/fabric/RangeShardMapping$RangeShardIndexSorter;
    }
.end annotation


# direct methods
.method public constructor <init>(ILcom/mysql/fabric/ShardingType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/mysql/fabric/ShardingType;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/mysql/fabric/ShardTable;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/mysql/fabric/ShardIndex;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v5, Ljava/util/TreeSet;

    sget-object v0, Lcom/mysql/fabric/RangeShardMapping$RangeShardIndexSorter;->instance:Lcom/mysql/fabric/RangeShardMapping$RangeShardIndexSorter;

    invoke-direct {v5, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/mysql/fabric/ShardMapping;-><init>(ILcom/mysql/fabric/ShardingType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 53
    iget-object v0, p0, Lcom/mysql/fabric/RangeShardMapping;->shardIndices:Ljava/util/Set;

    invoke-interface {v0, p5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 54
    return-void
.end method


# virtual methods
.method protected getShardIndexForKey(Ljava/lang/String;)Lcom/mysql/fabric/ShardIndex;
    .locals 5
    .parameter

    .prologue
    .line 63
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 65
    iget-object v0, p0, Lcom/mysql/fabric/RangeShardMapping;->shardIndices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/ShardIndex;

    .line 66
    invoke-virtual {v0}, Lcom/mysql/fabric/ShardIndex;->getBound()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 67
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v4, v3, :cond_0

    .line 71
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
