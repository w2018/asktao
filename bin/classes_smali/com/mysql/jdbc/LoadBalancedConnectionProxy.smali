.class public Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
.super Lcom/mysql/jdbc/MultiHostConnectionProxy;
.source "LoadBalancedConnectionProxy.java"

# interfaces
.implements Lcom/mysql/jdbc/PingTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/LoadBalancedConnectionProxy$NullLoadBalancedConnectionProxy;
    }
.end annotation


# static fields
.field public static final BLACKLIST_TIMEOUT_PROPERTY_KEY:Ljava/lang/String; = "loadBalanceBlacklistTimeout"

.field public static final HOST_REMOVAL_GRACE_PERIOD_PROPERTY_KEY:Ljava/lang/String; = "loadBalanceHostRemovalGracePeriod"

.field private static INTERFACES_TO_PROXY:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static JDBC_4_LB_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static globalBlacklist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static nullLBConnectionInstance:Lcom/mysql/jdbc/LoadBalancedConnection;


# instance fields
.field private autoCommitSwapThreshold:I

.field private balancer:Lcom/mysql/jdbc/BalanceStrategy;

.field private connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

.field private connectionGroupProxyID:J

.field private connectionsToHostsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/mysql/jdbc/ConnectionImpl;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private exceptionChecker:Lcom/mysql/jdbc/LoadBalanceExceptionChecker;

.field private globalBlacklistTimeout:I

.field private hostRemovalGracePeriod:I

.field private hostsToListIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hostsToRemove:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inTransaction:Z

.field protected liveConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/ConnectionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private responseTimes:[J

.field private retriesAllDown:I

.field private totalPhysicalConnections:J

.field private transactionCount:J

.field private transactionStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    .line 87
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    :try_start_0
    const-string v0, "com.mysql.jdbc.JDBC4LoadBalancedMySQLConnection"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->JDBC_4_LB_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/mysql/jdbc/LoadBalancedConnection;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.mysql.jdbc.JDBC4MySQLConnection"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 861
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->nullLBConnectionInstance:Lcom/mysql/jdbc/LoadBalancedConnection;

    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 94
    :catch_1
    move-exception v0

    .line 95
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 96
    :catch_2
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 100
    :cond_0
    new-array v0, v1, [Ljava/lang/Class;

    const-class v1, Lcom/mysql/jdbc/LoadBalancedConnection;

    aput-object v1, v0, v2

    sput-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/Properties;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 120
    invoke-direct {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;-><init>()V

    .line 56
    iput-object v6, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    .line 57
    iput-wide v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroupProxyID:J

    .line 62
    iput-wide v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->totalPhysicalConnections:J

    .line 67
    iput v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->autoCommitSwapThreshold:I

    .line 70
    iput v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklistTimeout:I

    .line 73
    iput v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostRemovalGracePeriod:I

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToRemove:Ljava/util/Set;

    .line 77
    iput-boolean v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->inTransaction:Z

    .line 78
    iput-wide v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionStartTime:J

    .line 79
    iput-wide v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionCount:J

    .line 122
    const-string v0, "loadBalanceConnectionGroup"

    invoke-virtual {p2, v0, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    const-string v2, "loadBalanceEnableJMX"

    const-string v3, "false"

    invoke-virtual {p2, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 133
    if-eqz v0, :cond_1

    .line 134
    invoke-static {v0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getConnectionGroupInstance(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    .line 135
    if-eqz v2, :cond_0

    .line 136
    invoke-static {}, Lcom/mysql/jdbc/ConnectionGroupManager;->registerJmx()V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    invoke-virtual {v0, p0, p1}, Lcom/mysql/jdbc/ConnectionGroup;->registerConnectionProxy(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroupProxyID:J

    .line 139
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionGroup;->getInitialHosts()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 143
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->initializeHostsSpecs(Ljava/util/List;Ljava/util/Properties;)I

    move-result v2

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    move v0, v1

    .line 147
    :goto_0
    if-ge v0, v2, :cond_2

    .line 148
    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    const-string v0, "LoadBalancedConnectionProxy.badValueForLoadBalanceEnableJMX"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 150
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    .line 151
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    .line 153
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v2, "retriesAllDown"

    const-string v3, "120"

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->retriesAllDown:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v2, "loadBalanceBlacklistTimeout"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklistTimeout:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 171
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v2, "loadBalanceHostRemovalGracePeriod"

    const-string v3, "15000"

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    :try_start_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostRemovalGracePeriod:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 179
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v2, "loadBalanceStrategy"

    const-string v3, "random"

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    const-string v2, "random"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 181
    const-class v0, Lcom/mysql/jdbc/RandomBalanceStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InvalidLoadBalanceStrategy"

    invoke-static {v6, p2, v0, v2, v6}, Lcom/mysql/jdbc/Util;->loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/BalanceStrategy;

    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    .line 193
    :goto_1
    const-string v0, "loadBalanceAutoCommitStatementThreshold"

    const-string v2, "0"

    invoke-virtual {p2, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->autoCommitSwapThreshold:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 201
    const-string v0, "loadBalanceAutoCommitStatementRegex"

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 204
    :try_start_5
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 212
    :cond_3
    iget v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->autoCommitSwapThreshold:I

    if-lez v0, :cond_5

    .line 213
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v2, "statementInterceptors"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    if-nez v0, :cond_9

    .line 215
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v2, "statementInterceptors"

    const-string v3, "com.mysql.jdbc.LoadBalancedAutoCommitInterceptor"

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    :cond_4
    :goto_2
    const-string v0, "statementInterceptors"

    iget-object v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v3, "statementInterceptors"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    :cond_5
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    invoke-interface {v0, v6, p2}, Lcom/mysql/jdbc/BalanceStrategy;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 225
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v2, "loadBalanceExceptionChecker"

    const-string v3, "com.mysql.jdbc.StandardLoadBalanceExceptionChecker"

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    const-string v2, "InvalidLoadBalanceExceptionChecker"

    invoke-static {v6, p2, v0, v2, v6}, Lcom/mysql/jdbc/Util;->loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/LoadBalanceExceptionChecker;

    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->exceptionChecker:Lcom/mysql/jdbc/LoadBalanceExceptionChecker;

    .line 229
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->pickNewConnection()V

    .line 230
    return-void

    .line 156
    :catch_1
    move-exception v2

    .line 157
    const-string v2, "LoadBalancedConnectionProxy.badValueForRetriesAllDown"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 165
    :catch_2
    move-exception v2

    .line 166
    const-string v2, "LoadBalancedConnectionProxy.badValueForLoadBalanceBlacklistTimeout"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 174
    :catch_3
    move-exception v2

    .line 175
    const-string v2, "LoadBalancedConnectionProxy.badValueForLoadBalanceHostRemovalGracePeriod"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 183
    :cond_6
    const-string v2, "bestResponseTime"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 184
    const-class v0, Lcom/mysql/jdbc/BestResponseTimeBalanceStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InvalidLoadBalanceStrategy"

    invoke-static {v6, p2, v0, v2, v6}, Lcom/mysql/jdbc/Util;->loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/BalanceStrategy;

    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    goto/16 :goto_1

    .line 186
    :cond_7
    const-string v2, "serverAffinity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 187
    const-class v0, Lcom/mysql/jdbc/ServerAffinityStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InvalidLoadBalanceStrategy"

    invoke-static {v6, p2, v0, v2, v6}, Lcom/mysql/jdbc/Util;->loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/BalanceStrategy;

    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    goto/16 :goto_1

    .line 190
    :cond_8
    const-string v2, "InvalidLoadBalanceStrategy"

    invoke-static {v6, p2, v0, v2, v6}, Lcom/mysql/jdbc/Util;->loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/BalanceStrategy;

    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    goto/16 :goto_1

    .line 196
    :catch_4
    move-exception v2

    .line 197
    const-string v2, "LoadBalancedConnectionProxy.badValueForLoadBalanceAutoCommitStatementThreshold"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 205
    :catch_5
    move-exception v2

    .line 206
    const-string v2, "LoadBalancedConnectionProxy.badValueForLoadBalanceAutoCommitStatementRegex"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 216
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 217
    iget-object v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v3, "statementInterceptors"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",com.mysql.jdbc.LoadBalancedAutoCommitInterceptor"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2
.end method

.method private declared-synchronized closeAllConnections()V
    .locals 2

    .prologue
    .line 410
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :try_start_1
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    goto :goto_0

    .line 417
    :cond_0
    :try_start_2
    iget-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    if-nez v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    invoke-interface {v0}, Lcom/mysql/jdbc/BalanceStrategy;->destroy()V

    .line 419
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    invoke-virtual {v0, p0}, Lcom/mysql/jdbc/ConnectionGroup;->closeConnectionProxy(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;)V

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 425
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 426
    monitor-exit p0

    return-void

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static createProxyInstance(Ljava/util/List;Ljava/util/Properties;)Lcom/mysql/jdbc/LoadBalancedConnection;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
            ")",
            "Lcom/mysql/jdbc/LoadBalancedConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;-><init>(Ljava/util/List;Ljava/util/Properties;)V

    .line 107
    const-class v1, Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget-object v2, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/LoadBalancedConnection;

    return-object v0
.end method

.method static declared-synchronized getNullLoadBalancedConnectionInstance()Lcom/mysql/jdbc/LoadBalancedConnection;
    .locals 4

    .prologue
    .line 864
    const-class v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->nullLBConnectionInstance:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-nez v0, :cond_0

    .line 865
    const-class v0, Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v2, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;

    new-instance v3, Lcom/mysql/jdbc/LoadBalancedConnectionProxy$NullLoadBalancedConnectionProxy;

    invoke-direct {v3}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy$NullLoadBalancedConnectionProxy;-><init>()V

    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/LoadBalancedConnection;

    sput-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->nullLBConnectionInstance:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 868
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->nullLBConnectionInstance:Lcom/mysql/jdbc/LoadBalancedConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 864
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addHost(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 785
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    :goto_0
    monitor-exit p0

    return v0

    .line 789
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    .line 790
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 792
    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    .line 793
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToRemove:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 799
    const/4 v0, 0x1

    goto :goto_0

    .line 785
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addToGlobalBlacklist(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklistTimeout:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addToGlobalBlacklist(Ljava/lang/String;J)V

    .line 640
    return-void
.end method

.method public addToGlobalBlacklist(Ljava/lang/String;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isGlobalBlacklistEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    sget-object v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    monitor-enter v1

    .line 627
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    monitor-exit v1

    .line 630
    :cond_0
    return-void

    .line 628
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized createConnectionForHost(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionImpl;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 372
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->createConnectionForHost(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v1

    .line 374
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-wide v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->totalPhysicalConnections:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->totalPhysicalConnections:J

    .line 379
    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionImpl;->getStatementInterceptorsInstances()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/StatementInterceptorV2;

    .line 380
    instance-of v3, v0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;

    if-eqz v3, :cond_0

    .line 381
    check-cast v0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;

    invoke-virtual {v0}, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->resumeCounters()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    :cond_1
    monitor-exit p0

    return-object v1

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized doAbort(Ljava/util/concurrent/Executor;)V
    .locals 2
    .parameter

    .prologue
    .line 466
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    :try_start_1
    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->abort(Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    goto :goto_0

    .line 473
    :cond_0
    :try_start_2
    iget-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    if-nez v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    invoke-interface {v0}, Lcom/mysql/jdbc/BalanceStrategy;->destroy()V

    .line 475
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    invoke-virtual {v0, p0}, Lcom/mysql/jdbc/ConnectionGroup;->closeConnectionProxy(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;)V

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 481
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 482
    monitor-exit p0

    return-void

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized doAbortInternal()V
    .locals 2

    .prologue
    .line 442
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    :try_start_1
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->abortInternal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    goto :goto_0

    .line 449
    :cond_0
    :try_start_2
    iget-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    if-nez v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    invoke-interface {v0}, Lcom/mysql/jdbc/BalanceStrategy;->destroy()V

    .line 451
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    invoke-virtual {v0, p0}, Lcom/mysql/jdbc/ConnectionGroup;->closeConnectionProxy(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;)V

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 457
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 458
    monitor-exit p0

    return-void

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized doClose()V
    .locals 1

    .prologue
    .line 433
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closeAllConnections()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    monitor-exit p0

    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doPing()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 557
    monitor-enter p0

    const/4 v4, 0x0

    .line 558
    const/4 v3, 0x0

    .line 559
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLoadBalancePingTimeout()I

    move-result v6

    .line 561
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 562
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 563
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ConnectionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    if-eqz v1, :cond_0

    .line 568
    if-nez v6, :cond_1

    .line 569
    :try_start_1
    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionImpl;->ping()V

    :goto_1
    move v0, v2

    move-object v1, v4

    :goto_2
    move v3, v0

    move-object v4, v1

    .line 600
    goto :goto_0

    .line 571
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/mysql/jdbc/ConnectionImpl;->pingInternal(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 574
    :catch_0
    move-exception v5

    .line 576
    :try_start_2
    iget-object v8, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    iget-object v9, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 578
    invoke-direct {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closeAllConnections()V

    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    .line 580
    const-string v0, "Connection closed because ping of current connection failed."

    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closedReason:Ljava/lang/String;

    .line 581
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 557
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 585
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Connection.exceededConnectionLifetime"

    invoke-static {v9}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 587
    if-nez v4, :cond_8

    move-object v0, v5

    .line 598
    :goto_3
    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    iget-object v5, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    move v0, v3

    goto :goto_2

    .line 593
    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isGlobalBlacklistEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 594
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addToGlobalBlacklist(Ljava/lang/String;)V

    :cond_4
    move-object v0, v5

    goto :goto_3

    .line 603
    :cond_5
    if-nez v3, :cond_7

    .line 604
    invoke-direct {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closeAllConnections()V

    .line 605
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    .line 606
    const-string v0, "Connection closed due to inability to ping any active connections."

    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closedReason:Ljava/lang/String;

    .line 608
    if-eqz v4, :cond_6

    .line 609
    throw v4

    .line 612
    :cond_6
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    check-cast v0, Lcom/mysql/jdbc/ConnectionImpl;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionImpl;->throwConnectionClosedException()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 614
    :cond_7
    monitor-exit p0

    return-void

    :cond_8
    move-object v0, v4

    goto :goto_3
.end method

.method public declared-synchronized getActivePhysicalConnectionCount()J
    .locals 2

    .prologue
    .line 811
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConnectionGroupProxyID()J
    .locals 2

    .prologue
    .line 819
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroupProxyID:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentActiveHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 823
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 824
    if-eqz v0, :cond_0

    .line 825
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 826
    if-eqz v0, :cond_0

    .line 827
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 830
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 823
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentTransactionDuration()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 834
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->inTransaction:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionStartTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 835
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionStartTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    .line 837
    :cond_0
    monitor-exit p0

    return-wide v0

    .line 834
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGlobalBlacklist()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 656
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isGlobalBlacklistEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 657
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToRemove:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    :goto_0
    monitor-exit p0

    return-object v0

    .line 660
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 661
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToRemove:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 662
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x1388

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 656
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-object v0, v1

    .line 664
    goto :goto_0

    .line 668
    :cond_2
    :try_start_2
    new-instance v2, Ljava/util/HashMap;

    sget-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 670
    sget-object v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 671
    :try_start_3
    sget-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 672
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 673
    :try_start_4
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 676
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 679
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 680
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 682
    sget-object v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 683
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-gez v1, :cond_3

    .line 685
    sget-object v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 686
    :try_start_5
    sget-object v5, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 688
    :try_start_6
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 672
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 687
    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0

    .line 692
    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 695
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    :cond_5
    move-object v0, v2

    .line 698
    goto/16 :goto_0
.end method

.method getNewWrapperForThisAsConnection()Lcom/mysql/jdbc/MySQLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->JDBC_4_LB_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    .line 241
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->JDBC_4_LB_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/MySQLConnection;

    .line 243
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/mysql/jdbc/LoadBalancedMySQLConnection;

    invoke-direct {v0, p0}, Lcom/mysql/jdbc/LoadBalancedMySQLConnection;-><init>(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;)V

    goto :goto_0
.end method

.method public declared-synchronized getTotalPhysicalConnectionCount()J
    .locals 2

    .prologue
    .line 815
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->totalPhysicalConnections:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTransactionCount()J
    .locals 2

    .prologue
    .line 807
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized inTransaction()Z
    .locals 1

    .prologue
    .line 803
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->inTransaction:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized invalidateConnection(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->invalidateConnection(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 289
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isGlobalBlacklistEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addToGlobalBlacklist(Ljava/lang/String;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 299
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 300
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    .line 301
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :cond_1
    monitor-exit p0

    return-void

    .line 301
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 286
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invokeMore(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 491
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 493
    iget-boolean v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->allowedOnClosedConnection(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 494
    iget-boolean v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->autoReconnect:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closedExplicitly:Z

    if-nez v1, :cond_8

    .line 496
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 497
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->pickNewConnection()V

    .line 498
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    .line 499
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closedReason:Ljava/lang/String;

    .line 509
    :cond_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->inTransaction:Z

    if-nez v1, :cond_1

    .line 510
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->inTransaction:Z

    .line 511
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionStartTime:J

    .line 512
    iget-wide v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p2, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 520
    if-eqz v2, :cond_3

    .line 521
    instance-of v1, v2, Lcom/mysql/jdbc/Statement;

    if-eqz v1, :cond_2

    .line 522
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/Statement;

    move-object v1, v0

    invoke-interface {v1, p0}, Lcom/mysql/jdbc/Statement;->setPingTarget(Lcom/mysql/jdbc/PingTarget;)V

    .line 524
    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->proxyIfReturnTypeIsJdbcInterface(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 531
    :cond_3
    :try_start_2
    const-string v1, "commit"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "rollback"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 532
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->inTransaction:Z

    .line 535
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 537
    if-eqz v1, :cond_6

    .line 538
    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 539
    :try_start_3
    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 541
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 542
    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionStartTime:J

    sub-long/2addr v5, v7

    aput-wide v5, v4, v1

    .line 544
    :cond_5
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 546
    :cond_6
    :try_start_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->pickNewConnection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    move-object v1, v2

    .line 550
    :goto_0
    monitor-exit p0

    return-object v1

    .line 501
    :cond_8
    :try_start_5
    const-string v1, "No operations allowed after connection closed."

    .line 502
    iget-object v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closedReason:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closedReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 505
    :cond_9
    const-string v2, "08003"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 491
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 527
    :catch_0
    move-exception v1

    .line 528
    :try_start_6
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->dealWithInvocationException(Ljava/lang/reflect/InvocationTargetException;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 531
    :try_start_7
    const-string v1, "commit"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "rollback"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 532
    :cond_a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->inTransaction:Z

    .line 535
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 537
    if-eqz v1, :cond_c

    .line 538
    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 539
    :try_start_8
    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 541
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    array-length v5, v5

    if-ge v4, v5, :cond_b

    .line 542
    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionStartTime:J

    sub-long/2addr v5, v7

    aput-wide v5, v4, v1

    .line 544
    :cond_b
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 546
    :cond_c
    :try_start_9
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->pickNewConnection()V

    :cond_d
    move-object v1, v2

    .line 548
    goto :goto_0

    .line 531
    :catchall_1
    move-exception v1

    move-object v2, v1

    const-string v1, "commit"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "rollback"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 532
    :cond_e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->inTransaction:Z

    .line 535
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 537
    if-eqz v1, :cond_10

    .line 538
    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    monitor-enter v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 539
    :try_start_a
    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 541
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    array-length v5, v5

    if-ge v4, v5, :cond_f

    .line 542
    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionStartTime:J

    sub-long/2addr v5, v7

    aput-wide v5, v4, v1

    .line 544
    :cond_f
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 546
    :cond_10
    :try_start_b
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->pickNewConnection()V

    .line 531
    :cond_11
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 544
    :catchall_2
    move-exception v1

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catchall_3
    move-exception v1

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :catchall_4
    move-exception v1

    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
.end method

.method public isGlobalBlacklistEnabled()Z
    .locals 1

    .prologue
    .line 646
    iget v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklistTimeout:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMasterConnection()Z
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method declared-synchronized pickNewConnection()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closedExplicitly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 361
    :goto_0
    monitor-exit p0

    return-void

    .line 316
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-nez v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    iget v5, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->retriesAllDown:I

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/mysql/jdbc/BalanceStrategy;->pickConnection(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;Ljava/util/Map;[JI)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 322
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->invalidateCurrentConnection()V

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLoadBalancePingTimeout()I

    move-result v8

    .line 327
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLoadBalanceValidateConnectionOnSwapServer()Z

    move-result v9

    .line 329
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    move v7, v0

    :goto_1
    if-ge v7, v10, :cond_7

    .line 330
    const/4 v6, 0x0

    .line 332
    :try_start_3
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    iget v5, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->retriesAllDown:I

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/mysql/jdbc/BalanceStrategy;->pickConnection(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;Ljava/util/Map;[JI)Lcom/mysql/jdbc/ConnectionImpl;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    .line 335
    :try_start_4
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_4

    .line 336
    if-eqz v9, :cond_3

    .line 337
    if-nez v8, :cond_6

    .line 338
    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionImpl;->ping()V

    .line 344
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;)V

    .line 347
    :cond_4
    iput-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    :goto_3
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 353
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->invalidateConnection(Lcom/mysql/jdbc/MySQLConnection;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 329
    :cond_5
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 340
    :cond_6
    const/4 v0, 0x1

    :try_start_6
    invoke-virtual {v1, v0, v8}, Lcom/mysql/jdbc/ConnectionImpl;->pingInternal(ZI)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 359
    :cond_7
    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    .line 360
    const-string v0, "Connection closed after inability to pick valid new connection during load-balance."

    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closedReason:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 350
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_3
.end method

.method protected propagateProxyDown(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 2
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionImpl;

    .line 255
    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setProxy(Lcom/mysql/jdbc/MySQLConnection;)V

    goto :goto_0

    .line 257
    :cond_0
    return-void
.end method

.method public declared-synchronized removeHost(Ljava/lang/String;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 748
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionGroup;->getInitialHosts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionGroup;->getInitialHosts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    const-string v0, "Cannot remove only configured host."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 754
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToRemove:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 756
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 758
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    new-array v3, v0, [J

    .line 759
    const/4 v2, 0x0

    .line 760
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 761
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToRemove:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 762
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 763
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 764
    iget-object v5, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-wide v5, v5, v1

    aput-wide v5, v3, v2

    .line 766
    :cond_1
    iget-object v5, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    add-int/lit8 v1, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :goto_1
    move v2, v0

    .line 767
    goto :goto_0

    .line 769
    :cond_2
    iput-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    .line 772
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getHostPortPair()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 773
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->invalidateConnection(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 774
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->pickNewConnection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 776
    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public removeHostWhenNotInUse(Ljava/lang/String;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x3e8

    .line 709
    iget v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostRemovalGracePeriod:I

    if-gtz v1, :cond_0

    .line 710
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->removeHost(Ljava/lang/String;)V

    .line 738
    :goto_0
    return-void

    .line 714
    :cond_0
    iget v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostRemovalGracePeriod:I

    if-le v1, v0, :cond_1

    .line 716
    :goto_1
    monitor-enter p0

    .line 717
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostRemovalGracePeriod:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    invoke-virtual {p0, p1, v1, v2}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addToGlobalBlacklist(Ljava/lang/String;J)V

    .line 719
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 721
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v5, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostRemovalGracePeriod:I

    int-to-long v5, v5

    add-long/2addr v5, v1

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 722
    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToRemove:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 724
    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getHostPortPair()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 725
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->removeHost(Ljava/lang/String;)V

    .line 726
    monitor-exit p0

    goto :goto_0

    .line 735
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 714
    :cond_1
    iget v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostRemovalGracePeriod:I

    goto :goto_1

    .line 730
    :cond_2
    int-to-long v3, v0

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 731
    :catch_0
    move-exception v3

    goto :goto_2

    .line 735
    :cond_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 737
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->removeHost(Ljava/lang/String;)V

    goto :goto_0
.end method

.method shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z
    .locals 1
    .parameter

    .prologue
    .line 267
    instance-of v0, p1, Ljava/sql/SQLException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->exceptionChecker:Lcom/mysql/jdbc/LoadBalanceExceptionChecker;

    check-cast p1, Ljava/sql/SQLException;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalanceExceptionChecker;->shouldExceptionTriggerFailover(Ljava/sql/SQLException;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 391
    const/4 v1, 0x0

    move-object v0, p2

    .line 392
    check-cast v0, Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getStatementInterceptorsInstances()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/StatementInterceptorV2;

    .line 393
    instance-of v3, v0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;

    if-eqz v3, :cond_0

    .line 394
    check-cast v0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;

    .line 395
    invoke-virtual {v0}, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->pauseCounters()V

    .line 399
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;Z)V

    .line 400
    if-eqz v0, :cond_1

    .line 401
    invoke-virtual {v0}, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->resumeCounters()V

    .line 403
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
