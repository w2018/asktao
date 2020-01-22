.class public Lcom/mysql/jdbc/jdbc2/optional/MysqlConnectionPoolDataSource;
.super Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;
.source "MysqlConnectionPoolDataSource.java"

# interfaces
.implements Ljavax/sql/ConnectionPoolDataSource;


# static fields
.field static final serialVersionUID:J = -0x6bcb1556f761cd41L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getPooledConnection()Ljavax/sql/PooledConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlConnectionPoolDataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 49
    check-cast v0, Lcom/mysql/jdbc/Connection;

    invoke-static {v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->getInstance(Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 51
    monitor-exit p0

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPooledConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/sql/PooledConnection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/jdbc2/optional/MysqlConnectionPoolDataSource;->getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    .line 68
    check-cast v0, Lcom/mysql/jdbc/Connection;

    invoke-static {v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->getInstance(Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 70
    monitor-exit p0

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
