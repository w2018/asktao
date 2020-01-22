.class Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;
.super Ljava/lang/Object;
.source "ConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompoundCacheKey"
.end annotation


# instance fields
.field final componentOne:Ljava/lang/String;

.field final componentTwo:Ljava/lang/String;

.field final hashCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentOne:Ljava/lang/String;

    .line 201
    iput-object p2, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentTwo:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentOne:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentOne:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 205
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentTwo:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentTwo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 206
    iput v0, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->hashCode:I

    .line 207
    return-void

    :cond_1
    move v0, v1

    .line 204
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 216
    if-ne p0, p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    if-eqz p1, :cond_4

    const-class v2, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 220
    check-cast p1, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;

    .line 221
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentOne:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentOne:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 222
    :cond_2
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentTwo:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentTwo:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 221
    :cond_3
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentOne:Ljava/lang/String;

    iget-object v3, p1, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentOne:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    move v0, v1

    .line 225
    goto :goto_0

    .line 222
    :cond_5
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentTwo:Ljava/lang/String;

    iget-object v1, p1, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentTwo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->hashCode:I

    return v0
.end method
