.class public Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;
.super Ljava/lang/Object;
.source "JDBC4ClientInfoProviderSP.java"

# interfaces
.implements Lcom/mysql/jdbc/JDBC4ClientInfoProvider;


# instance fields
.field getClientInfoBulkSp:Ljava/sql/PreparedStatement;

.field getClientInfoSp:Ljava/sql/PreparedStatement;

.field setClientInfoSp:Ljava/sql/PreparedStatement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->setClientInfoSp:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->setClientInfoSp:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->setClientInfoSp:Ljava/sql/PreparedStatement;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoSp:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoSp:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoSp:Ljava/sql/PreparedStatement;

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoBulkSp:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoBulkSp:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoBulkSp:Ljava/sql/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_2
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getClientInfo(Ljava/sql/Connection;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 100
    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoSp:Ljava/sql/PreparedStatement;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoSp:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z

    .line 108
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoSp:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getResultSet()Ljava/sql/ResultSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 110
    :try_start_1
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    .line 114
    :cond_0
    if-eqz v1, :cond_1

    .line 115
    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    :cond_1
    monitor-exit p0

    return-object v2

    .line 114
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 115
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    :cond_2
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 114
    :catchall_2
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized getClientInfo(Ljava/sql/Connection;)Ljava/util/Properties;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 78
    monitor-enter p0

    const/4 v1, 0x0

    .line 80
    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoBulkSp:Ljava/sql/PreparedStatement;

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->execute()Z

    .line 85
    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoBulkSp:Ljava/sql/PreparedStatement;

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v1

    .line 87
    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 92
    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    :cond_0
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 91
    :cond_1
    if-eqz v1, :cond_2

    .line 92
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 96
    :cond_2
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized initialize(Ljava/sql/Connection;Ljava/util/Properties;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v1

    invoke-interface {v1}, Ljava/sql/DatabaseMetaData;->getIdentifierQuoteString()Ljava/lang/String;

    move-result-object v3

    .line 42
    const-string v1, "clientInfoSetSPName"

    const-string v2, "setClientInfo"

    invoke-virtual {p2, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 43
    const-string v1, "clientInfoGetSPName"

    const-string v2, "getClientInfo"

    invoke-virtual {p2, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    const-string v1, "clientInfoGetBulkSPName"

    const-string v2, "getClientInfoBulk"

    invoke-virtual {p2, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 45
    const-string v1, "clientInfoCatalog"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/sql/Connection;->getCatalog()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 50
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/Connection;

    move-object v1, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CALL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "(?, ?)"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/mysql/jdbc/Connection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->setClientInfoSp:Ljava/sql/PreparedStatement;

    .line 53
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/Connection;

    move-object v1, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CALL"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(?)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/mysql/jdbc/Connection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoSp:Ljava/sql/PreparedStatement;

    .line 56
    check-cast p1, Lcom/mysql/jdbc/Connection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CALL "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/mysql/jdbc/Connection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoBulkSp:Ljava/sql/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    :cond_0
    move-object v2, v1

    .line 48
    goto/16 :goto_0

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setClientInfo(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->setClientInfoSp:Ljava/sql/PreparedStatement;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->setClientInfoSp:Ljava/sql/PreparedStatement;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->setClientInfoSp:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    monitor-exit p0

    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    :try_start_1
    new-instance v1, Ljava/sql/SQLClientInfoException;

    invoke-direct {v1}, Ljava/sql/SQLClientInfoException;-><init>()V

    .line 147
    invoke-virtual {v1, v0}, Ljava/sql/SQLClientInfoException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 149
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setClientInfo(Ljava/sql/Connection;Ljava/util/Properties;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 126
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-virtual {p0, p1, v0, v2}, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->setClientInfo(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    :try_start_1
    new-instance v1, Ljava/sql/SQLClientInfoException;

    invoke-direct {v1}, Ljava/sql/SQLClientInfoException;-><init>()V

    .line 134
    invoke-virtual {v1, v0}, Ljava/sql/SQLClientInfoException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 136
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 138
    :cond_0
    monitor-exit p0

    return-void
.end method
