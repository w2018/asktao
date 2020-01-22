.class public Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;
.super Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;
.source "ConnectionPropertiesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ConnectionPropertiesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongConnectionProperty"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5437e6fa0125837fL


# direct methods
.method constructor <init>(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 439
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    move-wide/from16 v0, p4

    long-to-int v6, v0

    move-wide/from16 v0, p6

    long-to-int v7, v0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v2 .. v11}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 441
    return-void
.end method

.method constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 445
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;-><init>(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 446
    return-void
.end method


# virtual methods
.method getValueAsLong()J
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->valueAsObject:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
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
    .line 472
    if-eqz p1, :cond_0

    .line 475
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    .line 477
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->setValue(JLjava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :goto_0
    iget v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->updateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->updateCount:I

    .line 486
    return-void

    .line 478
    :catch_0
    move-exception v0

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The connection property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' only accepts long integer values. The value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' can not be converted to a long integer."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->defaultValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->valueAsObject:Ljava/lang/Object;

    goto :goto_0
.end method

.method setValue(JLcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->setValue(JLjava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 450
    return-void
.end method

.method setValue(JLjava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
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
    .line 453
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->isRangeBased()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->getLowerBound()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->getUpperBound()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 455
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The connection property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' only accepts long integer values in the range of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->getLowerBound()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->getUpperBound()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", the value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p3, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' exceeds this range."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 461
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->valueAsObject:Ljava/lang/Object;

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->wasExplicitlySet:Z

    .line 463
    iget v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->updateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->updateCount:I

    .line 464
    return-void
.end method
