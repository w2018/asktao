.class public Lcom/mysql/jdbc/BestResponseTimeBalanceStrategy;
.super Ljava/lang/Object;
.source "BestResponseTimeBalanceStrategy.java"

# interfaces
.implements Lcom/mysql/jdbc/BalanceStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 38
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
    .line 42
    return-void
.end method

.method public pickConnection(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;Ljava/util/Map;[JI)Lcom/mysql/jdbc/ConnectionImpl;
    .locals 9
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
    .line 47
    invoke-virtual {p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v3

    .line 49
    const/4 v0, 0x0

    .line 51
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p5, :cond_5

    .line 52
    const-wide v4, 0x7fffffffffffffffL

    .line 54
    const/4 v1, 0x0

    .line 57
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v0, v6, :cond_0

    .line 58
    invoke-virtual {p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v3

    .line 61
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v6, p4

    if-ge v0, v6, :cond_7

    .line 62
    aget-wide v6, p4, v0

    .line 64
    cmp-long v8, v6, v4

    if-gez v8, :cond_3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 65
    const-wide/16 v4, 0x0

    cmp-long v1, v6, v4

    if-nez v1, :cond_2

    .line 76
    :goto_2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ConnectionImpl;

    .line 80
    if-nez v1, :cond_1

    .line 82
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->createConnectionForHost(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionImpl;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 113
    :cond_1
    :goto_3
    return-object v1

    :cond_2
    move v1, v0

    move-wide v4, v6

    .line 61
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    :catch_0
    move-exception v4

    .line 86
    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addToGlobalBlacklist(Ljava/lang/String;)V

    .line 88
    const/4 v1, 0x0

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 91
    add-int/lit8 v0, v2, 0x1

    .line 93
    const-wide/16 v1, 0xfa

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    :goto_4
    invoke-virtual {p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v1

    :goto_5
    move v2, v0

    move-object v3, v1

    move-object v0, v4

    .line 99
    goto :goto_0

    .line 102
    :cond_4
    throw v4

    .line 109
    :cond_5
    if-eqz v0, :cond_6

    .line 110
    throw v0

    .line 113
    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    .line 94
    :catch_1
    move-exception v1

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    move v0, v2

    move-object v1, v3

    goto :goto_5
.end method
