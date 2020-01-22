.class public Lcom/mysql/fabric/FabricConnection;
.super Ljava/lang/Object;
.source "FabricConnection.java"


# instance fields
.field private client:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;

.field private serverGroupsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mysql/fabric/ServerGroup;",
            ">;"
        }
    .end annotation
.end field

.field private serverGroupsExpiration:J

.field private serverGroupsTtl:I

.field private shardMappingsByTableName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mysql/fabric/ShardMapping;",
            ">;"
        }
    .end annotation
.end field

.field private shardMappingsExpiration:J

.field private shardMappingsTtl:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/fabric/FabricConnection;->shardMappingsByTableName:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/fabric/FabricConnection;->serverGroupsByName:Ljava/util/Map;

    .line 45
    new-instance v0, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;

    invoke-direct {v0, p1, p2, p3}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mysql/fabric/FabricConnection;->client:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;

    .line 46
    invoke-virtual {p0}, Lcom/mysql/fabric/FabricConnection;->refreshState()I

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/fabric/FabricConnection;->shardMappingsByTableName:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/fabric/FabricConnection;->serverGroupsByName:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multiple connections not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getClient()Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mysql/fabric/FabricConnection;->client:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;

    return-object v0
.end method

.method public getFabricHosts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstanceUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServerGroup(Ljava/lang/String;)Lcom/mysql/fabric/ServerGroup;
    .locals 1
    .parameter

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/mysql/fabric/FabricConnection;->isStateExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/mysql/fabric/FabricConnection;->refreshStatePassive()I

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/mysql/fabric/FabricConnection;->serverGroupsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/ServerGroup;

    return-object v0
.end method

.method public getShardMapping(Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/fabric/ShardMapping;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/mysql/fabric/FabricConnection;->isStateExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/mysql/fabric/FabricConnection;->refreshStatePassive()I

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/mysql/fabric/FabricConnection;->shardMappingsByTableName:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/ShardMapping;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public isStateExpired()Z
    .locals 4

    .prologue
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mysql/fabric/FabricConnection;->shardMappingsExpiration:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mysql/fabric/FabricConnection;->serverGroupsExpiration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshState()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mysql/fabric/FabricConnection;->client:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;

    invoke-virtual {v0}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->getServerGroups()Lcom/mysql/fabric/FabricStateResponse;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/mysql/fabric/FabricConnection;->client:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;

    invoke-virtual {v1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->getShardMappings()Lcom/mysql/fabric/FabricStateResponse;

    move-result-object v1

    .line 74
    invoke-virtual {v0}, Lcom/mysql/fabric/FabricStateResponse;->getExpireTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mysql/fabric/FabricConnection;->serverGroupsExpiration:J

    .line 75
    invoke-virtual {v0}, Lcom/mysql/fabric/FabricStateResponse;->getTtl()I

    move-result v2

    iput v2, p0, Lcom/mysql/fabric/FabricConnection;->serverGroupsTtl:I

    .line 76
    invoke-virtual {v0}, Lcom/mysql/fabric/FabricStateResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/ServerGroup;

    .line 77
    iget-object v3, p0, Lcom/mysql/fabric/FabricConnection;->serverGroupsByName:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mysql/fabric/ServerGroup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v1}, Lcom/mysql/fabric/FabricStateResponse;->getExpireTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mysql/fabric/FabricConnection;->shardMappingsExpiration:J

    .line 81
    invoke-virtual {v1}, Lcom/mysql/fabric/FabricStateResponse;->getTtl()I

    move-result v0

    iput v0, p0, Lcom/mysql/fabric/FabricConnection;->shardMappingsTtl:I

    .line 82
    invoke-virtual {v1}, Lcom/mysql/fabric/FabricStateResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/ShardMapping;

    .line 84
    invoke-virtual {v0}, Lcom/mysql/fabric/ShardMapping;->getShardTables()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/ShardTable;

    .line 85
    iget-object v4, p0, Lcom/mysql/fabric/FabricConnection;->shardMappingsByTableName:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mysql/fabric/ShardTable;->getDatabase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/mysql/fabric/ShardTable;->getTable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 89
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public refreshStatePassive()I
    .locals 5

    .prologue
    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/fabric/FabricConnection;->refreshState()I
    :try_end_0
    .catch Lcom/mysql/fabric/FabricCommunicationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 101
    :goto_0
    return v0

    .line 95
    :catch_0
    move-exception v0

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/mysql/fabric/FabricConnection;->serverGroupsTtl:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/fabric/FabricConnection;->serverGroupsExpiration:J

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/mysql/fabric/FabricConnection;->shardMappingsTtl:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/fabric/FabricConnection;->shardMappingsExpiration:J

    .line 101
    const/4 v0, 0x0

    goto :goto_0
.end method
