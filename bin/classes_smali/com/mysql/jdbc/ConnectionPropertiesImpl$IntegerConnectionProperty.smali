.class Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;
.super Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
.source "ConnectionPropertiesImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ConnectionPropertiesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntegerConnectionProperty"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x29b16feb0f429490L


# instance fields
.field multiplier:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 322
    const/4 v0, 0x1

    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->multiplier:I

    .line 334
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    .line 345
    invoke-direct/range {v0 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 346
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 326
    invoke-direct/range {p0 .. p9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 322
    const/4 v0, 0x1

    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->multiplier:I

    .line 328
    return-void
.end method


# virtual methods
.method getAllowableValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    return-object v0
.end method

.method getLowerBound()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->lowerBound:I

    return v0
.end method

.method getUpperBound()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->upperBound:I

    return v0
.end method

.method getValueAsInt()I
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->valueAsObject:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method hasValueConstraints()Z
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method initializeFrom(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 389
    if-eqz p1, :cond_0

    .line 392
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget v2, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->multiplier:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 394
    invoke-virtual {p0, v0, p1, p2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILjava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_0
    iget v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->updateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->updateCount:I

    .line 403
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The connection property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' only accepts integer values. The value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' can not be converted to an integer."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->defaultValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->valueAsObject:Ljava/lang/Object;

    goto :goto_0
.end method

.method isRangeBased()Z
    .locals 2

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getUpperBound()I

    move-result v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getLowerBound()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 414
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILjava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 415
    return-void
.end method

.method setValue(ILjava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->isRangeBased()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 419
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getLowerBound()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getUpperBound()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 420
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The connection property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' only accepts integer values in the range of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getLowerBound()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getUpperBound()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", the value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' exceeds this range."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 427
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->valueAsObject:Ljava/lang/Object;

    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->wasExplicitlySet:Z

    .line 429
    iget v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->updateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->updateCount:I

    .line 430
    return-void
.end method
