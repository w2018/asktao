.class public abstract Lcom/mysql/jdbc/MultiHostConnectionProxy;
.super Ljava/lang/Object;
.source "MultiHostConnectionProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;
    }
.end annotation


# static fields
.field private static JDBC_4_MS_CONNECTION_CTOR:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static final METHOD_ABORT:Ljava/lang/String; = "abort"

.field private static final METHOD_ABORT_INTERNAL:Ljava/lang/String; = "abortInternal"

.field private static final METHOD_CLOSE:Ljava/lang/String; = "close"

.field private static final METHOD_EQUALS:Ljava/lang/String; = "equals"

.field private static final METHOD_GET_AUTO_COMMIT:Ljava/lang/String; = "getAutoCommit"

.field private static final METHOD_GET_CATALOG:Ljava/lang/String; = "getCatalog"

.field private static final METHOD_GET_MULTI_HOST_SAFE_PROXY:Ljava/lang/String; = "getMultiHostSafeProxy"

.field private static final METHOD_GET_SESSION_MAX_ROWS:Ljava/lang/String; = "getSessionMaxRows"

.field private static final METHOD_GET_TRANSACTION_ISOLATION:Ljava/lang/String; = "getTransactionIsolation"

.field private static final METHOD_HASH_CODE:Ljava/lang/String; = "hashCode"

.field private static final METHOD_IS_CLOSED:Ljava/lang/String; = "isClosed"


# instance fields
.field autoReconnect:Z

.field closedExplicitly:Z

.field closedReason:Ljava/lang/String;

.field currentConnection:Lcom/mysql/jdbc/MySQLConnection;

.field hostList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field isClosed:Z

.field protected lastExceptionDealtWith:Ljava/lang/Throwable;

.field localProps:Ljava/util/Properties;

.field proxyConnection:Lcom/mysql/jdbc/MySQLConnection;

.field thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 74
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    const-string v0, "com.mysql.jdbc.JDBC4MultiHostMySQLConnection"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/mysql/jdbc/MultiHostConnectionProxy;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->JDBC_4_MS_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 86
    :cond_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 80
    :catch_1
    move-exception v0

    .line 81
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 82
    :catch_2
    move-exception v0

    .line 83
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->autoReconnect:Z

    .line 58
    iput-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 59
    iput-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->proxyConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 61
    iput-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 63
    iput-boolean v1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->isClosed:Z

    .line 64
    iput-boolean v1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->closedExplicitly:Z

    .line 65
    iput-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->closedReason:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->lastExceptionDealtWith:Ljava/lang/Throwable;

    .line 126
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->getNewWrapperForThisAsConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 127
    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/Properties;)V
    .locals 0
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
    .line 138
    invoke-direct {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;-><init>()V

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->initializeHostsSpecs(Ljava/util/List;Ljava/util/Properties;)I

    .line 140
    return-void
.end method


# virtual methods
.method protected allowedOnClosedConnection(Ljava/lang/reflect/Method;)Z
    .locals 2
    .parameter

    .prologue
    .line 492
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 494
    const-string v1, "getAutoCommit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "getCatalog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "getTransactionIsolation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "getSessionMaxRows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized createConnectionForHost(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionImpl;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->localProps:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    .line 326
    invoke-static {p1}, Lcom/mysql/jdbc/NonRegisteringDriver;->parseHostPortPair(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 327
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 328
    const/4 v3, 0x1

    aget-object v1, v1, v3

    .line 329
    const-string v3, "DBNAME"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 331
    if-nez v2, :cond_0

    .line 332
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Could not find a hostname to start a connection to"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 334
    :cond_0
    if-nez v1, :cond_1

    .line 335
    :try_start_1
    const-string v1, "3306"

    .line 338
    :cond_1
    const-string v4, "HOST"

    invoke-virtual {v0, v4, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 339
    const-string v4, "PORT"

    invoke-virtual {v0, v4, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 340
    const-string v4, "HOST.1"

    invoke-virtual {v0, v4, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 341
    const-string v4, "PORT.1"

    invoke-virtual {v0, v4, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 342
    const-string v4, "NUM_HOSTS"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 343
    const-string v4, "roundRobinLoadBalance"

    const-string v5, "false"

    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 345
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jdbc:mysql://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v4, v0, v3, v1}, Lcom/mysql/jdbc/ConnectionImpl;->getInstance(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/jdbc/Connection;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionImpl;

    .line 348
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->getProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setProxy(Lcom/mysql/jdbc/MySQLConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    monitor-exit p0

    return-object v0
.end method

.method dealWithInvocationException(Ljava/lang/reflect/InvocationTargetException;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/lang/Throwable;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_1

    .line 264
    iget-object v1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->lastExceptionDealtWith:Ljava/lang/Throwable;

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->invalidateCurrentConnection()V

    .line 266
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->pickNewConnection()V

    .line 267
    iput-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->lastExceptionDealtWith:Ljava/lang/Throwable;

    .line 269
    :cond_0
    throw v0

    .line 271
    :cond_1
    throw p1
.end method

.method abstract doAbort(Ljava/util/concurrent/Executor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method abstract doAbortInternal()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method abstract doClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method getNewJdbcInterfaceProxy(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
    .locals 1
    .parameter

    .prologue
    .line 251
    new-instance v0, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;-><init>(Lcom/mysql/jdbc/MultiHostConnectionProxy;Ljava/lang/Object;)V

    return-object v0
.end method

.method getNewWrapperForThisAsConnection()Lcom/mysql/jdbc/MySQLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->JDBC_4_MS_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->JDBC_4_MS_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/MySQLConnection;

    .line 184
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/mysql/jdbc/MultiHostMySQLConnection;

    invoke-direct {v0, p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;-><init>(Lcom/mysql/jdbc/MultiHostConnectionProxy;)V

    goto :goto_0
.end method

.method protected getProxy()Lcom/mysql/jdbc/MySQLConnection;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->proxyConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->proxyConnection:Lcom/mysql/jdbc/MySQLConnection;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;

    goto :goto_0
.end method

.method initializeHostsSpecs(Ljava/util/List;Ljava/util/Properties;)I
    .locals 5
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
            ")I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 154
    const-string v0, "true"

    const-string v2, "autoReconnect"

    invoke-virtual {p2, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "true"

    const-string v2, "autoReconnectForPools"

    invoke-virtual {p2, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->autoReconnect:Z

    .line 156
    iput-object p1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->hostList:Ljava/util/List;

    .line 157
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 159
    invoke-virtual {p2}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    iput-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->localProps:Ljava/util/Properties;

    .line 160
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v3, "HOST"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v3, "PORT"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :goto_1
    if-ge v1, v2, :cond_2

    .line 164
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->localProps:Ljava/util/Properties;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HOST."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->localProps:Ljava/util/Properties;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PORT."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 154
    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v1, "NUM_HOSTS"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return v2
.end method

.method declared-synchronized invalidateConnection(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 302
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    const/4 v1, 0x1

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getAutoCommit()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1, v1, v0, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->realClose(ZZZLjava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 303
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 305
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method declared-synchronized invalidateCurrentConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->invalidateConnection(Lcom/mysql/jdbc/MySQLConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 425
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 427
    const-string v3, "getMultiHostSafeProxy"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 428
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    :goto_0
    monitor-exit p0

    return-object v0

    .line 431
    :cond_0
    :try_start_1
    const-string v3, "equals"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 433
    const/4 v0, 0x0

    aget-object v0, p3, v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 436
    :cond_1
    const-string v3, "hashCode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 437
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 440
    :cond_2
    const-string v3, "close"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 441
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->doClose()V

    .line 442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->isClosed:Z

    .line 443
    const-string v0, "Connection explicitly closed."

    iput-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->closedReason:Ljava/lang/String;

    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->closedExplicitly:Z

    move-object v0, v1

    .line 445
    goto :goto_0

    .line 448
    :cond_3
    const-string v3, "abortInternal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 449
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->doAbortInternal()V

    .line 450
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->abortInternal()V

    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->isClosed:Z

    .line 452
    const-string v0, "Connection explicitly closed."

    iput-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->closedReason:Ljava/lang/String;

    move-object v0, v1

    .line 453
    goto :goto_0

    .line 456
    :cond_4
    const-string v3, "abort"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    array-length v3, p3

    if-ne v3, v4, :cond_5

    .line 457
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->doAbort(Ljava/util/concurrent/Executor;)V

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->isClosed:Z

    .line 459
    const-string v0, "Connection explicitly closed."

    iput-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->closedReason:Ljava/lang/String;

    move-object v0, v1

    .line 460
    goto :goto_0

    .line 463
    :cond_5
    const-string v1, "isClosed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 464
    iget-boolean v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->isClosed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto/16 :goto_0

    .line 468
    :cond_6
    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->invokeMore(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto/16 :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :cond_7
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 471
    :catch_1
    move-exception v1

    .line 473
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 474
    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_9

    aget-object v4, v2, v0

    .line 475
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 476
    throw v1

    .line 474
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 479
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method abstract invokeMore(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method abstract isMasterConnection()Z
.end method

.method abstract pickNewConnection()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected propagateProxyDown(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 1
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setProxy(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 220
    return-void
.end method

.method proxyIfReturnTypeIsJdbcInterface(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 233
    if-eqz p2, :cond_0

    .line 234
    invoke-static {p1}, Lcom/mysql/jdbc/Util;->isJdbcInterface(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0}, Lcom/mysql/jdbc/Util;->getImplementedInterfaces(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->getNewJdbcInterfaceProxy(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p2

    .line 239
    :cond_0
    return-object p2
.end method

.method protected final setProxy(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->proxyConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 208
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->propagateProxyDown(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 209
    return-void
.end method

.method abstract shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z
.end method

.method syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 362
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getUseLocalSessionState()Z

    move-result v0

    .line 367
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/mysql/jdbc/Connection;->setUseLocalSessionState(Z)V

    .line 368
    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->isReadOnly()Z

    move-result v1

    .line 369
    invoke-interface {p1, v0}, Lcom/mysql/jdbc/Connection;->setUseLocalSessionState(Z)V

    .line 371
    invoke-virtual {p0, p1, p2, v1}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;Z)V

    goto :goto_0
.end method

.method syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 385
    if-eqz p2, :cond_0

    .line 386
    invoke-interface {p2, p3}, Lcom/mysql/jdbc/Connection;->setReadOnly(Z)V

    .line 389
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 402
    :cond_1
    :goto_0
    return-void

    .line 393
    :cond_2
    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getUseLocalSessionState()Z

    move-result v0

    .line 394
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/mysql/jdbc/Connection;->setUseLocalSessionState(Z)V

    .line 396
    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getAutoCommit()Z

    move-result v1

    invoke-interface {p2, v1}, Lcom/mysql/jdbc/Connection;->setAutoCommit(Z)V

    .line 397
    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getCatalog()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/mysql/jdbc/Connection;->setCatalog(Ljava/lang/String;)V

    .line 398
    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getTransactionIsolation()I

    move-result v1

    invoke-interface {p2, v1}, Lcom/mysql/jdbc/Connection;->setTransactionIsolation(I)V

    .line 399
    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getSessionMaxRows()I

    move-result v1

    invoke-interface {p2, v1}, Lcom/mysql/jdbc/Connection;->setSessionMaxRows(I)V

    .line 401
    invoke-interface {p1, v0}, Lcom/mysql/jdbc/Connection;->setUseLocalSessionState(Z)V

    goto :goto_0
.end method
