.class public Lcom/mysql/jdbc/RandomBalanceStrategy;
.super Ljava/lang/Object;
.source "RandomBalanceStrategy.java"

# interfaces
.implements Lcom/mysql/jdbc/BalanceStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private getArrayIndexMap(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 123
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 124
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    return-object v1
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 44
    return-void
.end method

.method public pickConnection(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;Ljava/util/Map;[JI)Lcom/mysql/jdbc/ConnectionImpl;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mysql/jdbc/LoadBalancedConnectionProxy;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/ConnectionImpl;",
            ">;[JI)",
            "Lcom/mysql/jdbc/ConnectionImpl;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 48
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    .line 52
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    invoke-interface {v7, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    invoke-virtual {p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 59
    invoke-direct {p0, v7}, Lcom/mysql/jdbc/RandomBalanceStrategy;->getArrayIndexMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 61
    const/4 v3, 0x0

    move-object v0, v4

    :goto_0
    if-ge v3, p5, :cond_3

    .line 62
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    int-to-double v8, v5

    mul-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 63
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 64
    const-string v0, "No hosts configured"

    invoke-static {v0, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 67
    :cond_0
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 69
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionImpl;

    .line 71
    if-nez v0, :cond_1

    .line 73
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->createConnectionForHost(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionImpl;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 118
    :cond_1
    :goto_1
    return-object v0

    .line 74
    :catch_0
    move-exception v5

    .line 77
    invoke-virtual {p1, v5}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 82
    if-eqz v0, :cond_6

    .line 83
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v7, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 84
    invoke-direct {p0, v7}, Lcom/mysql/jdbc/RandomBalanceStrategy;->getArrayIndexMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 86
    :goto_2
    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addToGlobalBlacklist(Ljava/lang/String;)V

    .line 88
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 89
    add-int/lit8 v0, v3, 0x1

    .line 91
    const-wide/16 v1, 0xfa

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    :goto_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 97
    invoke-interface {v7, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    invoke-virtual {p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v1

    .line 100
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 101
    invoke-direct {p0, v7}, Lcom/mysql/jdbc/RandomBalanceStrategy;->getArrayIndexMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    :goto_4
    move v3, v0

    move-object v2, v1

    move-object v0, v5

    .line 104
    goto :goto_0

    .line 107
    :cond_2
    throw v5

    .line 114
    :cond_3
    if-eqz v0, :cond_4

    .line 115
    throw v0

    :cond_4
    move-object v0, v4

    .line 118
    goto :goto_1

    .line 92
    :catch_1
    move-exception v1

    goto :goto_3

    :cond_5
    move-object v1, v0

    move v0, v3

    goto :goto_4

    :cond_6
    move-object v0, v2

    goto :goto_2
.end method
