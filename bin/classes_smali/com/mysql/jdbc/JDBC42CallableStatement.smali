.class public Lcom/mysql/jdbc/JDBC42CallableStatement;
.super Lcom/mysql/jdbc/JDBC4CallableStatement;
.source "JDBC42CallableStatement.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4CallableStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
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
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4CallableStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    return-void
.end method

.method private checkSqlType(I)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mysql/jdbc/JDBC42Helper;->checkSqlType(ILcom/mysql/jdbc/ExceptionInterceptor;)I

    move-result v0

    return v0
.end method

.method private translateAndCheckSqlType(Ljava/sql/SQLType;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mysql/jdbc/JDBC42Helper;->translateAndCheckSqlType(Ljava/sql/SQLType;Lcom/mysql/jdbc/ExceptionInterceptor;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public registerOutParameter(ILjava/sql/SQLType;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/JDBC42CallableStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result v0

    invoke-super {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->registerOutParameter(II)V

    .line 59
    return-void
.end method

.method public registerOutParameter(ILjava/sql/SQLType;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/JDBC42CallableStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result v0

    invoke-super {p0, p1, v0, p3}, Lcom/mysql/jdbc/JDBC4CallableStatement;->registerOutParameter(III)V

    .line 71
    return-void
.end method

.method public registerOutParameter(ILjava/sql/SQLType;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/JDBC42CallableStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result v0

    invoke-super {p0, p1, v0, p3}, Lcom/mysql/jdbc/JDBC4CallableStatement;->registerOutParameter(IILjava/lang/String;)V

    .line 83
    return-void
.end method

.method public registerOutParameter(Ljava/lang/String;Ljava/sql/SQLType;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/JDBC42CallableStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result v0

    invoke-super {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->registerOutParameter(Ljava/lang/String;I)V

    .line 94
    return-void
.end method

.method public registerOutParameter(Ljava/lang/String;Ljava/sql/SQLType;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/JDBC42CallableStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result v0

    invoke-super {p0, p1, v0, p3}, Lcom/mysql/jdbc/JDBC4CallableStatement;->registerOutParameter(Ljava/lang/String;II)V

    .line 106
    return-void
.end method

.method public registerOutParameter(Ljava/lang/String;Ljava/sql/SQLType;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/JDBC42CallableStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result v0

    invoke-super {p0, p1, v0, p3}, Lcom/mysql/jdbc/JDBC4CallableStatement;->registerOutParameter(Ljava/lang/String;ILjava/lang/String;)V

    .line 118
    return-void
.end method

.method public setObject(ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 130
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->setObject(ILjava/lang/Object;)V

    .line 131
    monitor-exit v1

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setObject(ILjava/lang/Object;I)V
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
    .line 144
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 145
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42CallableStatement;->checkSqlType(I)I

    move-result v2

    invoke-super {p0, p1, v0, v2}, Lcom/mysql/jdbc/JDBC4CallableStatement;->setObject(ILjava/lang/Object;I)V

    .line 146
    monitor-exit v1

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setObject(ILjava/lang/Object;II)V
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
    .line 160
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 161
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42CallableStatement;->checkSqlType(I)I

    move-result v2

    invoke-super {p0, p1, v0, v2, p4}, Lcom/mysql/jdbc/JDBC4CallableStatement;->setObject(ILjava/lang/Object;II)V

    .line 162
    monitor-exit v1

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 175
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 176
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42CallableStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result v2

    invoke-super {p0, p1, v0, v2}, Lcom/mysql/jdbc/JDBC4CallableStatement;->setObject(ILjava/lang/Object;I)V

    .line 177
    monitor-exit v1

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 191
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 192
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42CallableStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result v2

    invoke-super {p0, p1, v0, v2, p4}, Lcom/mysql/jdbc/JDBC4CallableStatement;->setObject(ILjava/lang/Object;II)V

    .line 193
    monitor-exit v1

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 206
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 207
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42CallableStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result v2

    invoke-super {p0, p1, v0, v2}, Lcom/mysql/jdbc/JDBC4CallableStatement;->setObject(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 208
    monitor-exit v1

    .line 209
    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 222
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 223
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42CallableStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result v2

    invoke-super {p0, p1, v0, v2, p4}, Lcom/mysql/jdbc/JDBC4CallableStatement;->setObject(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 224
    monitor-exit v1

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
