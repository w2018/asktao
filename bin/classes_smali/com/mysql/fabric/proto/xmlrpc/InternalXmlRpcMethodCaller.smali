.class public Lcom/mysql/fabric/proto/xmlrpc/InternalXmlRpcMethodCaller;
.super Ljava/lang/Object;
.source "InternalXmlRpcMethodCaller.java"

# interfaces
.implements Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;


# instance fields
.field private xmlRpcClient:Lcom/mysql/fabric/xmlrpc/Client;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    :try_start_0
    new-instance v0, Lcom/mysql/fabric/xmlrpc/Client;

    invoke-direct {v0, p1}, Lcom/mysql/fabric/xmlrpc/Client;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mysql/fabric/proto/xmlrpc/InternalXmlRpcMethodCaller;->xmlRpcClient:Lcom/mysql/fabric/xmlrpc/Client;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    new-instance v1, Lcom/mysql/fabric/FabricCommunicationException;

    invoke-direct {v1, v0}, Lcom/mysql/fabric/FabricCommunicationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private methodResponseArrayToList(Lcom/mysql/fabric/xmlrpc/base/Array;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mysql/fabric/xmlrpc/base/Array;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-virtual {p1}, Lcom/mysql/fabric/xmlrpc/base/Array;->getData()Lcom/mysql/fabric/xmlrpc/base/Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/fabric/xmlrpc/base/Data;->getValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Value;

    .line 78
    invoke-direct {p0, v0}, Lcom/mysql/fabric/proto/xmlrpc/InternalXmlRpcMethodCaller;->unwrapValue(Lcom/mysql/fabric/xmlrpc/base/Value;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_0
    return-object v1
.end method

.method private unwrapValue(Lcom/mysql/fabric/xmlrpc/base/Value;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->getType()B

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Array;

    invoke-direct {p0, v0}, Lcom/mysql/fabric/proto/xmlrpc/InternalXmlRpcMethodCaller;->methodResponseArrayToList(Lcom/mysql/fabric/xmlrpc/base/Array;)Ljava/util/List;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->getType()B

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 66
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 67
    invoke-virtual {p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Struct;

    invoke-virtual {v0}, Lcom/mysql/fabric/xmlrpc/base/Struct;->getMember()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Member;

    .line 68
    invoke-virtual {v0}, Lcom/mysql/fabric/xmlrpc/base/Member;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mysql/fabric/xmlrpc/base/Member;->getValue()Lcom/mysql/fabric/xmlrpc/base/Value;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mysql/fabric/proto/xmlrpc/InternalXmlRpcMethodCaller;->unwrapValue(Lcom/mysql/fabric/xmlrpc/base/Value;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 70
    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public call(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 92
    new-instance v2, Lcom/mysql/fabric/xmlrpc/base/MethodCall;

    invoke-direct {v2}, Lcom/mysql/fabric/xmlrpc/base/MethodCall;-><init>()V

    .line 93
    new-instance v3, Lcom/mysql/fabric/xmlrpc/base/Params;

    invoke-direct {v3}, Lcom/mysql/fabric/xmlrpc/base/Params;-><init>()V

    .line 94
    if-nez p2, :cond_0

    .line 95
    new-array p2, v0, [Ljava/lang/Object;

    :cond_0
    move v1, v0

    .line 97
    :goto_0
    array-length v0, p2

    if-ge v1, v0, :cond_5

    .line 98
    aget-object v0, p2, v1

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "nil args unsupported"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    const-class v0, Ljava/lang/String;

    aget-object v4, p2, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    new-instance v4, Lcom/mysql/fabric/xmlrpc/base/Param;

    new-instance v5, Lcom/mysql/fabric/xmlrpc/base/Value;

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v0}, Lcom/mysql/fabric/xmlrpc/base/Value;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/mysql/fabric/xmlrpc/base/Param;-><init>(Lcom/mysql/fabric/xmlrpc/base/Value;)V

    invoke-virtual {v3, v4}, Lcom/mysql/fabric/xmlrpc/base/Params;->addParam(Lcom/mysql/fabric/xmlrpc/base/Param;)V

    .line 97
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 102
    :cond_2
    const-class v0, Ljava/lang/Double;

    aget-object v4, p2, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    new-instance v4, Lcom/mysql/fabric/xmlrpc/base/Param;

    new-instance v5, Lcom/mysql/fabric/xmlrpc/base/Value;

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/mysql/fabric/xmlrpc/base/Value;-><init>(D)V

    invoke-direct {v4, v5}, Lcom/mysql/fabric/xmlrpc/base/Param;-><init>(Lcom/mysql/fabric/xmlrpc/base/Value;)V

    invoke-virtual {v3, v4}, Lcom/mysql/fabric/xmlrpc/base/Params;->addParam(Lcom/mysql/fabric/xmlrpc/base/Param;)V

    goto :goto_1

    .line 104
    :cond_3
    const-class v0, Ljava/lang/Integer;

    aget-object v4, p2, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    new-instance v4, Lcom/mysql/fabric/xmlrpc/base/Param;

    new-instance v5, Lcom/mysql/fabric/xmlrpc/base/Value;

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v5, v0}, Lcom/mysql/fabric/xmlrpc/base/Value;-><init>(I)V

    invoke-direct {v4, v5}, Lcom/mysql/fabric/xmlrpc/base/Param;-><init>(Lcom/mysql/fabric/xmlrpc/base/Value;)V

    invoke-virtual {v3, v4}, Lcom/mysql/fabric/xmlrpc/base/Params;->addParam(Lcom/mysql/fabric/xmlrpc/base/Param;)V

    goto :goto_1

    .line 107
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown argument type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_5
    invoke-virtual {v2, p1}, Lcom/mysql/fabric/xmlrpc/base/MethodCall;->setMethodName(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v2, v3}, Lcom/mysql/fabric/xmlrpc/base/MethodCall;->setParams(Lcom/mysql/fabric/xmlrpc/base/Params;)V

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/mysql/fabric/proto/xmlrpc/InternalXmlRpcMethodCaller;->xmlRpcClient:Lcom/mysql/fabric/xmlrpc/Client;

    invoke-virtual {v0, v2}, Lcom/mysql/fabric/xmlrpc/Client;->execute(Lcom/mysql/fabric/xmlrpc/base/MethodCall;)Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;->getParams()Lcom/mysql/fabric/xmlrpc/base/Params;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/fabric/xmlrpc/base/Params;->getParam()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Param;

    invoke-virtual {v0}, Lcom/mysql/fabric/xmlrpc/base/Param;->getValue()Lcom/mysql/fabric/xmlrpc/base/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/fabric/xmlrpc/base/Value;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Array;

    invoke-direct {p0, v0}, Lcom/mysql/fabric/proto/xmlrpc/InternalXmlRpcMethodCaller;->methodResponseArrayToList(Lcom/mysql/fabric/xmlrpc/base/Array;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    new-instance v1, Lcom/mysql/fabric/FabricCommunicationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error during call to `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' (args="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/mysql/fabric/FabricCommunicationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clearHeader(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mysql/fabric/proto/xmlrpc/InternalXmlRpcMethodCaller;->xmlRpcClient:Lcom/mysql/fabric/xmlrpc/Client;

    invoke-virtual {v0, p1}, Lcom/mysql/fabric/xmlrpc/Client;->clearHeader(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mysql/fabric/proto/xmlrpc/InternalXmlRpcMethodCaller;->xmlRpcClient:Lcom/mysql/fabric/xmlrpc/Client;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/fabric/xmlrpc/Client;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method
