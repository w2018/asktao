.class public Lcom/mysql/fabric/ShardMappingFactory;
.super Ljava/lang/Object;
.source "ShardMappingFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/fabric/ShardMappingFactory$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public createShardMapping(ILcom/mysql/fabric/ShardingType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Lcom/mysql/fabric/ShardMapping;
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
            ">;)",
            "Lcom/mysql/fabric/ShardMapping;"
        }
    .end annotation

    .prologue
    .line 35
    sget-object v0, Lcom/mysql/fabric/ShardMappingFactory$1;->$SwitchMap$com$mysql$fabric$ShardingType:[I

    invoke-virtual {p2}, Lcom/mysql/fabric/ShardingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ShardingType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :pswitch_0
    new-instance v0, Lcom/mysql/fabric/RangeShardMapping;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mysql/fabric/RangeShardMapping;-><init>(ILcom/mysql/fabric/ShardingType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 45
    :goto_0
    return-object v0

    .line 40
    :pswitch_1
    new-instance v0, Lcom/mysql/fabric/HashShardMapping;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mysql/fabric/HashShardMapping;-><init>(ILcom/mysql/fabric/ShardingType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
