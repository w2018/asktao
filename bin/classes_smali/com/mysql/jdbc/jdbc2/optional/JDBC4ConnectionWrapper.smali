.class public Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;
.super Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;
.source "JDBC4ConnectionWrapper.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Lcom/mysql/jdbc/Connection;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Lcom/mysql/jdbc/Connection;Z)V

    .line 65
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 69
    :try_start_0
    invoke-super {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->unwrappedInterfaces:Ljava/util/Map;

    .line 73
    return-void

    .line 71
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->unwrappedInterfaces:Ljava/util/Map;

    throw v0
.end method

.method public createArrayOf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Array;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1, p2}, Ljava/sql/Connection;->createArrayOf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Array;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 96
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createBlob()Ljava/sql/Blob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->createBlob()Ljava/sql/Blob;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 288
    :goto_0
    return-object v0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 288
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createClob()Ljava/sql/Clob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->createClob()Ljava/sql/Clob;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 303
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createNClob()Ljava/sql/NClob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->createNClob()Ljava/sql/NClob;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 318
    :goto_0
    return-object v0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 318
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createSQLXML()Ljava/sql/SQLXML;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->createSQLXML()Ljava/sql/SQLXML;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 84
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createStruct(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Struct;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1, p2}, Ljava/sql/Connection;->createStruct(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Struct;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 108
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClientInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->getClientInfo(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 132
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClientInfo()Ljava/util/Properties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getClientInfo()Ljava/util/Properties;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 120
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isValid(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->isValid(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 164
    :goto_0
    monitor-exit p0

    return v0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    const/4 v0, 0x0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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

    .line 222
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 224
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    .line 226
    if-eqz v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.mysql.jdbc.Connection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.mysql.jdbc.ConnectionProperties"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClientInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    .prologue
    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 188
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1, p2}, Ljava/sql/Connection;->setClientInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 191
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 192
    :catch_1
    move-exception v0

    .line 193
    new-instance v1, Ljava/sql/SQLClientInfoException;

    invoke-direct {v1}, Ljava/sql/SQLClientInfoException;-><init>()V

    .line 194
    invoke-virtual {v1, v0}, Ljava/sql/SQLClientInfoException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 196
    throw v1
.end method

.method public setClientInfo(Ljava/util/Properties;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    .prologue
    .line 169
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 171
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->setClientInfo(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 174
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 175
    :catch_1
    move-exception v0

    .line 176
    new-instance v1, Ljava/sql/SQLClientInfoException;

    invoke-direct {v1}, Ljava/sql/SQLClientInfoException;-><init>()V

    .line 177
    invoke-virtual {v1, v0}, Ljava/sql/SQLClientInfoException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 179
    throw v1
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
    .line 254
    monitor-enter p0

    :try_start_0
    const-string v0, "java.sql.Connection"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "java.sql.Wrapper.class"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 270
    :goto_0
    monitor-exit p0

    return-object v0

    .line 258
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->unwrappedInterfaces:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->unwrappedInterfaces:Ljava/util/Map;

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->unwrappedInterfaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 264
    if-nez v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;

    iget-object v3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-direct {v2, p0, v3}, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;-><init>(Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->unwrappedInterfaces:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
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

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
