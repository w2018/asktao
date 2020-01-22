.class Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;
.super Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;
.source "ConnectionPropertiesImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ConnectionPropertiesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MemorySizeConnectionProperty"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x66043ac986b89270L


# instance fields
.field private valueAsString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 497
    invoke-direct/range {p0 .. p8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 498
    return-void
.end method


# virtual methods
.method getValueAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->valueAsString:Ljava/lang/String;

    return-object v0
.end method

.method initializeFrom(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 502
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->valueAsString:Ljava/lang/String;

    .line 503
    const/4 v0, 0x1

    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->multiplier:I

    .line 505
    if-eqz p1, :cond_1

    .line 506
    const-string v0, "k"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "K"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "kb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Kb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "kB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 508
    :cond_0
    const/16 v0, 0x400

    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->multiplier:I

    .line 509
    const-string v0, "k"

    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 510
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 524
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->initializeFrom(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 525
    return-void

    .line 511
    :cond_2
    const-string v0, "m"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "M"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "mb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Mb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "mB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "MB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 513
    :cond_3
    const/high16 v0, 0x10

    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->multiplier:I

    .line 514
    const-string v0, "m"

    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 515
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 516
    :cond_4
    const-string v0, "g"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "G"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "gb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Gb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "gB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "GB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    :cond_5
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->multiplier:I

    .line 519
    const-string v0, "g"

    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 520
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method

.method setValue(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 528
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->initializeFrom(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 529
    return-void
.end method
