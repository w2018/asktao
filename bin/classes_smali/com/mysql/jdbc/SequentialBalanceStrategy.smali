.class public Lcom/mysql/jdbc/SequentialBalanceStrategy;
.super Ljava/lang/Object;
.source "SequentialBalanceStrategy.java"

# interfaces
.implements Lcom/mysql/jdbc/BalanceStrategy;


# instance fields
.field private currentHostIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    .line 40
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 44
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
    .line 48
    return-void
.end method

.method public pickConnection(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;Ljava/util/Map;[JI)Lcom/mysql/jdbc/ConnectionImpl;
    .locals 8
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
    .line 52
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .line 54
    const/4 v1, 0x0

    .line 56
    invoke-virtual {p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v0

    .line 58
    const/4 v5, 0x0

    move-object v2, v0

    move-object v3, v1

    :goto_0
    if-ge v5, p5, :cond_c

    .line 59
    const/4 v0, 0x1

    if-ne v4, v0, :cond_2

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    .line 127
    :cond_0
    iget v0, p0, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ConnectionImpl;

    .line 131
    if-nez v1, :cond_1

    .line 133
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->createConnectionForHost(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionImpl;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 159
    :cond_1
    :goto_1
    return-object v1

    .line 61
    :cond_2
    iget v0, p0, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 62
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    int-to-double v6, v4

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v1, v0

    move v0, v1

    .line 64
    :goto_2
    if-ge v0, v4, :cond_3

    .line 65
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 66
    iput v0, p0, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    .line 71
    :cond_3
    iget v0, p0, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    const/4 v6, -0x1

    if-ne v0, v6, :cond_4

    .line 72
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_4

    .line 73
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 74
    iput v0, p0, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    .line 80
    :cond_4
    iget v0, p0, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v0

    .line 85
    const-wide/16 v1, 0xfa

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v0

    .line 87
    goto :goto_0

    .line 64
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 72
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 86
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 89
    goto :goto_0

    .line 93
    :cond_7
    iget v0, p0, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 94
    const/4 v1, 0x0

    .line 96
    :goto_4
    if-ge v0, v4, :cond_8

    .line 97
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 98
    iput v0, p0, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    .line 99
    const/4 v1, 0x1

    .line 104
    :cond_8
    if-nez v1, :cond_e

    .line 105
    const/4 v0, 0x0

    :goto_5
    iget v6, p0, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    if-ge v0, v6, :cond_e

    .line 106
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 107
    iput v0, p0, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    .line 108
    const/4 v0, 0x1

    .line 114
    :goto_6
    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v0

    .line 119
    const-wide/16 v1, 0xfa

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v0

    .line 121
    goto/16 :goto_0

    .line 96
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 105
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 120
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 123
    goto/16 :goto_0

    .line 134
    :catch_2
    move-exception v1

    .line 137
    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 139
    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addToGlobalBlacklist(Ljava/lang/String;)V

    .line 142
    const-wide/16 v6, 0xfa

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_7
    move-object v3, v1

    .line 146
    goto/16 :goto_0

    .line 148
    :cond_b
    throw v1

    .line 155
    :cond_c
    if-eqz v3, :cond_d

    .line 156
    throw v3

    .line 159
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 143
    :catch_3
    move-exception v0

    goto :goto_7

    :cond_e
    move v0, v1

    goto :goto_6
.end method
