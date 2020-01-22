.class public Lcom/mysql/fabric/xmlrpc/exceptions/MySQLFabricException;
.super Ljava/sql/SQLException;
.source "MySQLFabricException.java"


# static fields
.field static final serialVersionUID:J = -0x79cd53928391008dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/sql/SQLException;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/mysql/fabric/xmlrpc/base/Fault;)V
    .locals 4
    .parameter

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/mysql/fabric/xmlrpc/base/Fault;->getValue()Lcom/mysql/fabric/xmlrpc/base/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/fabric/xmlrpc/base/Value;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Struct;

    invoke-virtual {v0}, Lcom/mysql/fabric/xmlrpc/base/Struct;->getMember()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Member;

    invoke-virtual {v0}, Lcom/mysql/fabric/xmlrpc/base/Member;->getValue()Lcom/mysql/fabric/xmlrpc/base/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/fabric/xmlrpc/base/Value;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1}, Lcom/mysql/fabric/xmlrpc/base/Fault;->getValue()Lcom/mysql/fabric/xmlrpc/base/Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mysql/fabric/xmlrpc/base/Value;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Struct;

    invoke-virtual {v1}, Lcom/mysql/fabric/xmlrpc/base/Struct;->getMember()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Member;

    invoke-virtual {v1}, Lcom/mysql/fabric/xmlrpc/base/Member;->getValue()Lcom/mysql/fabric/xmlrpc/base/Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mysql/fabric/xmlrpc/base/Value;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v2, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    return-void
.end method
