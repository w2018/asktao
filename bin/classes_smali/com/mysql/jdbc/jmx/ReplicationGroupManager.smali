.class public Lcom/mysql/jdbc/jmx/ReplicationGroupManager;
.super Ljava/lang/Object;
.source "ReplicationGroupManager.java"

# interfaces
.implements Lcom/mysql/jdbc/jmx/ReplicationGroupManagerMBean;


# instance fields
.field private isJmxRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/jmx/ReplicationGroupManager;->isJmxRegistered:Z

    return-void
.end method


# virtual methods
.method public addSlaveHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {p1, p2}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->addSlaveHost(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public getActiveLogicalConnectionCount(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 129
    invoke-static {p1}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getActiveConnectionCount(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getActiveMasterHostCount(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 113
    invoke-static {p1}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getMasterHosts(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public getActiveSlaveHostCount(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 117
    invoke-static {p1}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getSlaveHosts(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public getMasterHostsList(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    .line 75
    invoke-static {p1}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getMasterHosts(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    if-eqz v1, :cond_0

    .line 77
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_0
    const/4 v1, 0x1

    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegisteredConnectionGroups()Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    .line 102
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 103
    if-eqz v1, :cond_0

    .line 104
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_0
    const/4 v1, 0x1

    .line 107
    invoke-virtual {v0}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSlaveHostsList(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    .line 88
    invoke-static {p1}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getSlaveHosts(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    if-eqz v1, :cond_0

    .line 90
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_0
    const/4 v1, 0x1

    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSlavePromotionCount(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 121
    invoke-static {p1}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getNumberOfMasterPromotion(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTotalLogicalConnectionCount(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 125
    invoke-static {p1}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getTotalConnectionCount(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public promoteSlaveToMaster(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {p1, p2}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->promoteSlaveToMaster(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public declared-synchronized registerJmx()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/jmx/ReplicationGroupManager;->isJmxRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 52
    :goto_0
    monitor-exit p0

    return-void

    .line 43
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 45
    :try_start_2
    new-instance v1, Ljavax/management/ObjectName;

    const-string v2, "com.mysql.jdbc.jmx:type=ReplicationGroupManager"

    invoke-direct {v1, v2}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-interface {v0, p0, v1}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/jmx/ReplicationGroupManager;->isJmxRegistered:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    :try_start_3
    const-string v1, "Unable to register replication host management bean with JMX"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeMasterHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {p1, p2}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->removeMasterHost(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public removeSlaveHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p1, p2}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->removeSlaveHost(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method
