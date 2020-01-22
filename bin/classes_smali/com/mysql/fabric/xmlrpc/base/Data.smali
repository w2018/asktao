.class public Lcom/mysql/fabric/xmlrpc/base/Data;
.super Ljava/lang/Object;
.source "Data.java"


# instance fields
.field protected value:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mysql/fabric/xmlrpc/base/Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addValue(Lcom/mysql/fabric/xmlrpc/base/Value;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/mysql/fabric/xmlrpc/base/Data;->getValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public getValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mysql/fabric/xmlrpc/base/Value;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Data;->value:Ljava/util/List;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Data;->value:Ljava/util/List;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Data;->value:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Data;->value:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 48
    const-string v0, "<data>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Data;->value:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Data;->value:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Value;

    invoke-virtual {v0}, Lcom/mysql/fabric/xmlrpc/base/Value;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 52
    :cond_0
    const-string v0, "</data>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
