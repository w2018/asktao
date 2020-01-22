.class public Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;
.super Ljava/lang/Object;
.source "AuthenticatedXmlRpcMethodCaller.java"

# interfaces
.implements Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;


# instance fields
.field private password:Ljava/lang/String;

.field private underlyingCaller:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;

.field private url:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;->underlyingCaller:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;

    .line 44
    iput-object p2, p0, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;->url:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;->username:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;->password:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;
    .locals 3
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
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/mysql/fabric/proto/xmlrpc/DigestAuthentication;->getChallengeHeader(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/mysql/fabric/proto/xmlrpc/DigestAuthentication;->parseDigestChallenge(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;->password:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mysql/fabric/proto/xmlrpc/DigestAuthentication;->generateAuthorizationHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;->underlyingCaller:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;

    const-string v2, "Authorization"

    invoke-interface {v1, v2, v0}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;->underlyingCaller:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;

    invoke-interface {v0, p1, p2}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;->call(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    new-instance v1, Lcom/mysql/fabric/FabricCommunicationException;

    const-string v2, "Unable to obtain challenge header for authentication"

    invoke-direct {v1, v2, v0}, Lcom/mysql/fabric/FabricCommunicationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clearHeader(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;->underlyingCaller:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;

    invoke-interface {v0, p1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;->clearHeader(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mysql/fabric/proto/xmlrpc/AuthenticatedXmlRpcMethodCaller;->underlyingCaller:Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;

    invoke-interface {v0, p1, p2}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcMethodCaller;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method
