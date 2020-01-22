.class public Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;
.super Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;
.source "JDBC4PreparedStatementWrapper.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)V

    .line 59
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 86
    :goto_0
    monitor-exit p0

    return-void

    .line 67
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :try_start_2
    invoke-super {p0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 73
    :try_start_3
    new-instance v1, Ljavax/sql/StatementEvent;

    invoke-direct {v1, v0, p0}, Ljavax/sql/StatementEvent;-><init>(Ljavax/sql/PooledConnection;Ljava/sql/PreparedStatement;)V

    .line 75
    instance-of v2, v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlPooledConnection;

    if-eqz v2, :cond_2

    .line 76
    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlPooledConnection;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlPooledConnection;->fireStatementEvent(Ljavax/sql/StatementEvent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    :cond_1
    :goto_1
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 77
    :cond_2
    :try_start_5
    instance-of v2, v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;

    if-eqz v2, :cond_3

    .line 78
    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;->fireStatementEvent(Ljavax/sql/StatementEvent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 83
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_6
    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 79
    :cond_3
    :try_start_7
    instance-of v2, v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;

    if-eqz v2, :cond_1

    .line 80
    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;->fireStatementEvent(Ljavax/sql/StatementEvent;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 72
    :catchall_2
    move-exception v1

    .line 73
    :try_start_8
    new-instance v2, Ljavax/sql/StatementEvent;

    invoke-direct {v2, v0, p0}, Ljavax/sql/StatementEvent;-><init>(Ljavax/sql/PooledConnection;Ljava/sql/PreparedStatement;)V

    .line 75
    instance-of v3, v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlPooledConnection;

    if-eqz v3, :cond_5

    .line 76
    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlPooledConnection;

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlPooledConnection;->fireStatementEvent(Ljavax/sql/StatementEvent;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 83
    :cond_4
    :goto_2
    const/4 v0, 0x0

    :try_start_9
    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 77
    :cond_5
    :try_start_a
    instance-of v3, v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;

    if-eqz v3, :cond_6

    .line 78
    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;->fireStatementEvent(Ljavax/sql/StatementEvent;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_2

    .line 83
    :catchall_3
    move-exception v0

    const/4 v1, 0x0

    :try_start_b
    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 79
    :cond_6
    :try_start_c
    instance-of v3, v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;

    if-eqz v3, :cond_4

    .line 80
    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;->fireStatementEvent(Ljavax/sql/StatementEvent;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_2
.end method

.method public isClosed()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->isClosed()Z

    move-result v0

    .line 99
    :goto_0
    return v0

    .line 93
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 99
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPoolable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->isPoolable()Z

    move-result v0

    .line 125
    :goto_0
    return v0

    .line 119
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 125
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 369
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    .line 371
    if-eqz v1, :cond_1

    .line 377
    :cond_0
    :goto_0
    return v0

    .line 375
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 377
    const-string v2, "com.mysql.jdbc.Statement"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "java.sql.Statement"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "java.sql.PreparedStatement"

    .line 378
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "java.sql.Wrapper"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAsciiStream(ILjava/io/InputStream;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;)V

    .line 270
    :goto_0
    return-void

    .line 265
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setAsciiStream(ILjava/io/InputStream;J)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;J)V

    .line 234
    :goto_0
    return-void

    .line 229
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setBinaryStream(ILjava/io/InputStream;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;)V

    .line 282
    :goto_0
    return-void

    .line 277
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setBinaryStream(ILjava/io/InputStream;J)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;J)V

    .line 246
    :goto_0
    return-void

    .line 241
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setBlob(ILjava/io/InputStream;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBlob(ILjava/io/InputStream;)V

    .line 333
    :goto_0
    return-void

    .line 328
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setBlob(ILjava/io/InputStream;J)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setBlob(ILjava/io/InputStream;J)V

    .line 210
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setCharacterStream(ILjava/io/Reader;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setCharacterStream(ILjava/io/Reader;)V

    .line 295
    :goto_0
    return-void

    .line 289
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setCharacterStream(ILjava/io/Reader;J)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setCharacterStream(ILjava/io/Reader;J)V

    .line 258
    :goto_0
    return-void

    .line 253
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setClob(ILjava/io/Reader;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setClob(ILjava/io/Reader;)V

    .line 321
    :goto_0
    return-void

    .line 315
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setClob(ILjava/io/Reader;J)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setClob(ILjava/io/Reader;J)V

    .line 198
    :goto_0
    return-void

    .line 193
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setNCharacterStream(ILjava/io/Reader;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;)V

    .line 308
    :goto_0
    return-void

    .line 302
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setNCharacterStream(ILjava/io/Reader;J)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    .line 186
    :goto_0
    return-void

    .line 181
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setNClob(ILjava/io/Reader;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNClob(ILjava/io/Reader;)V

    .line 345
    :goto_0
    return-void

    .line 340
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setNClob(ILjava/io/Reader;J)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setNClob(ILjava/io/Reader;J)V

    .line 222
    :goto_0
    return-void

    .line 217
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setNClob(ILjava/sql/NClob;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNClob(ILjava/sql/NClob;)V

    .line 150
    :goto_0
    return-void

    .line 145
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setNString(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNString(ILjava/lang/String;)V

    .line 174
    :goto_0
    return-void

    .line 169
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setPoolable(Z)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setPoolable(Z)V

    .line 112
    :goto_0
    return-void

    .line 107
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setRowId(ILjava/sql/RowId;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setRowId(ILjava/sql/RowId;)V

    .line 138
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setSQLXML(ILjava/sql/SQLXML;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setSQLXML(ILjava/sql/SQLXML;)V

    .line 162
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public declared-synchronized unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    const-string v0, "java.sql.Statement"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "java.sql.PreparedStatement"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "java.sql.Wrapper.class"

    .line 403
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 422
    :goto_0
    monitor-exit p0

    return-object v0

    .line 407
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 408
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 413
    if-nez v0, :cond_4

    .line 414
    if-nez v0, :cond_3

    .line 415
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;

    iget-object v3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-direct {v2, p0, v3}, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;-><init>(Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    :cond_3
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to unwrap to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
