.class public Lcom/mysql/fabric/xmlrpc/base/MethodCall;
.super Ljava/lang/Object;
.source "MethodCall.java"


# instance fields
.field protected methodName:Ljava/lang/String;

.field protected params:Lcom/mysql/fabric/xmlrpc/base/Params;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/MethodCall;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Lcom/mysql/fabric/xmlrpc/base/Params;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/MethodCall;->params:Lcom/mysql/fabric/xmlrpc/base/Params;

    return-object v0
.end method

.method public setMethodName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/MethodCall;->methodName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setParams(Lcom/mysql/fabric/xmlrpc/base/Params;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/MethodCall;->params:Lcom/mysql/fabric/xmlrpc/base/Params;

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    const-string v1, "<methodCall>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t<methodName>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/fabric/xmlrpc/base/MethodCall;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</methodName>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/MethodCall;->params:Lcom/mysql/fabric/xmlrpc/base/Params;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/MethodCall;->params:Lcom/mysql/fabric/xmlrpc/base/Params;

    invoke-virtual {v1}, Lcom/mysql/fabric/xmlrpc/base/Params;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_0
    const-string v1, "</methodCall>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
