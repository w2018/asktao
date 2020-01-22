.class public Lcom/mysql/fabric/HashShardMapping;
.super Lcom/mysql/fabric/ShardMapping;
.source "HashShardMapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/fabric/HashShardMapping$ReverseShardIndexSorter;
    }
.end annotation


# static fields
.field private static final md5Hasher:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/mysql/fabric/HashShardMapping;->md5Hasher:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

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
    .line 57
    new-instance v5, Ljava/util/TreeSet;

    sget-object v0, Lcom/mysql/fabric/HashShardMapping$ReverseShardIndexSorter;->instance:Lcom/mysql/fabric/HashShardMapping$ReverseShardIndexSorter;

    invoke-direct {v5, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/mysql/fabric/ShardMapping;-><init>(ILcom/mysql/fabric/ShardingType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 58
    iget-object v0, p0, Lcom/mysql/fabric/HashShardMapping;->shardIndices:Ljava/util/Set;

    invoke-interface {v0, p5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 59
    return-void
.end method


# virtual methods
.method protected getShardIndexForKey(Ljava/lang/String;)Lcom/mysql/fabric/ShardIndex;
    .locals 5
    .parameter

    .prologue
    .line 64
    sget-object v2, Lcom/mysql/fabric/HashShardMapping;->md5Hasher:Ljava/security/MessageDigest;

    monitor-enter v2

    .line 65
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    sget-object v3, Lcom/mysql/fabric/HashShardMapping;->md5Hasher:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 66
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x20

    if-ge v0, v2, :cond_0

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/mysql/fabric/HashShardMapping;->shardIndices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/ShardIndex;

    .line 74
    invoke-virtual {v0}, Lcom/mysql/fabric/ShardIndex;->getBound()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_1

    .line 81
    :goto_1
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/mysql/fabric/HashShardMapping;->shardIndices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/ShardIndex;

    goto :goto_1
.end method
