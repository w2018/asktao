.class public Lcom/mysql/jdbc/FailoverConnectionProxy;
.super Lcom/mysql/jdbc/MultiHostConnectionProxy;
.source "FailoverConnectionProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/FailoverConnectionProxy$FailoverJdbcInterfaceProxy;
    }
.end annotation


# static fields
.field private static final DEFAULT_PRIMARY_HOST_INDEX:I = 0x0

.field private static INTERFACES_TO_PROXY:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final METHOD_COMMIT:Ljava/lang/String; = "commit"

.field private static final METHOD_ROLLBACK:Ljava/lang/String; = "rollback"

.field private static final METHOD_SET_AUTO_COMMIT:Ljava/lang/String; = "setAutoCommit"

.field private static final METHOD_SET_READ_ONLY:Ljava/lang/String; = "setReadOnly"

.field private static final NO_CONNECTION_INDEX:I = -0x1


# instance fields
.field private currentHostIndex:I

.field private enableFallBackToPrimaryHost:Z

.field private explicitlyAutoCommit:Z

.field private explicitlyReadOnly:Ljava/lang/Boolean;

.field private failoverReadOnly:Z

.field private primaryHostFailTimeMillis:J

.field private primaryHostIndex:I

.field private queriesBeforeRetryPrimaryHost:J

.field private queriesIssuedSinceFailover:J

.field private retriesAllDown:I

.field private secondsBeforeRetryPrimaryHost:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-string v2, "com.mysql.jdbc.JDBC4MySQLConnection"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/mysql/jdbc/FailoverConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 71
    :cond_0
    new-array v0, v1, [Ljava/lang/Class;

    const-class v1, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v1, v0, v2

    sput-object v0, Lcom/mysql/jdbc/FailoverConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/Properties;)V
    .locals 7
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
    const/4 v0, 0x0

    const-wide/16 v5, 0x0

    const/4 v1, 0x1

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/MultiHostConnectionProxy;-><init>(Ljava/util/List;Ljava/util/Properties;)V

    .line 52
    const/4 v2, -0x1

    iput v2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I

    .line 53
    iput v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostIndex:I

    .line 54
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyReadOnly:Ljava/lang/Boolean;

    .line 55
    iput-boolean v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyAutoCommit:Z

    .line 57
    iput-boolean v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->enableFallBackToPrimaryHost:Z

    .line 58
    iput-wide v5, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostFailTimeMillis:J

    .line 59
    iput-wide v5, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesIssuedSinceFailover:J

    .line 123
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl;

    invoke-direct {v2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;-><init>()V

    .line 124
    invoke-virtual {v2, p2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->initializeProperties(Ljava/util/Properties;)V

    .line 126
    invoke-virtual {v2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getSecondsBeforeRetryMaster()I

    move-result v3

    iput v3, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->secondsBeforeRetryPrimaryHost:I

    .line 127
    invoke-virtual {v2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getQueriesBeforeRetryMaster()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesBeforeRetryPrimaryHost:J

    .line 128
    invoke-virtual {v2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getFailOverReadOnly()Z

    move-result v3

    iput-boolean v3, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->failoverReadOnly:Z

    .line 129
    invoke-virtual {v2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getRetriesAllDown()I

    move-result v2

    iput v2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->retriesAllDown:I

    .line 131
    iget v2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->secondsBeforeRetryPrimaryHost:I

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesBeforeRetryPrimaryHost:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->enableFallBackToPrimaryHost:Z

    .line 133
    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->pickNewConnection()V

    .line 135
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoCommit()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyAutoCommit:Z

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/mysql/jdbc/FailoverConnectionProxy;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyAutoCommit:Z

    return v0
.end method

.method private declared-synchronized connectTo(I)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->createConnectionForHostIndex(I)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->switchCurrentConnectionTo(ILcom/mysql/jdbc/MySQLConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    monitor-exit p0

    return-void

    .line 227
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 228
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Connection to "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isPrimaryHostIndex(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "primary"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " host \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 231
    iget-object v2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 233
    :cond_0
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 229
    :cond_1
    :try_start_2
    const-string v0, "secondary"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static createProxyInstance(Ljava/util/List;Ljava/util/Properties;)Lcom/mysql/jdbc/Connection;
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
            "Lcom/mysql/jdbc/Connection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Lcom/mysql/jdbc/FailoverConnectionProxy;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/FailoverConnectionProxy;-><init>(Ljava/util/List;Ljava/util/Properties;)V

    .line 109
    const-class v1, Lcom/mysql/jdbc/Connection;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget-object v2, Lcom/mysql/jdbc/FailoverConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/Connection;

    return-object v0
.end method

.method private declared-synchronized failOver()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->failOver(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized failOver(I)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 280
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I

    .line 281
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/mysql/jdbc/FailoverConnectionProxy;->nextHost(IZ)I

    move-result v9

    .line 284
    const/4 v3, 0x0

    .line 287
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isPrimaryHostIndex(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    move v7, v1

    move v4, v1

    move v8, v9

    move-object v12, v3

    move v3, v0

    move-object v0, v12

    .line 290
    :goto_1
    if-nez v3, :cond_1

    :try_start_1
    invoke-virtual {p0, v8}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isPrimaryHostIndex(I)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    move v3, v2

    .line 292
    :goto_2
    invoke-direct {p0, v8}, Lcom/mysql/jdbc/FailoverConnectionProxy;->connectTo(I)V

    .line 294
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->connectedToSecondaryHost()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 295
    invoke-direct {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->resetAutoFallBackCounters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    move-object v5, v0

    move v6, v8

    move v0, v2

    .line 320
    :goto_3
    :try_start_2
    iget v7, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->retriesAllDown:I

    if-ge v4, v7, :cond_3

    if-eqz v0, :cond_9

    .line 322
    :cond_3
    if-nez v0, :cond_8

    .line 323
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v0, v1

    .line 287
    goto :goto_0

    :cond_5
    move v3, v1

    .line 290
    goto :goto_2

    .line 299
    :catch_0
    move-exception v0

    move-object v5, v0

    move v6, v3

    .line 302
    :try_start_3
    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/FailoverConnectionProxy;->shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 303
    if-lez v4, :cond_6

    move v0, v2

    :goto_4
    invoke-direct {p0, v8, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->nextHost(IZ)I

    move-result v3

    .line 305
    if-ne v3, v9, :cond_b

    const/4 v0, 0x1

    invoke-direct {p0, v8, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->nextHost(IZ)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-ne v3, v0, :cond_a

    .line 306
    add-int/lit8 v3, v4, 0x1

    .line 309
    const-wide/16 v10, 0xfa

    :try_start_4
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    move v4, v3

    move v3, v6

    move v6, v0

    move v0, v7

    .line 316
    goto :goto_3

    :cond_6
    move v0, v1

    .line 303
    goto :goto_4

    .line 317
    :cond_7
    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 310
    :catch_1
    move-exception v4

    goto :goto_5

    .line 325
    :cond_8
    monitor-exit p0

    return-void

    :cond_9
    move v7, v0

    move v8, v6

    move-object v0, v5

    goto :goto_1

    :cond_a
    move v3, v4

    goto :goto_5

    :cond_b
    move v0, v3

    move v3, v4

    goto :goto_5
.end method

.method private nextHost(IZ)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 360
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 361
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isPrimaryHostIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    iget-boolean v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->enableFallBackToPrimaryHost:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->readyToFallBackToPrimaryHost()Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    invoke-direct {p0, v0, p2}, Lcom/mysql/jdbc/FailoverConnectionProxy;->nextHost(IZ)I

    move-result v0

    .line 365
    :cond_0
    return v0
.end method

.method private declared-synchronized queriesBeforeRetryPrimaryHostIsMet()Z
    .locals 4

    .prologue
    .line 425
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesBeforeRetryPrimaryHost:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesIssuedSinceFailover:J

    iget-wide v2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesBeforeRetryPrimaryHost:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resetAutoFallBackCounters()V
    .locals 2

    .prologue
    .line 432
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostFailTimeMillis:J

    .line 433
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesIssuedSinceFailover:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    monitor-exit p0

    return-void

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized secondsBeforeRetryPrimaryHostIsMet()Z
    .locals 4

    .prologue
    .line 418
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->secondsBeforeRetryPrimaryHost:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostFailTimeMillis:J

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Util;->secondsSinceMillis(J)J

    move-result-wide v0

    iget v2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->secondsBeforeRetryPrimaryHost:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized switchCurrentConnectionTo(ILcom/mysql/jdbc/MySQLConnection;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 246
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->invalidateCurrentConnection()V

    .line 249
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isPrimaryHostIndex(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    iget-object v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyReadOnly:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 260
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p0, v1, p2, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;Z)V

    .line 261
    iput-object p2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 262
    iput p1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    .line 250
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyReadOnly:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 251
    :cond_2
    iget-boolean v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->failoverReadOnly:Z

    if-eqz v1, :cond_3

    .line 252
    const/4 v0, 0x1

    goto :goto_0

    .line 253
    :cond_3
    iget-object v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyReadOnly:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 254
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyReadOnly:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 255
    :cond_4
    iget-object v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized connectedToPrimaryHost()Z
    .locals 1

    .prologue
    .line 404
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isPrimaryHostIndex(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized connectedToSecondaryHost()Z
    .locals 1

    .prologue
    .line 411
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isPrimaryHostIndex(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized createConnectionForHostIndex(I)Lcom/mysql/jdbc/ConnectionImpl;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->createConnectionForHost(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized doAbort(Ljava/util/concurrent/Executor;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 457
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->abort(Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    monitor-exit p0

    return-void

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized doAbortInternal()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 449
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->abortInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    monitor-exit p0

    return-void

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized doClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 441
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    monitor-exit p0

    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized fallBackToPrimaryIfAvailable()V
    .locals 2

    .prologue
    .line 331
    monitor-enter p0

    const/4 v0, 0x0

    .line 333
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostIndex:I

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->createConnectionForHostIndex(I)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v0

    .line 334
    iget v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostIndex:I

    invoke-direct {p0, v1, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->switchCurrentConnectionTo(ILcom/mysql/jdbc/MySQLConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    monitor-exit p0

    return-void

    .line 335
    :catch_0
    move-exception v1

    .line 336
    if-eqz v0, :cond_0

    .line 338
    :try_start_1
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 343
    :cond_0
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->resetAutoFallBackCounters()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 339
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method getNewJdbcInterfaceProxy(Ljava/lang/Object;)Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;
    .locals 1
    .parameter

    .prologue
    .line 145
    new-instance v0, Lcom/mysql/jdbc/FailoverConnectionProxy$FailoverJdbcInterfaceProxy;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/FailoverConnectionProxy$FailoverJdbcInterfaceProxy;-><init>(Lcom/mysql/jdbc/FailoverConnectionProxy;Ljava/lang/Object;)V

    return-object v0
.end method

.method bridge synthetic getNewJdbcInterfaceProxy(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->getNewJdbcInterfaceProxy(Ljava/lang/Object;)Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized incrementQueriesIssuedSinceFailover()V
    .locals 4

    .prologue
    .line 372
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesIssuedSinceFailover:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesIssuedSinceFailover:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    monitor-exit p0

    return-void

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invokeMore(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 466
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 468
    const-string v0, "setReadOnly"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyReadOnly:Ljava/lang/Boolean;

    .line 470
    iget-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->failoverReadOnly:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->connectedToSecondaryHost()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 508
    :goto_0
    monitor-exit p0

    return-object v0

    .line 475
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->isClosed:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/FailoverConnectionProxy;->allowedOnClosedConnection(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 476
    iget-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->autoReconnect:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->closedExplicitly:Z

    if-nez v0, :cond_5

    .line 477
    const/4 v0, -0x1

    iput v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I

    .line 478
    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->pickNewConnection()V

    .line 479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->isClosed:Z

    .line 480
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->closedReason:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 494
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->proxyIfReturnTypeIsJdbcInterface(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 499
    :goto_1
    :try_start_3
    const-string v0, "setAutoCommit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 500
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyAutoCommit:Z

    .line 503
    :cond_2
    iget-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyAutoCommit:Z

    if-nez v0, :cond_3

    const-string v0, "commit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "rollback"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->readyToFallBackToPrimaryHost()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 505
    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->fallBackToPrimaryIfAvailable()V

    :cond_4
    move-object v0, v1

    .line 508
    goto :goto_0

    .line 482
    :cond_5
    const-string v0, "No operations allowed after connection closed."

    .line 483
    iget-object v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->closedReason:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->closedReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 486
    :cond_6
    const-string v1, "08003"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->dealWithInvocationException(Ljava/lang/reflect/InvocationTargetException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized isConnected()Z
    .locals 2

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isMasterConnection()Z
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->connectedToPrimaryHost()Z

    move-result v0

    return v0
.end method

.method declared-synchronized isPrimaryHostIndex(I)Z
    .locals 1
    .parameter

    .prologue
    .line 397
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized pickNewConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->isClosed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->closedExplicitly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 204
    :goto_0
    monitor-exit p0

    return-void

    .line 194
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->readyToFallBackToPrimaryHost()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostIndex:I

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->connectTo(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    :try_start_3
    invoke-direct {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->resetAutoFallBackCounters()V

    .line 199
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostIndex:I

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->failOver(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 202
    :cond_2
    :try_start_4
    invoke-direct {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->failOver()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized readyToFallBackToPrimaryHost()Z
    .locals 1

    .prologue
    .line 380
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->enableFallBackToPrimaryHost:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->connectedToSecondaryHost()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->secondsBeforeRetryPrimaryHostIsMet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesBeforeRetryPrimaryHostIsMet()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 155
    instance-of v0, p1, Ljava/sql/SQLException;

    if-nez v0, :cond_0

    move v0, v1

    .line 172
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 159
    check-cast v0, Ljava/sql/SQLException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_1

    .line 161
    const-string v3, "08"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 163
    goto :goto_0

    .line 168
    :cond_1
    instance-of v0, p1, Lcom/mysql/jdbc/CommunicationsException;

    if-eqz v0, :cond_2

    move v0, v2

    .line 169
    goto :goto_0

    :cond_2
    move v0, v1

    .line 172
    goto :goto_0
.end method
