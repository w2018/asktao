.class public Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;
.super Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;
.source "JDBC42CallableStatementWrapper.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/CallableStatement;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/CallableStatement;)V

    .line 37
    return-void
.end method


# virtual methods
.method public registerOutParameter(ILjava/sql/SQLType;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->registerOutParameter(ILjava/sql/SQLType;)V

    .line 56
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public registerOutParameter(ILjava/sql/SQLType;I)V
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
    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->registerOutParameter(ILjava/sql/SQLType;I)V

    .line 76
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public registerOutParameter(ILjava/sql/SQLType;Ljava/lang/String;)V
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
    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->registerOutParameter(ILjava/sql/SQLType;Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public registerOutParameter(Ljava/lang/String;Ljava/sql/SQLType;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->registerOutParameter(Ljava/lang/String;Ljava/sql/SQLType;)V

    .line 115
    :goto_0
    return-void

    .line 110
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public registerOutParameter(Ljava/lang/String;Ljava/sql/SQLType;I)V
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
    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->registerOutParameter(Ljava/lang/String;Ljava/sql/SQLType;I)V

    .line 135
    :goto_0
    return-void

    .line 130
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public registerOutParameter(Ljava/lang/String;Ljava/sql/SQLType;Ljava/lang/String;)V
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
    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->registerOutParameter(Ljava/lang/String;Ljava/sql/SQLType;Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setObject(ILjava/lang/Object;Ljava/sql/SQLType;)V
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
    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setObject(ILjava/lang/Object;Ljava/sql/SQLType;)V

    .line 175
    :goto_0
    return-void

    .line 170
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setObject(ILjava/lang/Object;Ljava/sql/SQLType;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/CallableStatement;->setObject(ILjava/lang/Object;Ljava/sql/SQLType;I)V

    .line 196
    :goto_0
    return-void

    .line 191
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;Ljava/sql/SQLType;)V
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
    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setObject(Ljava/lang/String;Ljava/lang/Object;Ljava/sql/SQLType;)V

    .line 216
    :goto_0
    return-void

    .line 211
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;Ljava/sql/SQLType;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/CallableStatement;->setObject(Ljava/lang/String;Ljava/lang/Object;Ljava/sql/SQLType;I)V

    .line 237
    :goto_0
    return-void

    .line 232
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method
