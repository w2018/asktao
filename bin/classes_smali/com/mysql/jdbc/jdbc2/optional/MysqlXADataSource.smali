.class public Lcom/mysql/jdbc/jdbc2/optional/MysqlXADataSource;
.super Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;
.source "MysqlXADataSource.java"

# interfaces
.implements Ljavax/sql/XADataSource;


# static fields
.field static final serialVersionUID:J = 0x6dcae79776ffbe9fL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;-><init>()V

    .line 39
    return-void
.end method

.method private wrapConnection(Ljava/sql/Connection;)Ljavax/sql/XAConnection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXADataSource;->getPinGlobalTxToPhysicalConnection()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getPinGlobalTxToPhysicalConnection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    check-cast p1, Lcom/mysql/jdbc/Connection;

    invoke-static {p1}, Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;->getInstance(Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/jdbc2/optional/SuspendableXAConnection;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_1
    check-cast p1, Lcom/mysql/jdbc/Connection;

    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXADataSource;->getLogXaCommands()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->getInstance(Lcom/mysql/jdbc/Connection;Z)Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getXAConnection()Ljavax/sql/XAConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXADataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 48
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXADataSource;->wrapConnection(Ljava/sql/Connection;)Ljavax/sql/XAConnection;

    move-result-object v0

    return-object v0
.end method

.method public getXAConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/sql/XAConnection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXADataSource;->getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    .line 58
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXADataSource;->wrapConnection(Ljava/sql/Connection;)Ljavax/sql/XAConnection;

    move-result-object v0

    return-object v0
.end method
