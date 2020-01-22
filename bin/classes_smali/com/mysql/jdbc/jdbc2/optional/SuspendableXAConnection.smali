.class public Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;
.super Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
.source "SuspendableXAConnection.java"

# interfaces
.implements Ljavax/sql/XAConnection;
.implements Ljavax/transaction/xa/XAResource;


# static fields
.field private static final JDBC_4_XA_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static final XIDS_TO_PHYSICAL_CONNECTIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/transaction/xa/Xid;",
            "Ljavax/sql/XAConnection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentXAConnection:Ljavax/sql/XAConnection;

.field private currentXAResource:Ljavax/transaction/xa/XAResource;

.field private currentXid:Ljavax/transaction/xa/Xid;

.field private underlyingConnection:Lcom/mysql/jdbc/Connection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 44
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    const-string v0, "com.mysql.jdbc.jdbc2.optional.JDBC4SuspendableXAConnection"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/mysql/jdbc/Connection;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->JDBC_4_XA_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 74
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->XIDS_TO_PHYSICAL_CONNECTIONS:Ljava/util/Map;

    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 50
    :catch_1
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 52
    :catch_2
    move-exception v0

    .line 53
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 56
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->JDBC_4_XA_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/mysql/jdbc/Connection;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;-><init>(Lcom/mysql/jdbc/Connection;)V

    .line 71
    iput-object p1, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    .line 72
    return-void
.end method

.method private static declared-synchronized findConnectionForXid(Lcom/mysql/jdbc/Connection;Ljavax/transaction/xa/Xid;)Ljavax/sql/XAConnection;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 88
    const-class v1, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->XIDS_TO_PHYSICAL_CONNECTIONS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/sql/XAConnection;

    .line 90
    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;

    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getLogXaCommands()Z

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;-><init>(Lcom/mysql/jdbc/Connection;Z)V

    .line 92
    sget-object v2, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->XIDS_TO_PHYSICAL_CONNECTIONS:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    monitor-exit v1

    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static getInstance(Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;

    invoke-direct {v0, p0}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;-><init>(Lcom/mysql/jdbc/Connection;)V

    .line 65
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->JDBC_4_XA_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;

    goto :goto_0
.end method

.method private static declared-synchronized removeXAConnectionMapping(Ljavax/transaction/xa/Xid;)V
    .locals 2
    .parameter

    .prologue
    .line 99
    const-class v1, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->XIDS_TO_PHYSICAL_CONNECTIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit v1

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized switchToXid(Ljavax/transaction/xa/Xid;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .prologue
    .line 103
    monitor-enter p0

    if-nez p1, :cond_0

    .line 104
    :try_start_0
    new-instance v0, Ljavax/transaction/xa/XAException;

    invoke-direct {v0}, Ljavax/transaction/xa/XAException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 108
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXid:Ljavax/transaction/xa/Xid;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    invoke-static {v0, p1}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->findConnectionForXid(Lcom/mysql/jdbc/Connection;Ljavax/transaction/xa/Xid;)Ljavax/sql/XAConnection;

    move-result-object v0

    .line 110
    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXAConnection:Ljavax/sql/XAConnection;

    .line 111
    iput-object p1, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXid:Ljavax/transaction/xa/Xid;

    .line 112
    invoke-interface {v0}, Ljavax/sql/XAConnection;->getXAResource()Ljavax/transaction/xa/XAResource;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXAResource:Ljavax/transaction/xa/XAResource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    :cond_1
    monitor-exit p0

    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    :try_start_2
    new-instance v0, Ljavax/transaction/xa/XAException;

    invoke-direct {v0}, Ljavax/transaction/xa/XAException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXAConnection:Ljavax/sql/XAConnection;

    if-nez v0, :cond_0

    .line 196
    invoke-super {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->close()V

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXid:Ljavax/transaction/xa/Xid;

    invoke-static {v0}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->removeXAConnectionMapping(Ljavax/transaction/xa/Xid;)V

    .line 199
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXAConnection:Ljavax/sql/XAConnection;

    invoke-interface {v0}, Ljavax/sql/XAConnection;->close()V

    goto :goto_0
.end method

.method public commit(Ljavax/transaction/xa/Xid;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->switchToXid(Ljavax/transaction/xa/Xid;)V

    .line 125
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXAResource:Ljavax/transaction/xa/XAResource;

    invoke-interface {v0, p1, p2}, Ljavax/transaction/xa/XAResource;->commit(Ljavax/transaction/xa/Xid;Z)V

    .line 126
    invoke-static {p1}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->removeXAConnectionMapping(Ljavax/transaction/xa/Xid;)V

    .line 127
    return-void
.end method

.method public end(Ljavax/transaction/xa/Xid;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->switchToXid(Ljavax/transaction/xa/Xid;)V

    .line 131
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXAResource:Ljavax/transaction/xa/XAResource;

    invoke-interface {v0, p1, p2}, Ljavax/transaction/xa/XAResource;->end(Ljavax/transaction/xa/Xid;I)V

    .line 132
    return-void
.end method

.method public forget(Ljavax/transaction/xa/Xid;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->switchToXid(Ljavax/transaction/xa/Xid;)V

    .line 136
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXAResource:Ljavax/transaction/xa/XAResource;

    invoke-interface {v0, p1}, Ljavax/transaction/xa/XAResource;->forget(Ljavax/transaction/xa/Xid;)V

    .line 138
    invoke-static {p1}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->removeXAConnectionMapping(Ljavax/transaction/xa/Xid;)V

    .line 139
    return-void
.end method

.method public declared-synchronized getConnection()Ljava/sql/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXAConnection:Ljavax/sql/XAConnection;

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->getConnection(ZZ)Ljava/sql/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 190
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXAConnection:Ljavax/sql/XAConnection;

    invoke-interface {v0}, Ljavax/sql/XAConnection;->getConnection()Ljava/sql/Connection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTransactionTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public getXAResource()Ljavax/transaction/xa/XAResource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 120
    return-object p0
.end method

.method public isSameRM(Ljavax/transaction/xa/XAResource;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .prologue
    .line 146
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepare(Ljavax/transaction/xa/Xid;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->switchToXid(Ljavax/transaction/xa/Xid;)V

    .line 151
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXAResource:Ljavax/transaction/xa/XAResource;

    invoke-interface {v0, p1}, Ljavax/transaction/xa/XAResource;->prepare(Ljavax/transaction/xa/Xid;)I

    move-result v0

    return v0
.end method

.method public recover(I)[Ljavax/transaction/xa/Xid;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    invoke-static {v0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->recover(Ljava/sql/Connection;I)[Ljavax/transaction/xa/Xid;

    move-result-object v0

    return-object v0
.end method

.method public rollback(Ljavax/transaction/xa/Xid;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->switchToXid(Ljavax/transaction/xa/Xid;)V

    .line 160
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXAResource:Ljavax/transaction/xa/XAResource;

    invoke-interface {v0, p1}, Ljavax/transaction/xa/XAResource;->rollback(Ljavax/transaction/xa/Xid;)V

    .line 161
    invoke-static {p1}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->removeXAConnectionMapping(Ljavax/transaction/xa/Xid;)V

    .line 162
    return-void
.end method

.method public setTransactionTimeout(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public start(Ljavax/transaction/xa/Xid;I)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->switchToXid(Ljavax/transaction/xa/Xid;)V

    .line 171
    const/high16 v0, 0x20

    if-eq p2, v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXAResource:Ljavax/transaction/xa/XAResource;

    invoke-interface {v0, p1, p2}, Ljavax/transaction/xa/XAResource;->start(Ljavax/transaction/xa/Xid;I)V

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->currentXAResource:Ljavax/transaction/xa/XAResource;

    const/high16 v1, 0x800

    invoke-interface {v0, p1, v1}, Ljavax/transaction/xa/XAResource;->start(Ljavax/transaction/xa/Xid;I)V

    goto :goto_0
.end method
