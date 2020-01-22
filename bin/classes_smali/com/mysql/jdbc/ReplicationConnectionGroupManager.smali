.class public Lcom/mysql/jdbc/ReplicationConnectionGroupManager;
.super Ljava/lang/Object;
.source "ReplicationConnectionGroupManager.java"


# static fields
.field private static GROUP_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/ReplicationConnectionGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static hasRegisteredJmx:Z

.field private static mbean:Lcom/mysql/jdbc/jmx/ReplicationGroupManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    .line 36
    new-instance v0, Lcom/mysql/jdbc/jmx/ReplicationGroupManager;

    invoke-direct {v0}, Lcom/mysql/jdbc/jmx/ReplicationGroupManager;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->mbean:Lcom/mysql/jdbc/jmx/ReplicationGroupManager;

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->hasRegisteredJmx:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSlaveHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {p0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 80
    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->addSlaveHost(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public static getActiveConnectionCount(Ljava/lang/String;)J
    .locals 6
    .parameter

    .prologue
    .line 193
    const-wide/16 v0, 0x0

    .line 194
    invoke-static {p0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 195
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 196
    invoke-virtual {v0}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getActiveConnectionCount()J

    move-result-wide v4

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_0

    .line 198
    :cond_0
    return-wide v1
.end method

.method public static getConnectionCountWithHostAsMaster(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    invoke-static {p0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 159
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 160
    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getConnectionCountWithHostAsMaster(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 162
    :cond_0
    return v1
.end method

.method public static getConnectionCountWithHostAsSlave(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    invoke-static {p0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 150
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 151
    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getConnectionCountWithHostAsSlave(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 153
    :cond_0
    return v1
.end method

.method public static getConnectionGroup(Ljava/lang/String;)Lcom/mysql/jdbc/ReplicationConnectionGroup;
    .locals 1
    .parameter

    .prologue
    .line 59
    sget-object v0, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    return-object v0
.end method

.method public static declared-synchronized getConnectionGroupInstance(Ljava/lang/String;)Lcom/mysql/jdbc/ReplicationConnectionGroup;
    .locals 3
    .parameter

    .prologue
    .line 41
    const-class v1, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ReplicationConnectionGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :goto_0
    monitor-exit v1

    return-object v0

    .line 44
    :cond_0
    :try_start_1
    new-instance v0, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    invoke-direct {v0, p0}, Lcom/mysql/jdbc/ReplicationConnectionGroup;-><init>(Ljava/lang/String;)V

    .line 45
    sget-object v2, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/mysql/jdbc/ReplicationConnectionGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 66
    sget-object v1, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 74
    :goto_0
    return-object v0

    .line 69
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 70
    sget-object v0, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 71
    if-eqz v0, :cond_2

    .line 72
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v0, v1

    .line 74
    goto :goto_0
.end method

.method public static getMasterHosts(Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    invoke-static {p0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 178
    invoke-virtual {v0}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getMasterHosts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 180
    :cond_0
    return-object v1
.end method

.method public static getNumberOfMasterPromotion(Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    invoke-static {p0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 141
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 142
    int-to-long v3, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getNumberOfSlavePromotions()J

    move-result-wide v0

    add-long/2addr v0, v3

    long-to-int v0, v0

    move v1, v0

    goto :goto_0

    .line 144
    :cond_0
    return v1
.end method

.method public static getRegisteredReplicationConnectionGroups()Ljava/lang/String;
    .locals 4

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    const-string v0, ""

    .line 129
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 130
    invoke-virtual {v0}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v0, ","

    move-object v1, v0

    .line 134
    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSlaveHosts(Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {p0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 169
    invoke-virtual {v0}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getSlaveHosts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 171
    :cond_0
    return-object v1
.end method

.method public static getSlavePromotionCount(Ljava/lang/String;)J
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 104
    const-wide/16 v0, 0x0

    .line 105
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 106
    invoke-virtual {v0}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getNumberOfSlavePromotions()J

    move-result-wide v3

    .line 107
    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    move-wide v0, v3

    :goto_1
    move-wide v1, v0

    .line 110
    goto :goto_0

    .line 111
    :cond_0
    return-wide v1

    :cond_1
    move-wide v0, v1

    goto :goto_1
.end method

.method public static getTotalConnectionCount(Ljava/lang/String;)J
    .locals 6
    .parameter

    .prologue
    .line 184
    const-wide/16 v0, 0x0

    .line 185
    invoke-static {p0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 186
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 187
    invoke-virtual {v0}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getTotalConnectionCount()J

    move-result-wide v4

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_0

    .line 189
    :cond_0
    return-wide v1
.end method

.method public static promoteSlaveToMaster(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {p0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 98
    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->promoteSlaveToMaster(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method

.method public static registerJmx()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 50
    sget-boolean v0, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->hasRegisteredJmx:Z

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->mbean:Lcom/mysql/jdbc/jmx/ReplicationGroupManager;

    invoke-virtual {v0}, Lcom/mysql/jdbc/jmx/ReplicationGroupManager;->registerJmx()V

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->hasRegisteredJmx:Z

    goto :goto_0
.end method

.method public static removeMasterHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->removeMasterHost(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 116
    return-void
.end method

.method public static removeMasterHost(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {p0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 120
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 121
    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->removeMasterHost(Ljava/lang/String;Z)V

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method

.method public static removeSlaveHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->removeSlaveHost(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 86
    return-void
.end method

.method public static removeSlaveHost(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {p0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 91
    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->removeSlaveHost(Ljava/lang/String;Z)V

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method
