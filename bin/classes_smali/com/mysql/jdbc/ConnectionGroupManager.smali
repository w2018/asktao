.class public Lcom/mysql/jdbc/ConnectionGroupManager;
.super Ljava/lang/Object;
.source "ConnectionGroupManager.java"


# static fields
.field private static GROUP_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/ConnectionGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static hasRegisteredJmx:Z

.field private static mbean:Lcom/mysql/jdbc/jmx/LoadBalanceConnectionGroupManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/ConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    .line 39
    new-instance v0, Lcom/mysql/jdbc/jmx/LoadBalanceConnectionGroupManager;

    invoke-direct {v0}, Lcom/mysql/jdbc/jmx/LoadBalanceConnectionGroupManager;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/ConnectionGroupManager;->mbean:Lcom/mysql/jdbc/jmx/LoadBalanceConnectionGroupManager;

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mysql/jdbc/ConnectionGroupManager;->hasRegisteredJmx:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addHost(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionGroup;

    .line 84
    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/ConnectionGroup;->addHost(Ljava/lang/String;Z)V

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method public static getActiveHostCount(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 89
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 90
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionGroup;

    .line 92
    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionGroup;->getInitialHosts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 94
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public static getActiveHostLists(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 164
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 165
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 166
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionGroup;

    .line 168
    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionGroup;->getInitialHosts()Ljava/util/Collection;

    move-result-object v0

    .line 169
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 171
    if-nez v1, :cond_1

    .line 172
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 176
    :goto_1
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 181
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    const-string v0, ""

    .line 183
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const/16 v1, 0x28

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    const-string v0, ","

    move-object v1, v0

    goto :goto_2

    .line 191
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getActiveLogicalConnectionCount(Ljava/lang/String;)J
    .locals 5
    .parameter

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 100
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionGroup;

    .line 101
    int-to-long v3, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionGroup;->getActiveLogicalConnectionCount()J

    move-result-wide v0

    add-long/2addr v0, v3

    long-to-int v0, v0

    move v1, v0

    goto :goto_0

    .line 103
    :cond_0
    int-to-long v0, v1

    return-wide v0
.end method

.method public static getActivePhysicalConnectionCount(Ljava/lang/String;)J
    .locals 5
    .parameter

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 109
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionGroup;

    .line 110
    int-to-long v3, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionGroup;->getActivePhysicalConnectionCount()J

    move-result-wide v0

    add-long/2addr v0, v3

    long-to-int v0, v0

    move v1, v0

    goto :goto_0

    .line 112
    :cond_0
    int-to-long v0, v1

    return-wide v0
.end method

.method public static getConnectionGroup(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionGroup;
    .locals 1
    .parameter

    .prologue
    .line 62
    sget-object v0, Lcom/mysql/jdbc/ConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionGroup;

    return-object v0
.end method

.method public static declared-synchronized getConnectionGroupInstance(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionGroup;
    .locals 3
    .parameter

    .prologue
    .line 44
    const-class v1, Lcom/mysql/jdbc/ConnectionGroupManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/ConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/mysql/jdbc/ConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :goto_0
    monitor-exit v1

    return-object v0

    .line 47
    :cond_0
    :try_start_1
    new-instance v0, Lcom/mysql/jdbc/ConnectionGroup;

    invoke-direct {v0, p0}, Lcom/mysql/jdbc/ConnectionGroup;-><init>(Ljava/lang/String;)V

    .line 48
    sget-object v2, Lcom/mysql/jdbc/ConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/mysql/jdbc/ConnectionGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 69
    sget-object v1, Lcom/mysql/jdbc/ConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 77
    :goto_0
    return-object v0

    .line 72
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 73
    sget-object v0, Lcom/mysql/jdbc/ConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionGroup;

    .line 74
    if-eqz v0, :cond_2

    .line 75
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v0, v1

    .line 77
    goto :goto_0
.end method

.method public static getRegisteredConnectionGroups()Ljava/lang/String;
    .locals 4

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    const-string v0, ""

    .line 198
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionGroup;

    .line 199
    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v0, ","

    move-object v1, v0

    .line 203
    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTotalHostCount(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    .line 116
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 117
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 118
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionGroup;

    .line 119
    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionGroup;->getInitialHosts()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 120
    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionGroup;->getClosedHosts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 122
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public static getTotalLogicalConnectionCount(Ljava/lang/String;)J
    .locals 6
    .parameter

    .prologue
    .line 126
    const-wide/16 v0, 0x0

    .line 127
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 128
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionGroup;

    .line 129
    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionGroup;->getTotalLogicalConnectionCount()J

    move-result-wide v4

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_0

    .line 131
    :cond_0
    return-wide v1
.end method

.method public static getTotalPhysicalConnectionCount(Ljava/lang/String;)J
    .locals 6
    .parameter

    .prologue
    .line 135
    const-wide/16 v0, 0x0

    .line 136
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 137
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionGroup;

    .line 138
    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionGroup;->getTotalPhysicalConnectionCount()J

    move-result-wide v4

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_0

    .line 140
    :cond_0
    return-wide v1
.end method

.method public static getTotalTransactionCount(Ljava/lang/String;)J
    .locals 6
    .parameter

    .prologue
    .line 144
    const-wide/16 v0, 0x0

    .line 145
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 146
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionGroup;

    .line 147
    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionGroup;->getTotalTransactionCount()J

    move-result-wide v4

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_0

    .line 149
    :cond_0
    return-wide v1
.end method

.method public static registerJmx()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 53
    sget-boolean v0, Lcom/mysql/jdbc/ConnectionGroupManager;->hasRegisteredJmx:Z

    if-eqz v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/ConnectionGroupManager;->mbean:Lcom/mysql/jdbc/jmx/LoadBalanceConnectionGroupManager;

    invoke-virtual {v0}, Lcom/mysql/jdbc/jmx/LoadBalanceConnectionGroupManager;->registerJmx()V

    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mysql/jdbc/ConnectionGroupManager;->hasRegisteredJmx:Z

    goto :goto_0
.end method

.method public static removeHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mysql/jdbc/ConnectionGroupManager;->removeHost(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 154
    return-void
.end method

.method public static removeHost(Ljava/lang/String;Ljava/lang/String;Z)V
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
    .line 157
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionGroup;

    .line 159
    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/ConnectionGroup;->removeHost(Ljava/lang/String;Z)V

    goto :goto_0

    .line 161
    :cond_0
    return-void
.end method
