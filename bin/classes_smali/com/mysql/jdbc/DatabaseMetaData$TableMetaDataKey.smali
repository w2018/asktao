.class public Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;
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
    name = "TableMetaDataKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field tableCat:Ljava/lang/String;

.field tableName:Ljava/lang/String;

.field tableSchem:Ljava/lang/String;

.field tableType:Ljava/lang/String;

.field final synthetic this$0:Lcom/mysql/jdbc/DatabaseMetaData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 440
    const-class v0, Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iput-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->tableType:Ljava/lang/String;

    .line 448
    if-nez p3, :cond_1

    const-string p3, ""

    :cond_1
    iput-object p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->tableCat:Ljava/lang/String;

    .line 449
    if-nez p4, :cond_2

    const-string p4, ""

    :cond_2
    iput-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->tableSchem:Ljava/lang/String;

    .line 450
    if-nez p5, :cond_3

    const-string p5, ""

    :cond_3
    iput-object p5, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->tableName:Ljava/lang/String;

    .line 451
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;)I
    .locals 2
    .parameter

    .prologue
    .line 456
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->tableType:Ljava/lang/String;

    iget-object v1, p1, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->tableType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    :cond_0
    :goto_0
    return v0

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->tableCat:Ljava/lang/String;

    iget-object v1, p1, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->tableCat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->tableSchem:Ljava/lang/String;

    iget-object v1, p1, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->tableSchem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->tableName:Ljava/lang/String;

    iget-object v1, p1, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 440
    check-cast p1, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->compareTo(Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 470
    if-nez p1, :cond_1

    .line 481
    :cond_0
    :goto_0
    return v1

    .line 474
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    .line 475
    goto :goto_0

    .line 478
    :cond_2
    instance-of v2, p1, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;

    if-eqz v2, :cond_0

    .line 481
    check-cast p1, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->compareTo(Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;)I

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
    .line 486
    sget-boolean v0, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 487
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
