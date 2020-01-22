.class public Lcom/mysql/jdbc/JDBC42PreparedStatement;
.super Lcom/mysql/jdbc/JDBC4PreparedStatement;
.source "JDBC42PreparedStatement.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/JDBC4PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)V
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
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)V

    .line 44
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
    .line 51
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

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
    .line 55
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mysql/jdbc/JDBC42Helper;->translateAndCheckSqlType(Ljava/sql/SQLType;Lcom/mysql/jdbc/ExceptionInterceptor;)I

    move-result v0

    return v0
.end method


# virtual methods
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
    .line 67
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 68
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4PreparedStatement;->setObject(ILjava/lang/Object;)V

    .line 69
    monitor-exit v1

    .line 70
    return-void

    .line 69
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
    .line 82
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 83
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42PreparedStatement;->checkSqlType(I)I

    move-result v2

    invoke-super {p0, p1, v0, v2}, Lcom/mysql/jdbc/JDBC4PreparedStatement;->setObject(ILjava/lang/Object;I)V

    .line 84
    monitor-exit v1

    .line 85
    return-void

    .line 84
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
    .line 98
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 99
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42PreparedStatement;->checkSqlType(I)I

    move-result v2

    invoke-super {p0, p1, v0, v2, p4}, Lcom/mysql/jdbc/JDBC4PreparedStatement;->setObject(ILjava/lang/Object;II)V

    .line 100
    monitor-exit v1

    .line 101
    return-void

    .line 100
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
    .line 113
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 114
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42PreparedStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result v2

    invoke-super {p0, p1, v0, v2}, Lcom/mysql/jdbc/JDBC4PreparedStatement;->setObject(ILjava/lang/Object;I)V

    .line 115
    monitor-exit v1

    .line 116
    return-void

    .line 115
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
    .line 129
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 130
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42PreparedStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result v2

    invoke-super {p0, p1, v0, v2, p4}, Lcom/mysql/jdbc/JDBC4PreparedStatement;->setObject(ILjava/lang/Object;II)V

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
