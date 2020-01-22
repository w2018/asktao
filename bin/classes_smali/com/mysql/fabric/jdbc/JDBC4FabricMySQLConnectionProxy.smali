.class public Lcom/mysql/fabric/jdbc/JDBC4FabricMySQLConnectionProxy;
.super Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;
.source "JDBC4FabricMySQLConnectionProxy.java"

# interfaces
.implements Lcom/mysql/fabric/jdbc/JDBC4FabricMySQLConnection;
.implements Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProperties;


# static fields
.field private static final serialVersionUID:J = 0x511f5686fc384b3aL


# instance fields
.field private fabricConnection:Lcom/mysql/fabric/FabricConnection;


# direct methods
.method public constructor <init>(Ljava/util/Properties;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;-><init>(Ljava/util/Properties;)V

    .line 94
    return-void
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
    .line 139
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/JDBC4FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/Connection;->createArrayOf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Array;

    move-result-object v0

    return-object v0
.end method

.method public createBlob()Ljava/sql/Blob;
    .locals 2

    .prologue
    .line 98
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/JDBC4FabricMySQLConnectionProxy;->transactionBegun()V

    .line 99
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/JDBC4FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->createBlob()Ljava/sql/Blob;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createClob()Ljava/sql/Clob;
    .locals 2

    .prologue
    .line 107
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/JDBC4FabricMySQLConnectionProxy;->transactionBegun()V

    .line 108
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/JDBC4FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->createClob()Ljava/sql/Clob;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createNClob()Ljava/sql/NClob;
    .locals 2

    .prologue
    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/JDBC4FabricMySQLConnectionProxy;->transactionBegun()V

    .line 117
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/JDBC4FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->createNClob()Ljava/sql/NClob;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createSQLXML()Ljava/sql/SQLXML;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/JDBC4FabricMySQLConnectionProxy;->transactionBegun()V

    .line 125
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/JDBC4FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->createSQLXML()Ljava/sql/SQLXML;

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
    .line 143
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/JDBC4FabricMySQLConnectionProxy;->transactionBegun()V

    .line 144
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/JDBC4FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/Connection;->createStruct(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getClientInfoProviderImpl()Lcom/mysql/jdbc/JDBC4ClientInfoProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/JDBC4FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/JDBC4MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/JDBC4MySQLConnection;->getClientInfoProviderImpl()Lcom/mysql/jdbc/JDBC4ClientInfoProvider;

    move-result-object v0

    return-object v0
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
    .line 134
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/JDBC4FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/Connection;

    .line 135
    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/Connection;->setClientInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_0
    return-void
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
    .line 129
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/JDBC4FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/Connection;

    .line 130
    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setClientInfo(Ljava/util/Properties;)V

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method
