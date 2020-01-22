.class public Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;
.super Ljava/lang/Object;
.source "XmlRpcClient.java"


# static fields
.field private static final FIELD_ADDRESS:Ljava/lang/String; = "address"

.field private static final FIELD_COLUMN_NAME:Ljava/lang/String; = "column_name"

.field private static final FIELD_GLOBAL_GROUP_ID:Ljava/lang/String; = "global_group_id"

.field private static final FIELD_GROUP_ID:Ljava/lang/String; = "group_id"

.field private static final FIELD_HOST:Ljava/lang/String; = "host"

.field private static final FIELD_LOWER_BOUND:Ljava/lang/String; = "lower_bound"

.field private static final FIELD_MAPPING_ID:Ljava/lang/String; = "mapping_id"

.field private static final FIELD_MODE:Ljava/lang/String; = "mode"

.field private static final FIELD_PORT:Ljava/lang/String; = "port"

.field private static final FIELD_RESULT:Ljava/lang/String; = "result"

.field private static final FIELD_SCHEMA_NAME:Ljava/lang/String; = "schema_name"

.field private static final FIELD_SERVER_UUID:Ljava/lang/String; = "server_uuid"

.field private static final FIELD_SHARD_ID:Ljava/lang/String; = "shard_id"

.field private static final FIELD_STATUS:Ljava/lang/String; = "status"

.field private static final FIELD_TABLE_NAME:Ljava/lang/String; = "table_name"

.field private static final FIELD_TYPE_NAME:Ljava/lang/String; = "type_name"

.field private static final FIELD_WEIGHT:Ljava/lang/String; = "weight"

.field private static final METHOD_DUMP_FABRIC_NODES:Ljava/lang/String; = "dump.fabric_nodes"

.field private static final METHOD_DUMP_SERVERS:Ljava/lang/String; = "dump.servers"

.field private static final METHOD_DUMP_SHARD_INDEX:Ljava/lang/String; = "dump.shard_index"

.field private static final METHOD_DUMP_SHARD_MAPS:Ljava/lang/String; = "dump.shard_maps"

.field private static final METHOD_DUMP_SHARD_TABLES:Ljava/lang/String; = "dump.shard_tables"

.field private static final METHOD_GROUP_ADD:Ljava/lang/String; = "group.add"

.field private static final METHOD_GROUP_CREATE:Ljava/lang/String; = "group.create"

.field private static final METHOD_GROUP_DESTROY:Ljava/lang/String; = "group.destroy"

.field private static final METHOD_GROUP_LOOKUP_GROUPS:Ljava/lang/String; = "group.lookup_groups"

.field private static final METHOD_GROUP_PROMOTE:Ljava/lang/String; = "group.promote"

.field private static final METHOD_GROUP_REMOVE:Ljava/lang/String; = "group.remove"

.field private static final METHOD_SHARDING_ADD_SHARD:Ljava/lang/String; = "sharding.add_shard"

.field private static final METHOD_SHARDING_ADD_TABLE:Ljava/lang/String; = "sharding.add_table"

.field private static final METHOD_SHARDING_CREATE_DEFINITION:Ljava/lang/String; = "sharding.create_definition"

.field private static final METHOD_SHARDING_LOOKUP_SERVERS:Ljava/lang/String; = "sharding.lookup_servers"

.field private static final METHOD_THREAT_REPORT_ERROR:Ljava/lang/String; = "threat.report_error"

.field private static final METHOD_THREAT_REPORT_FAILURE:Ljava/lang/String; = "threat.report_failure"

.field private static final THREAT_REPORTER_NAME:Ljava/lang/String; = "MySQL Connector/J"


# instance fields
.field private methodCaller:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/mysql/fabric/proto/xmlrpc/InternalXmlRpcMethodCaller;

    invoke-direct {v0, p1}, Lcom/mysql/fabric/proto/xmlrpc/InternalXmlRpcMethodCaller;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->methodCaller:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;

    .line 95
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 96
    new-instance v0, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;

    iget-object v1, p0, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->methodCaller:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;-><init>(Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->methodCaller:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;

    .line 98
    :cond_0
    return-void
.end method

.method private errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->methodCaller:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;

    invoke-interface {v0, p1, p2}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;->call(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 152
    new-instance v1, Lcom/mysql/fabric/Response;

    invoke-direct {v1, v0}, Lcom/mysql/fabric/Response;-><init>(Ljava/util/List;)V

    .line 153
    invoke-virtual {v1}, Lcom/mysql/fabric/Response;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Lcom/mysql/fabric/FabricCommunicationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call failed to method `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\':\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mysql/fabric/Response;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mysql/fabric/FabricCommunicationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    return-object v1
.end method

.method private getShardIndices(I)Lcom/mysql/fabric/FabricStateResponse;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mysql/fabric/FabricStateResponse",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/mysql/fabric/ShardIndex;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 241
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 242
    const-string v1, "dump.shard_index"

    invoke-direct {p0, v1, v0}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    move-result-object v3

    .line 243
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 246
    invoke-virtual {v3}, Lcom/mysql/fabric/Response;->getResultSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 247
    const-string v1, "lower_bound"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 248
    const-string v2, "shard_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 249
    const-string v6, "group_id"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 250
    new-instance v6, Lcom/mysql/fabric/ShardIndex;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v6, v1, v2, v0}, Lcom/mysql/fabric/ShardIndex;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 251
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    :cond_0
    new-instance v0, Lcom/mysql/fabric/FabricStateResponse;

    invoke-virtual {v3}, Lcom/mysql/fabric/Response;->getTtl()I

    move-result v1

    invoke-direct {v0, v4, v1}, Lcom/mysql/fabric/FabricStateResponse;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method private getShardTables(I)Lcom/mysql/fabric/FabricStateResponse;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mysql/fabric/FabricStateResponse",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/mysql/fabric/ShardTable;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 225
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 226
    const-string v1, "dump.shard_tables"

    invoke-direct {p0, v1, v0}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    move-result-object v3

    .line 227
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 229
    invoke-virtual {v3}, Lcom/mysql/fabric/Response;->getResultSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 230
    const-string v1, "schema_name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 231
    const-string v2, "table_name"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 232
    const-string v6, "column_name"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 233
    new-instance v6, Lcom/mysql/fabric/ShardTable;

    invoke-direct {v6, v1, v2, v0}, Lcom/mysql/fabric/ShardTable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    :cond_0
    new-instance v0, Lcom/mysql/fabric/FabricStateResponse;

    invoke-virtual {v3}, Lcom/mysql/fabric/Response;->getTtl()I

    move-result v1

    invoke-direct {v0, v4, v1}, Lcom/mysql/fabric/FabricStateResponse;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method private static toServerSet(Ljava/util/List;)Ljava/util/Set;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;)",
            "Ljava/util/Set",
            "<",
            "Lcom/mysql/fabric/Server;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 138
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 139
    invoke-static {v0}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->unmarshallServer(Ljava/util/Map;)Lcom/mysql/fabric/Server;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :cond_0
    return-object v1
.end method

.method private static unmarshallServer(Ljava/util/Map;)Lcom/mysql/fabric/Server;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/mysql/fabric/Server;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    const-class v0, Ljava/lang/Integer;

    const-string v1, "mode"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "mode"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/mysql/fabric/ServerMode;->getFromConstant(Ljava/lang/Integer;)Lcom/mysql/fabric/ServerMode;

    move-result-object v5

    .line 114
    const-string v0, "status"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/mysql/fabric/ServerRole;->getFromConstant(Ljava/lang/Integer;)Lcom/mysql/fabric/ServerRole;

    move-result-object v6

    .line 115
    const-string v0, "host"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    const-string v1, "port"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v3, v0

    .line 125
    :goto_0
    new-instance v0, Lcom/mysql/fabric/Server;

    const-string v1, "group_id"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "server_uuid"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v7, "weight"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-direct/range {v0 .. v8}, Lcom/mysql/fabric/Server;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mysql/fabric/ServerMode;Lcom/mysql/fabric/ServerRole;D)V

    .line 127
    return-object v0

    .line 119
    :cond_0
    const-string v0, "mode"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mysql/fabric/ServerMode;->valueOf(Ljava/lang/String;)Lcom/mysql/fabric/ServerMode;

    move-result-object v5

    .line 120
    const-string v0, "status"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mysql/fabric/ServerRole;->valueOf(Ljava/lang/String;)Lcom/mysql/fabric/ServerRole;

    move-result-object v6

    .line 121
    const-string v0, "address"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 122
    const/4 v1, 0x0

    aget-object v3, v0, v1

    .line 123
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    new-instance v1, Lcom/mysql/fabric/FabricCommunicationException;

    const-string v2, "Unable to parse server definition"

    invoke-direct {v1, v2, v0}, Lcom/mysql/fabric/FabricCommunicationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addServerToGroup(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    .line 344
    const-string v0, "group.add"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    .line 345
    return-void
.end method

.method public createGroup(Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    .line 303
    const-string v0, "group.create"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    .line 304
    return-void
.end method

.method public createServerInGroup(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    .line 317
    const-string v0, "group.add"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    .line 318
    return-void
.end method

.method public createShardIndex(ILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    .line 339
    const-string v0, "ENABLED"

    .line 340
    const-string v1, "sharding.add_shard"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    .line 341
    return-void
.end method

.method public createShardMapping(Lcom/mysql/fabric/ShardingType;Ljava/lang/String;)I
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 330
    const-string v0, "sharding.create_definition"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mysql/fabric/ShardingType;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lcom/mysql/fabric/Response;->getResultSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "result"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public createShardTable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    .line 335
    const-string v0, "sharding.add_table"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    .line 336
    return-void
.end method

.method public destroyGroup(Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    .line 310
    const-string v0, "group.destroy"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    .line 311
    return-void
.end method

.method public getFabricNames()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    .line 163
    const-string v0, "dump.fabric_nodes"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    move-result-object v0

    .line 164
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 165
    invoke-virtual {v0}, Lcom/mysql/fabric/Response;->getResultSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "host"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "port"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    :cond_0
    return-object v1
.end method

.method public getGroupNames()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    .line 175
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 176
    const-string v0, "group.lookup_groups"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/fabric/Response;->getResultSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 177
    const-string v3, "group_id"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_0
    return-object v1
.end method

.method public getServerGroup(Ljava/lang/String;)Lcom/mysql/fabric/ServerGroup;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->getServerGroups(Ljava/lang/String;)Lcom/mysql/fabric/FabricStateResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/fabric/FabricStateResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 184
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 185
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/ServerGroup;

    .line 187
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServerGroups()Lcom/mysql/fabric/FabricStateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mysql/fabric/FabricStateResponse",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/mysql/fabric/ServerGroup;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    .line 220
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->getServerGroups(Ljava/lang/String;)Lcom/mysql/fabric/FabricStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getServerGroups(Ljava/lang/String;)Lcom/mysql/fabric/FabricStateResponse;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mysql/fabric/FabricStateResponse",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/mysql/fabric/ServerGroup;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 200
    const-string v0, "dump.servers"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    move-result-object v2

    .line 202
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 203
    invoke-virtual {v2}, Lcom/mysql/fabric/Response;->getResultSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 204
    invoke-static {v0}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->unmarshallServer(Ljava/util/Map;)Lcom/mysql/fabric/Server;

    move-result-object v4

    .line 205
    invoke-virtual {v4}, Lcom/mysql/fabric/Server;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 206
    invoke-virtual {v4}, Lcom/mysql/fabric/Server;->getGroupName()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_0
    invoke-virtual {v4}, Lcom/mysql/fabric/Server;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 212
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 213
    new-instance v5, Lcom/mysql/fabric/ServerGroup;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-direct {v5, v1, v0}, Lcom/mysql/fabric/ServerGroup;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 214
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 216
    :cond_2
    new-instance v0, Lcom/mysql/fabric/FabricStateResponse;

    invoke-virtual {v2}, Lcom/mysql/fabric/Response;->getTtl()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lcom/mysql/fabric/FabricStateResponse;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public getServersForKey(Ljava/lang/String;I)Ljava/util/Set;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set",
            "<",
            "Lcom/mysql/fabric/Server;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    .line 191
    const-string v0, "sharding.lookup_servers"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/mysql/fabric/Response;->getResultSet()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->toServerSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getShardMappings()Lcom/mysql/fabric/FabricStateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mysql/fabric/FabricStateResponse",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/mysql/fabric/ShardMapping;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    .line 296
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->getShardMappings(Ljava/lang/String;)Lcom/mysql/fabric/FabricStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getShardMappings(Ljava/lang/String;)Lcom/mysql/fabric/FabricStateResponse;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mysql/fabric/FabricStateResponse",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/mysql/fabric/ShardMapping;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 265
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 266
    const-string v1, "dump.shard_maps"

    invoke-direct {p0, v1, v0}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    move-result-object v2

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Lcom/mysql/fabric/Response;->getTtl()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 269
    invoke-virtual {v2}, Lcom/mysql/fabric/Response;->getTtl()I

    move-result v8

    .line 272
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 273
    invoke-virtual {v2}, Lcom/mysql/fabric/Response;->getResultSet()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v4, v0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 274
    const-string v1, "mapping_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 275
    const-string v2, "type_name"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/mysql/fabric/ShardingType;->valueOf(Ljava/lang/String;)Lcom/mysql/fabric/ShardingType;

    move-result-object v2

    .line 276
    const-string v3, "global_group_id"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 278
    invoke-direct {p0, v1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->getShardTables(I)Lcom/mysql/fabric/FabricStateResponse;

    move-result-object v11

    .line 279
    invoke-direct {p0, v1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->getShardIndices(I)Lcom/mysql/fabric/FabricStateResponse;

    move-result-object v12

    .line 281
    invoke-virtual {v11}, Lcom/mysql/fabric/FabricStateResponse;->getExpireTimeMillis()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-gez v0, :cond_0

    .line 282
    invoke-virtual {v11}, Lcom/mysql/fabric/FabricStateResponse;->getExpireTimeMillis()J

    move-result-wide v4

    .line 284
    :cond_0
    invoke-virtual {v12}, Lcom/mysql/fabric/FabricStateResponse;->getExpireTimeMillis()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-gez v0, :cond_2

    .line 285
    invoke-virtual {v12}, Lcom/mysql/fabric/FabricStateResponse;->getExpireTimeMillis()J

    move-result-wide v6

    .line 288
    :goto_1
    new-instance v0, Lcom/mysql/fabric/ShardMappingFactory;

    invoke-direct {v0}, Lcom/mysql/fabric/ShardMappingFactory;-><init>()V

    invoke-virtual {v11}, Lcom/mysql/fabric/FabricStateResponse;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-virtual {v12}, Lcom/mysql/fabric/FabricStateResponse;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-virtual/range {v0 .. v5}, Lcom/mysql/fabric/ShardMappingFactory;->createShardMapping(ILcom/mysql/fabric/ShardingType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Lcom/mysql/fabric/ShardMapping;

    move-result-object v0

    .line 289
    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-wide v4, v6

    .line 290
    goto :goto_0

    .line 292
    :cond_1
    new-instance v0, Lcom/mysql/fabric/FabricStateResponse;

    invoke-direct {v0, v9, v8, v4, v5}, Lcom/mysql/fabric/FabricStateResponse;-><init>(Ljava/lang/Object;IJ)V

    return-object v0

    :cond_2
    move-wide v6, v4

    goto :goto_1
.end method

.method public promoteServerInGroup(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->getServerGroup(Ljava/lang/String;)Lcom/mysql/fabric/ServerGroup;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lcom/mysql/fabric/ServerGroup;->getServers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/Server;

    .line 354
    invoke-virtual {v0}, Lcom/mysql/fabric/Server;->getHostname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/mysql/fabric/Server;->getPort()I

    move-result v2

    if-ne v2, p3, :cond_0

    .line 355
    const-string v1, "group.promote"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/mysql/fabric/Server;->getUuid()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    .line 359
    :cond_1
    return-void
.end method

.method public removeServerFromGroup(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    .line 348
    const-string v0, "group.remove"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    .line 349
    return-void
.end method

.method public reportServerError(Lcom/mysql/fabric/Server;Ljava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    .line 362
    const-string v1, "MySQL Connector/J"

    .line 363
    const-string v0, "threat.report_error"

    .line 364
    if-eqz p3, :cond_0

    .line 365
    const-string v0, "threat.report_failure"

    .line 367
    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/mysql/fabric/Server;->getUuid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    aput-object p2, v2, v1

    invoke-direct {p0, v0, v2}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->errorSafeCallMethod(Ljava/lang/String;[Ljava/lang/Object;)Lcom/mysql/fabric/Response;

    .line 368
    return-void
.end method
