.class public Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;
.super Ljava/lang/Object;
.source "DatabaseMetaData.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/DatabaseMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IndexMetaDataKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field columnIndexName:Ljava/lang/String;

.field columnNonUnique:Ljava/lang/Boolean;

.field columnOrdinalPosition:Ljava/lang/Short;

.field columnType:Ljava/lang/Short;

.field final synthetic this$0:Lcom/mysql/jdbc/DatabaseMetaData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 386
    const-class v0, Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;ZSLjava/lang/String;S)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;->columnNonUnique:Ljava/lang/Boolean;

    .line 394
    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;->columnType:Ljava/lang/Short;

    .line 395
    iput-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;->columnIndexName:Ljava/lang/String;

    .line 396
    invoke-static {p5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;->columnOrdinalPosition:Ljava/lang/Short;

    .line 397
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;)I
    .locals 2
    .parameter

    .prologue
    .line 402
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;->columnNonUnique:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;->columnNonUnique:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    :cond_0
    :goto_0
    return v0

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;->columnType:Ljava/lang/Short;

    iget-object v1, p1, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;->columnType:Ljava/lang/Short;

    invoke-virtual {v0, v1}, Ljava/lang/Short;->compareTo(Ljava/lang/Short;)I

    move-result v0

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;->columnIndexName:Ljava/lang/String;

    iget-object v1, p1, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;->columnIndexName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;->columnOrdinalPosition:Ljava/lang/Short;

    iget-object v1, p1, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;->columnOrdinalPosition:Ljava/lang/Short;

    invoke-virtual {v0, v1}, Ljava/lang/Short;->compareTo(Ljava/lang/Short;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 386
    check-cast p1, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;->compareTo(Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 416
    if-nez p1, :cond_1

    .line 427
    :cond_0
    :goto_0
    return v1

    .line 420
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    .line 421
    goto :goto_0

    .line 424
    :cond_2
    instance-of v2, p1, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;

    if-eqz v2, :cond_0

    .line 427
    check-cast p1, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;->compareTo(Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;)I

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 432
    sget-boolean v0, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 433
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
