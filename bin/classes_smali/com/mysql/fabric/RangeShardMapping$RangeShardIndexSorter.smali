.class Lcom/mysql/fabric/RangeShardMapping$RangeShardIndexSorter;
.super Ljava/lang/Object;
.source "RangeShardMapping.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/fabric/RangeShardMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RangeShardIndexSorter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/mysql/fabric/ShardIndex;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/mysql/fabric/RangeShardMapping$RangeShardIndexSorter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/mysql/fabric/RangeShardMapping$RangeShardIndexSorter;

    invoke-direct {v0}, Lcom/mysql/fabric/RangeShardMapping$RangeShardIndexSorter;-><init>()V

    sput-object v0, Lcom/mysql/fabric/RangeShardMapping$RangeShardIndexSorter;->instance:Lcom/mysql/fabric/RangeShardMapping$RangeShardIndexSorter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mysql/fabric/ShardIndex;Lcom/mysql/fabric/ShardIndex;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/mysql/fabric/ShardIndex;->getBound()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 42
    invoke-virtual {p2}, Lcom/mysql/fabric/ShardIndex;->getBound()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    check-cast p1, Lcom/mysql/fabric/ShardIndex;

    check-cast p2, Lcom/mysql/fabric/ShardIndex;

    invoke-virtual {p0, p1, p2}, Lcom/mysql/fabric/RangeShardMapping$RangeShardIndexSorter;->compare(Lcom/mysql/fabric/ShardIndex;Lcom/mysql/fabric/ShardIndex;)I

    move-result v0

    return v0
.end method
