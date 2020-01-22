.class public Lcom/mysql/jdbc/ServerAffinityStrategy;
.super Lcom/mysql/jdbc/RandomBalanceStrategy;
.source "ServerAffinityStrategy.java"


# static fields
.field public static final AFFINITY_ORDER:Ljava/lang/String; = "serverAffinityOrder"


# instance fields
.field public affinityOrderedServers:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mysql/jdbc/RandomBalanceStrategy;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ServerAffinityStrategy;->affinityOrderedServers:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/RandomBalanceStrategy;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 38
    const-string v0, "serverAffinityOrder"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ServerAffinityStrategy;->affinityOrderedServers:[Ljava/lang/String;

    .line 42
    :cond_0
    return-void
.end method

.method public pickConnection(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;Ljava/util/Map;[JI)Lcom/mysql/jdbc/ConnectionImpl;
    .locals 6
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
    iget-object v0, p0, Lcom/mysql/jdbc/ServerAffinityStrategy;->affinityOrderedServers:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 48
    invoke-super/range {p0 .. p5}, Lcom/mysql/jdbc/RandomBalanceStrategy;->pickConnection(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;Ljava/util/Map;[JI)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v0

    .line 70
    :cond_0
    :goto_0
    return-object v0

    .line 50
    :cond_1
    invoke-virtual {p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v2

    .line 52
    iget-object v3, p0, Lcom/mysql/jdbc/ServerAffinityStrategy;->affinityOrderedServers:[Ljava/lang/String;

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, v3, v1

    .line 53
    invoke-interface {p2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 54
    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionImpl;

    .line 55
    if-nez v0, :cond_0

    .line 59
    :try_start_0
    invoke-virtual {p1, v5}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->createConnectionForHost(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionImpl;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    invoke-virtual {p1, v5}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addToGlobalBlacklist(Ljava/lang/String;)V

    .line 52
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 70
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/mysql/jdbc/RandomBalanceStrategy;->pickConnection(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;Ljava/util/Map;[JI)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v0

    goto :goto_0
.end method
