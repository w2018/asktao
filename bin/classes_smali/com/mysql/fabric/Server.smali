.class public Lcom/mysql/fabric/Server;
.super Ljava/lang/Object;
.source "Server.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/mysql/fabric/Server;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private groupName:Ljava/lang/String;

.field private hostname:Ljava/lang/String;

.field private mode:Lcom/mysql/fabric/ServerMode;

.field private port:I

.field private role:Lcom/mysql/fabric/ServerRole;

.field private uuid:Ljava/lang/String;

.field private weight:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/mysql/fabric/Server;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mysql/fabric/Server;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mysql/fabric/ServerMode;Lcom/mysql/fabric/ServerRole;D)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/mysql/fabric/Server;->groupName:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/mysql/fabric/Server;->uuid:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/mysql/fabric/Server;->hostname:Ljava/lang/String;

    .line 42
    iput p4, p0, Lcom/mysql/fabric/Server;->port:I

    .line 43
    iput-object p5, p0, Lcom/mysql/fabric/Server;->mode:Lcom/mysql/fabric/ServerMode;

    .line 44
    iput-object p6, p0, Lcom/mysql/fabric/Server;->role:Lcom/mysql/fabric/ServerRole;

    .line 45
    iput-wide p7, p0, Lcom/mysql/fabric/Server;->weight:D

    .line 46
    sget-boolean v0, Lcom/mysql/fabric/Server;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_1
    sget-boolean v0, Lcom/mysql/fabric/Server;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-eqz p3, :cond_2

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_3
    sget-boolean v0, Lcom/mysql/fabric/Server;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-gtz p4, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_4
    sget-boolean v0, Lcom/mysql/fabric/Server;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    if-nez p5, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_5
    sget-boolean v0, Lcom/mysql/fabric/Server;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    if-nez p6, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_6
    sget-boolean v0, Lcom/mysql/fabric/Server;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    cmpl-double v0, p7, v0

    if-gtz v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_7
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/mysql/fabric/Server;)I
    .locals 2
    .parameter

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/mysql/fabric/Server;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mysql/fabric/Server;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    check-cast p1, Lcom/mysql/fabric/Server;

    invoke-virtual {p0, p1}, Lcom/mysql/fabric/Server;->compareTo(Lcom/mysql/fabric/Server;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 101
    instance-of v0, p1, Lcom/mysql/fabric/Server;

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    .line 104
    :cond_0
    check-cast p1, Lcom/mysql/fabric/Server;

    .line 105
    invoke-virtual {p1}, Lcom/mysql/fabric/Server;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/fabric/Server;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mysql/fabric/Server;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getHostPortString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mysql/fabric/Server;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mysql/fabric/Server;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mysql/fabric/Server;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Lcom/mysql/fabric/ServerMode;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mysql/fabric/Server;->mode:Lcom/mysql/fabric/ServerMode;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/mysql/fabric/Server;->port:I

    return v0
.end method

.method public getRole()Lcom/mysql/fabric/ServerRole;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mysql/fabric/Server;->role:Lcom/mysql/fabric/ServerRole;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mysql/fabric/Server;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()D
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/mysql/fabric/Server;->weight:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/mysql/fabric/Server;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isMaster()Z
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mysql/fabric/Server;->role:Lcom/mysql/fabric/ServerRole;

    sget-object v1, Lcom/mysql/fabric/ServerRole;->PRIMARY:Lcom/mysql/fabric/ServerRole;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSlave()Z
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mysql/fabric/Server;->role:Lcom/mysql/fabric/ServerRole;

    sget-object v1, Lcom/mysql/fabric/ServerRole;->SECONDARY:Lcom/mysql/fabric/ServerRole;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mysql/fabric/Server;->role:Lcom/mysql/fabric/ServerRole;

    sget-object v1, Lcom/mysql/fabric/ServerRole;->SPARE:Lcom/mysql/fabric/ServerRole;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 96
    const-string v0, "Server[%s, %s:%d, %s, %s, weight=%s]"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mysql/fabric/Server;->uuid:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mysql/fabric/Server;->hostname:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/mysql/fabric/Server;->port:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/mysql/fabric/Server;->mode:Lcom/mysql/fabric/ServerMode;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/mysql/fabric/Server;->role:Lcom/mysql/fabric/ServerRole;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/mysql/fabric/Server;->weight:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
