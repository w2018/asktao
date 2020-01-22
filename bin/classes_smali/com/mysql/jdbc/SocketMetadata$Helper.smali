.class public Lcom/mysql/jdbc/SocketMetadata$Helper;
.super Ljava/lang/Object;
.source "SocketMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/SocketMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Helper"
.end annotation


# static fields
.field public static final IS_LOCAL_HOSTNAME_REPLACEMENT_PROPERTY_NAME:Ljava/lang/String; = "com.mysql.jdbc.test.isLocalHostnameReplacement"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findProcessHost(JLjava/sql/Statement;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    const-string v1, "SHOW PROCESSLIST"

    invoke-interface {p2, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    .line 140
    :cond_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v2

    .line 143
    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    .line 144
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_1
    return-object v0
.end method

.method public static isLocallyConnected(Lcom/mysql/jdbc/ConnectionImpl;)Z
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getId()J

    move-result-wide v3

    .line 49
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v5

    .line 54
    const-string v0, "com.mysql.jdbc.test.isLocalHostnameReplacement"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "com.mysql.jdbc.test.isLocalHostnameReplacement"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_0
    if-eqz v0, :cond_8

    .line 88
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v3

    const-string v4, "Using \'host\' value of \'%s\' to determine locality of connection"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mysql/jdbc/log/Log;->logDebug(Ljava/lang/Object;)V

    .line 90
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 91
    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    .line 92
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 97
    :try_start_0
    invoke-static {v3}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    .line 100
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    iget-object v0, v0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 102
    instance-of v5, v0, Ljava/net/InetSocketAddress;

    if-eqz v5, :cond_5

    .line 103
    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 105
    array-length v6, v4

    move v0, v2

    :goto_1
    if-ge v0, v6, :cond_6

    aget-object v7, v4, v0

    .line 106
    invoke-virtual {v7, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 107
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v0

    const-string v4, "Locally connected - HostAddress(%s).equals(whereIconnectedTo({%s})"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/mysql/jdbc/log/Log;->logDebug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_2
    move v2, v0

    .line 133
    :goto_3
    return v2

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v6, "com.mysql.jdbc.test.isLocalHostnameReplacement"

    invoke-virtual {v0, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v5, "com.mysql.jdbc.test.isLocalHostnameReplacement"

    invoke-virtual {v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_1
    :try_start_1
    invoke-static {v3, v4, v5}, Lcom/mysql/jdbc/SocketMetadata$Helper;->findProcessHost(JLjava/sql/Statement;)Ljava/lang/String;

    move-result-object v0

    .line 64
    if-nez v0, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v6

    const-string v7, "Connection id %d not found in \"SHOW PROCESSLIST\", assuming 32-bit overflow, using SELECT CONNECTION_ID() instead"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;)V

    .line 71
    const-string v6, "SELECT CONNECTION_ID()"

    invoke-interface {v5, v6}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v6

    .line 73
    invoke-interface {v6}, Ljava/sql/ResultSet;->next()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 74
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v3

    .line 76
    invoke-static {v3, v4, v5}, Lcom/mysql/jdbc/SocketMetadata$Helper;->findProcessHost(JLjava/sql/Statement;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 83
    :cond_2
    :goto_4
    invoke-interface {v5}, Ljava/sql/Statement;->close()V

    goto/16 :goto_0

    .line 78
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v6

    const-string v7, "No rows returned for statement \"SELECT CONNECTION_ID()\", local connection check will most likely be incorrect"

    invoke-interface {v6, v7}, Lcom/mysql/jdbc/log/Log;->logError(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 83
    :catchall_0
    move-exception v0

    invoke-interface {v5}, Ljava/sql/Statement;->close()V

    throw v0

    .line 112
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v8

    const-string v9, "Attempted locally connected check failed - ! HostAddress(%s).equals(whereIconnectedTo(%s)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v7, 0x1

    aput-object v5, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lcom/mysql/jdbc/log/Log;->logDebug(Ljava/lang/Object;)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 117
    :cond_5
    const-string v4, "Remote socket address %s is not an inet socket address"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/mysql/jdbc/log/Log;->logDebug(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_6
    move v0, v2

    goto/16 :goto_2

    .line 122
    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v4

    const-string v5, "Connection.CantDetectLocalConnect"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v5, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 127
    :cond_7
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v3

    const-string v4, "No port number present in \'host\' from SHOW PROCESSLIST \'%s\', unable to determine whether locally connected"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 131
    :cond_8
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v0

    const-string v5, "Cannot find process listing for connection %d in SHOW PROCESSLIST output, unable to determine if locally connected"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;)V

    goto/16 :goto_3
.end method
