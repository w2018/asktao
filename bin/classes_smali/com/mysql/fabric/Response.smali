.class public Lcom/mysql/fabric/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private fabricUuid:Ljava/lang/String;

.field private protocolVersion:I

.field private resultSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private ttl:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mysql/fabric/Response;->protocolVersion:I

    .line 45
    iget v0, p0, Lcom/mysql/fabric/Response;->protocolVersion:I

    if-eq v0, v1, :cond_0

    .line 46
    new-instance v0, Lcom/mysql/fabric/FabricCommunicationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown protocol version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mysql/fabric/Response;->protocolVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mysql/fabric/FabricCommunicationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mysql/fabric/Response;->fabricUuid:Ljava/lang/String;

    .line 49
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mysql/fabric/Response;->ttl:I

    .line 50
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mysql/fabric/Response;->errorMessage:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iget-object v1, p0, Lcom/mysql/fabric/Response;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/fabric/Response;->errorMessage:Ljava/lang/String;

    .line 54
    :cond_1
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 56
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 57
    new-instance v2, Lcom/mysql/fabric/proto/xmlrpc/ResultSetParser;

    invoke-direct {v2}, Lcom/mysql/fabric/proto/xmlrpc/ResultSetParser;-><init>()V

    const-string v1, "info"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "rows"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v1, v0}, Lcom/mysql/fabric/proto/xmlrpc/ResultSetParser;->parse(Ljava/util/Map;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/Response;->resultSet:Ljava/util/List;

    .line 59
    :cond_2
    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mysql/fabric/Response;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getFabricUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mysql/fabric/Response;->fabricUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVersion()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/mysql/fabric/Response;->protocolVersion:I

    return v0
.end method

.method public getResultSet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mysql/fabric/Response;->resultSet:Ljava/util/List;

    return-object v0
.end method

.method public getTtl()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/mysql/fabric/Response;->ttl:I

    return v0
.end method
