.class public Lcom/mysql/jdbc/JDBC4LoadBalancedMySQLConnection;
.super Lcom/mysql/jdbc/LoadBalancedMySQLConnection;
.source "JDBC4LoadBalancedMySQLConnection.java"

# interfaces
.implements Lcom/mysql/jdbc/JDBC4MySQLConnection;


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/LoadBalancedMySQLConnection;-><init>(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;)V

    .line 46
    return-void
.end method

.method private getJDBC4Connection()Lcom/mysql/jdbc/JDBC4MySQLConnection;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4LoadBalancedMySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/JDBC4MySQLConnection;

    return-object v0
.end method


# virtual methods
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
    .line 57
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4LoadBalancedMySQLConnection;->getJDBC4Connection()Lcom/mysql/jdbc/JDBC4MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/JDBC4MySQLConnection;->createArrayOf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Array;

    move-result-object v0

    return-object v0
.end method

.method public createBlob()Ljava/sql/Blob;
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4LoadBalancedMySQLConnection;->getJDBC4Connection()Lcom/mysql/jdbc/JDBC4MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/JDBC4MySQLConnection;->createBlob()Ljava/sql/Blob;

    move-result-object v0

    return-object v0
.end method

.method public createClob()Ljava/sql/Clob;
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4LoadBalancedMySQLConnection;->getJDBC4Connection()Lcom/mysql/jdbc/JDBC4MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/JDBC4MySQLConnection;->createClob()Ljava/sql/Clob;

    move-result-object v0

    return-object v0
.end method

.method public createNClob()Ljava/sql/NClob;
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4LoadBalancedMySQLConnection;->getJDBC4Connection()Lcom/mysql/jdbc/JDBC4MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/JDBC4MySQLConnection;->createNClob()Ljava/sql/NClob;

    move-result-object v0

    return-object v0
.end method

.method public createSQLXML()Ljava/sql/SQLXML;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4LoadBalancedMySQLConnection;->getJDBC4Connection()Lcom/mysql/jdbc/JDBC4MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/JDBC4MySQLConnection;->createSQLXML()Ljava/sql/SQLXML;

    move-result-object v0

    return-object v0
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
    .line 61
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4LoadBalancedMySQLConnection;->getJDBC4Connection()Lcom/mysql/jdbc/JDBC4MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/JDBC4MySQLConnection;->createStruct(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Struct;

    move-result-object v0

    return-object v0
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
    .line 69
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4LoadBalancedMySQLConnection;->getJDBC4Connection()Lcom/mysql/jdbc/JDBC4MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/JDBC4MySQLConnection;->getClientInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientInfo()Ljava/util/Properties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4LoadBalancedMySQLConnection;->getJDBC4Connection()Lcom/mysql/jdbc/JDBC4MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/JDBC4MySQLConnection;->getClientInfo()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public getClientInfoProviderImpl()Lcom/mysql/jdbc/JDBC4ClientInfoProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4LoadBalancedMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    move-result-object v1

    monitor-enter v1

    .line 123
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4LoadBalancedMySQLConnection;->getJDBC4Connection()Lcom/mysql/jdbc/JDBC4MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/JDBC4MySQLConnection;->getClientInfoProviderImpl()Lcom/mysql/jdbc/JDBC4ClientInfoProvider;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isValid(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4LoadBalancedMySQLConnection;->getJDBC4Connection()Lcom/mysql/jdbc/JDBC4MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/JDBC4MySQLConnection;->isValid(I)Z

    move-result v0

    return v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 1
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
    .line 85
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4LoadBalancedMySQLConnection;->checkClosed()V

    .line 88
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setClientInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4LoadBalancedMySQLConnection;->getJDBC4Connection()Lcom/mysql/jdbc/JDBC4MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/JDBC4MySQLConnection;->setClientInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public setClientInfo(Ljava/util/Properties;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/mysql/jdbc/JDBC4LoadBalancedMySQLConnection;->getJDBC4Connection()Lcom/mysql/jdbc/JDBC4MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/JDBC4MySQLConnection;->setClientInfo(Ljava/util/Properties;)V

    .line 78
    return-void
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
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
    .line 94
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
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

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4LoadBalancedMySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method
