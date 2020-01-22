.class public Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;
.super Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;
.source "JDBC4SuspendableXAConnection.java"


# instance fields
.field private final statementEventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/sql/StatementEventListener;",
            "Ljavax/sql/StatementEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/Connection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;-><init>(Lcom/mysql/jdbc/Connection;)V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;->statementEventListeners:Ljava/util/Map;

    .line 43
    return-void
.end method


# virtual methods
.method public addStatementEventListener(Ljavax/sql/StatementEventListener;)V
    .locals 2
    .parameter

    .prologue
    .line 63
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;->statementEventListeners:Ljava/util/Map;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;->statementEventListeners:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    monitor-exit v1

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->close()V

    .line 48
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;->statementEventListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method fireStatementEvent(Ljavax/sql/StatementEvent;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;->statementEventListeners:Ljava/util/Map;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;->statementEventListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/sql/StatementEventListener;

    .line 86
    invoke-interface {v0, p1}, Ljavax/sql/StatementEventListener;->statementClosed(Ljavax/sql/StatementEvent;)V

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    return-void
.end method

.method public removeStatementEventListener(Ljavax/sql/StatementEventListener;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;->statementEventListeners:Ljava/util/Map;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;->statementEventListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
