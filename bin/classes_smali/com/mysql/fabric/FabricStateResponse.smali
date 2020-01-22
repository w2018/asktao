.class public Lcom/mysql/fabric/FabricStateResponse;
.super Ljava/lang/Object;
.source "FabricStateResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private expireTimeMillis:J

.field private secsTtl:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/mysql/fabric/FabricStateResponse;->data:Ljava/lang/Object;

    .line 35
    iput p2, p0, Lcom/mysql/fabric/FabricStateResponse;->secsTtl:I

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, p2

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/fabric/FabricStateResponse;->expireTimeMillis:J

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IJ)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/mysql/fabric/FabricStateResponse;->data:Ljava/lang/Object;

    .line 41
    iput p2, p0, Lcom/mysql/fabric/FabricStateResponse;->secsTtl:I

    .line 42
    iput-wide p3, p0, Lcom/mysql/fabric/FabricStateResponse;->expireTimeMillis:J

    .line 43
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mysql/fabric/FabricStateResponse;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getExpireTimeMillis()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/mysql/fabric/FabricStateResponse;->expireTimeMillis:J

    return-wide v0
.end method

.method public getTtl()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/mysql/fabric/FabricStateResponse;->secsTtl:I

    return v0
.end method
