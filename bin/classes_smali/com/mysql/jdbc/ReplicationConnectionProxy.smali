.class public Lcom/mysql/jdbc/ReplicationConnectionProxy;
.super Lcom/mysql/jdbc/MultiHostConnectionProxy;
.source "ReplicationConnectionProxy.java"

# interfaces
.implements Lcom/mysql/jdbc/PingTarget;


# static fields
.field private static INTERFACES_TO_PROXY:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static JDBC_4_REPL_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field protected allowMasterDownConnections:Z

.field protected allowSlaveDownConnections:Z

.field connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

.field private connectionGroupID:J

.field private driver:Lcom/mysql/jdbc/NonRegisteringDriver;

.field protected enableJMX:Z

.field protected masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

.field private masterHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private masterProperties:Ljava/util/Properties;

.field protected readFromMasterWhenNoSlaves:Z

.field protected readFromMasterWhenNoSlavesOriginal:Z

.field protected readOnly:Z

.field private slaveHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private slaveProperties:Ljava/util/Properties;

.field protected slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

.field private thisAsReplicationConnection:Lcom/mysql/jdbc/ReplicationConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    :try_start_0
    const-string v0, "com.mysql.jdbc.JDBC4ReplicationMySQLConnection"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/mysql/jdbc/ReplicationConnectionProxy;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->JDBC_4_REPL_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/mysql/jdbc/ReplicationConnection;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.mysql.jdbc.JDBC4MySQLConnection"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 81
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 73
    :catch_1
    move-exception v0

    .line 74
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 75
    :catch_2
    move-exception v0

    .line 76
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 79
    :cond_0
    new-array v0, v1, [Ljava/lang/Class;

    const-class v1, Lcom/mysql/jdbc/ReplicationConnection;

    aput-object v1, v0, v2

    sput-object v0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/Properties;Ljava/util/List;Ljava/util/Properties;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 106
    invoke-direct {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;-><init>()V

    .line 44
    iput-boolean v4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->enableJMX:Z

    .line 45
    iput-boolean v4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->allowMasterDownConnections:Z

    .line 46
    iput-boolean v4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->allowSlaveDownConnections:Z

    .line 47
    iput-boolean v4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlaves:Z

    .line 48
    iput-boolean v4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlavesOriginal:Z

    .line 49
    iput-boolean v4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    .line 52
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroupID:J

    .line 108
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;

    check-cast v0, Lcom/mysql/jdbc/ReplicationConnection;

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsReplicationConnection:Lcom/mysql/jdbc/ReplicationConnection;

    .line 110
    const-string v0, "replicationEnableJMX"

    const-string v2, "false"

    invoke-virtual {p2, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->enableJMX:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    const-string v0, "allowMasterDownConnections"

    const-string v2, "false"

    invoke-virtual {p2, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->allowMasterDownConnections:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    const-string v0, "allowSlaveDownConnections"

    const-string v2, "false"

    invoke-virtual {p2, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->allowSlaveDownConnections:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 137
    const-string v0, "readFromMasterWhenNoSlaves"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    :try_start_3
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlavesOriginal:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 147
    const-string v0, "replicationConnectionGroup"

    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_3

    .line 149
    invoke-static {v0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getConnectionGroupInstance(Ljava/lang/String;)Lcom/mysql/jdbc/ReplicationConnectionGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 150
    iget-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->enableJMX:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->registerJmx()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsReplicationConnection:Lcom/mysql/jdbc/ReplicationConnection;

    invoke-virtual {v0, v2, p1, p3}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->registerReplicationConnection(Lcom/mysql/jdbc/ReplicationConnection;Ljava/util/List;Ljava/util/List;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroupID:J

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    invoke-virtual {v2}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getSlaveHosts()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    invoke-virtual {v2}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getMasterHosts()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    .line 162
    :goto_0
    new-instance v0, Lcom/mysql/jdbc/NonRegisteringDriver;

    invoke-direct {v0}, Lcom/mysql/jdbc/NonRegisteringDriver;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->driver:Lcom/mysql/jdbc/NonRegisteringDriver;

    .line 163
    iput-object p4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveProperties:Ljava/util/Properties;

    .line 164
    iput-object p2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterProperties:Ljava/util/Properties;

    .line 166
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->resetReadFromMasterWhenNoSlaves()V

    .line 170
    :try_start_4
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->initializeSlavesConnection()Lcom/mysql/jdbc/MySQLConnection;
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    .line 182
    :cond_1
    :try_start_5
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->initializeMasterConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v0, v1

    .line 187
    :goto_1
    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-nez v2, :cond_2

    .line 188
    iget-boolean v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->allowMasterDownConnections:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v2, :cond_5

    .line 190
    iput-boolean v5, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    .line 191
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 203
    :cond_2
    return-void

    .line 113
    :catch_0
    move-exception v2

    .line 114
    const-string v2, "ReplicationConnectionProxy.badValueForReplicationEnableJMX"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 122
    :catch_1
    move-exception v2

    .line 123
    const-string v2, "ReplicationConnectionProxy.badValueForAllowMasterDownConnections"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 131
    :catch_2
    move-exception v2

    .line 132
    const-string v2, "ReplicationConnectionProxy.badValueForAllowSlaveDownConnections"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 141
    :catch_3
    move-exception v2

    .line 142
    const-string v2, "ReplicationConnectionProxy.badValueForReadFromMasterWhenNoSlaves"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 158
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    goto/16 :goto_0

    .line 171
    :catch_4
    move-exception v0

    .line 172
    iget-boolean v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->allowSlaveDownConnections:Z

    if-nez v2, :cond_1

    .line 173
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    if-eqz v1, :cond_4

    .line 174
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsReplicationConnection:Lcom/mysql/jdbc/ReplicationConnection;

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->handleCloseConnection(Lcom/mysql/jdbc/ReplicationConnection;)V

    .line 176
    :cond_4
    throw v0

    .line 193
    :cond_5
    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    if-eqz v2, :cond_6

    .line 194
    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    iget-object v3, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsReplicationConnection:Lcom/mysql/jdbc/ReplicationConnection;

    invoke-virtual {v2, v3}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->handleCloseConnection(Lcom/mysql/jdbc/ReplicationConnection;)V

    .line 196
    :cond_6
    if-eqz v0, :cond_7

    .line 197
    throw v0

    .line 199
    :cond_7
    const-string v0, "ReplicationConnectionProxy.initializationWithEmptyHostsLists"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 183
    :catch_5
    move-exception v0

    goto/16 :goto_1
.end method

.method private buildURL(Ljava/util/List;Ljava/util/Properties;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "jdbc:mysql:loadbalance://"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    const/4 v0, 0x1

    .line 457
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 458
    if-nez v1, :cond_0

    .line 459
    const/16 v1, 0x2c

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 461
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 464
    :cond_1
    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const-string v0, "DBNAME"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    if-eqz v0, :cond_2

    .line 467
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkConnectionCapabilityForMethod(Ljava/lang/reflect/Method;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/mysql/jdbc/ReplicationConnection;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    const-string v0, "ReplicationConnectionProxy.noHostsInconsistentState"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "25000"

    const v2, 0xf4242

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 359
    :cond_0
    return-void
.end method

.method public static createProxyInstance(Ljava/util/List;Ljava/util/Properties;Ljava/util/List;Ljava/util/Properties;)Lcom/mysql/jdbc/ReplicationConnection;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
            ")",
            "Lcom/mysql/jdbc/ReplicationConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lcom/mysql/jdbc/ReplicationConnectionProxy;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mysql/jdbc/ReplicationConnectionProxy;-><init>(Ljava/util/List;Ljava/util/Properties;Ljava/util/List;Ljava/util/Properties;)V

    .line 87
    const-class v1, Lcom/mysql/jdbc/ReplicationConnection;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget-object v2, Lcom/mysql/jdbc/ReplicationConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ReplicationConnection;

    return-object v0
.end method

.method private initializeMasterConnection()Lcom/mysql/jdbc/MySQLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 423
    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 425
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 434
    :goto_0
    return-object v0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->driver:Lcom/mysql/jdbc/NonRegisteringDriver;

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterProperties:Ljava/util/Properties;

    invoke-direct {p0, v1, v2}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->buildURL(Ljava/util/List;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterProperties:Ljava/util/Properties;

    invoke-virtual {v0, v1, v2}, Lcom/mysql/jdbc/NonRegisteringDriver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 431
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->getProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/LoadBalancedConnection;->setProxy(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 433
    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 434
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    goto :goto_0
.end method

.method private initializeSlavesConnection()Lcom/mysql/jdbc/MySQLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 438
    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 440
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 450
    :goto_0
    return-object v0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->driver:Lcom/mysql/jdbc/NonRegisteringDriver;

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveProperties:Ljava/util/Properties;

    invoke-direct {p0, v1, v2}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->buildURL(Ljava/util/List;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveProperties:Ljava/util/Properties;

    invoke-virtual {v0, v1, v2}, Lcom/mysql/jdbc/NonRegisteringDriver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 446
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->getProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/LoadBalancedConnection;->setProxy(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 447
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/LoadBalancedConnection;->setReadOnly(Z)V

    .line 449
    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 450
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    goto :goto_0
.end method

.method private resetReadFromMasterWhenNoSlaves()V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlavesOriginal:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlaves:Z

    .line 712
    return-void

    .line 711
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized switchToMasterConnection()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 474
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/LoadBalancedConnection;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 476
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->initializeMasterConnection()Lcom/mysql/jdbc/MySQLConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    if-nez v1, :cond_1

    .line 488
    :goto_0
    monitor-exit p0

    return v0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 481
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 484
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_2

    .line 485
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;Z)V

    .line 486
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 488
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized switchToSlavesConnection()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 492
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/LoadBalancedConnection;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 494
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->initializeSlavesConnection()Lcom/mysql/jdbc/MySQLConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    if-nez v1, :cond_2

    .line 495
    const/4 v0, 0x0

    .line 506
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 497
    :catch_0
    move-exception v0

    .line 498
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 499
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 502
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isSlavesConnection()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v1, :cond_1

    .line 503
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;Z)V

    .line 504
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    iput-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private switchToSlavesConnectionIfNecessary()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 517
    :cond_1
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToSlavesConnection()Z

    move-result v0

    .line 519
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addSlaveHost(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 601
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isHostSlave(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    :goto_0
    monitor-exit p0

    return-void

    .line 604
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->resetReadFromMasterWhenNoSlaves()V

    .line 606
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-nez v0, :cond_1

    .line 607
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->initializeSlavesConnection()Lcom/mysql/jdbc/MySQLConnection;

    .line 608
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToSlavesConnectionIfNecessary()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 610
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->addHost(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method doAbort(Ljava/util/concurrent/Executor;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->abort(Ljava/util/concurrent/Executor;)V

    .line 306
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->abort(Ljava/util/concurrent/Executor;)V

    .line 307
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsReplicationConnection:Lcom/mysql/jdbc/ReplicationConnection;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->handleCloseConnection(Lcom/mysql/jdbc/ReplicationConnection;)V

    .line 310
    :cond_0
    return-void
.end method

.method doAbortInternal()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->abortInternal()V

    .line 297
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->abortInternal()V

    .line 298
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsReplicationConnection:Lcom/mysql/jdbc/ReplicationConnection;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->handleCloseConnection(Lcom/mysql/jdbc/ReplicationConnection;)V

    .line 301
    :cond_0
    return-void
.end method

.method doClose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->close()V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->close()V

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsReplicationConnection:Lcom/mysql/jdbc/ReplicationConnection;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->handleCloseConnection(Lcom/mysql/jdbc/ReplicationConnection;)V

    .line 292
    :cond_2
    return-void
.end method

.method public doPing()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 365
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result v2

    .line 370
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_1

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->ping()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v1

    .line 380
    :goto_0
    iget-object v3, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v3, :cond_2

    .line 382
    :try_start_1
    iget-object v3, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/LoadBalancedConnection;->ping()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v1

    .line 399
    :goto_1
    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    .line 401
    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 402
    iput-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 403
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    iput-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 404
    iput-boolean v5, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    .line 406
    :cond_0
    throw v0

    .line 377
    :cond_1
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->initializeMasterConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-object v0, v1

    goto :goto_0

    .line 388
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->initializeSlavesConnection()Lcom/mysql/jdbc/MySQLConnection;

    .line 389
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToSlavesConnectionIfNecessary()Z
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    .line 390
    const/4 v2, 0x0

    :cond_3
    move-object v3, v1

    .line 396
    goto :goto_1

    .line 392
    :catch_0
    move-exception v3

    .line 393
    iget-object v4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlaves:Z

    if-nez v4, :cond_9

    .line 394
    :cond_4
    throw v3

    .line 408
    :cond_5
    if-nez v2, :cond_8

    if-nez v3, :cond_6

    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-nez v2, :cond_8

    .line 410
    :cond_6
    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlaves:Z

    if-eqz v2, :cond_7

    if-nez v0, :cond_7

    .line 411
    iput-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 412
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 413
    iput-boolean v5, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    .line 414
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, v5}, Lcom/mysql/jdbc/MySQLConnection;->setReadOnly(Z)V

    .line 416
    :cond_7
    if-eqz v3, :cond_8

    .line 417
    throw v3

    .line 420
    :cond_8
    return-void

    .line 383
    :catch_1
    move-exception v3

    goto :goto_1

    .line 373
    :catch_2
    move-exception v0

    goto :goto_0

    :cond_9
    move-object v3, v1

    goto :goto_1
.end method

.method public getConnectionGroupId()J
    .locals 2

    .prologue
    .line 527
    iget-wide v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroupID:J

    return-wide v0
.end method

.method public declared-synchronized getCurrentConnection()Lcom/mysql/jdbc/Connection;
    .locals 1

    .prologue
    .line 523
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getNullLoadBalancedConnectionInstance()Lcom/mysql/jdbc/LoadBalancedConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMasterConnection()Lcom/mysql/jdbc/Connection;
    .locals 1

    .prologue
    .line 531
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getNewWrapperForThisAsConnection()Lcom/mysql/jdbc/MySQLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->JDBC_4_REPL_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    .line 214
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->JDBC_4_REPL_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/MySQLConnection;

    .line 216
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/mysql/jdbc/ReplicationMySQLConnection;

    invoke-direct {v0, p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;-><init>(Lcom/mysql/jdbc/MultiHostConnectionProxy;)V

    goto :goto_0
.end method

.method public declared-synchronized getSlavesConnection()Lcom/mysql/jdbc/Connection;
    .locals 1

    .prologue
    .line 597
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method invokeMore(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 318
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->checkConnectionCapabilityForMethod(Ljava/lang/reflect/Method;)V

    move v4, v3

    .line 323
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p2, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 324
    if-eqz v2, :cond_0

    instance-of v1, v2, Lcom/mysql/jdbc/Statement;

    if-eqz v1, :cond_0

    .line 325
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/Statement;

    move-object v1, v0

    invoke-interface {v1, p0}, Lcom/mysql/jdbc/Statement;->setPingTarget(Lcom/mysql/jdbc/PingTarget;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :cond_0
    return-object v2

    .line 328
    :catch_0
    move-exception v1

    move-object v2, v1

    .line 329
    if-eqz v4, :cond_1

    move v1, v3

    .line 342
    :goto_1
    if-nez v1, :cond_2

    .line 343
    throw v2

    .line 331
    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/sql/SQLException;

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/sql/SQLException;

    invoke-virtual {v1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v1

    const-string v5, "25000"

    if-ne v1, v5, :cond_3

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/sql/SQLException;

    invoke-virtual {v1}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v1

    const v5, 0xf4241

    if-ne v1, v5, :cond_3

    .line 336
    :try_start_1
    iget-boolean v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->setReadOnly(Z)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    const/4 v1, 0x1

    goto :goto_1

    .line 338
    :catch_1
    move-exception v1

    move v1, v4

    goto :goto_1

    :cond_2
    move v4, v1

    .line 345
    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_1
.end method

.method public isHostMaster(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 585
    if-nez p1, :cond_0

    move v0, v1

    .line 593
    :goto_0
    return v0

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 589
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 593
    goto :goto_0
.end method

.method public isHostSlave(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 647
    if-nez p1, :cond_0

    move v0, v1

    .line 655
    :goto_0
    return v0

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 651
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 655
    goto :goto_0
.end method

.method public isMasterConnection()Z
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadOnly()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSlavesConnection()Z
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pickNewConnection()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 264
    return-void
.end method

.method public declared-synchronized promoteSlaveToMaster(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->removeSlave(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->addHost(Ljava/lang/String;)Z

    .line 542
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToMasterConnection()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    :cond_1
    monitor-exit p0

    return-void

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected propagateProxyDown(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 1
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->setProxy(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->setProxy(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 233
    :cond_1
    return-void
.end method

.method public declared-synchronized removeMasterHost(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 548
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->removeMasterHost(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    monitor-exit p0

    return-void

    .line 548
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeMasterHost(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 552
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->removeMasterHost(Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    monitor-exit p0

    return-void

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeMasterHost(Ljava/lang/String;ZZ)V
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
    .line 556
    monitor-enter p0

    if-eqz p3, :cond_0

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->resetReadFromMasterWhenNoSlaves()V

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 563
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 564
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 568
    :cond_3
    if-eqz p2, :cond_4

    .line 569
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->removeHostWhenNotInUse(Ljava/lang/String;)V

    .line 575
    :goto_1
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 576
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->close()V

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 580
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToSlavesConnectionIfNecessary()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 571
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->removeHost(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized removeSlave(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 615
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->removeSlave(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    monitor-exit p0

    return-void

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeSlave(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 619
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 620
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->resetReadFromMasterWhenNoSlaves()V

    .line 622
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 623
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 627
    :cond_2
    if-eqz p2, :cond_3

    .line 628
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->removeHostWhenNotInUse(Ljava/lang/String;)V

    .line 634
    :goto_1
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->close()V

    .line 636
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 639
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToMasterConnection()Z

    .line 640
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    iget-boolean v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->setReadOnly(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 619
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 630
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->removeHost(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setReadOnly(Z)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 660
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 661
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isSlavesConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 665
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToSlavesConnection()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    move-object v1, v0

    .line 670
    :goto_0
    if-nez v2, :cond_6

    :try_start_2
    iget-boolean v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlaves:Z

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToMasterConnection()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 673
    :goto_1
    if-eqz v0, :cond_3

    .line 674
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 660
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 678
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->isClosed()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 682
    :cond_2
    :try_start_4
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToMasterConnection()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v1

    move v2, v1

    move-object v1, v0

    .line 687
    :goto_2
    if-nez v2, :cond_5

    :try_start_5
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToSlavesConnectionIfNecessary()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 690
    :goto_3
    if-eqz v0, :cond_3

    .line 691
    throw v0

    .line 695
    :cond_3
    iput-boolean p1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    .line 701
    iget-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlaves:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 702
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    iget-boolean v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->setReadOnly(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 704
    :cond_4
    monitor-exit p0

    return-void

    .line 666
    :catch_0
    move-exception v1

    goto :goto_0

    .line 683
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z
    .locals 1
    .parameter

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;Z)V
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
    .line 269
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 273
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;Z)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 274
    :catch_1
    move-exception v0

    goto :goto_0
.end method
