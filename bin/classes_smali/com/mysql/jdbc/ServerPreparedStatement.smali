.class public Lcom/mysql/jdbc/ServerPreparedStatement;
.super Lcom/mysql/jdbc/PreparedStatement;
.source "ServerPreparedStatement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;,
        Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;
    }
.end annotation


# static fields
.field protected static final BLOB_STREAM_READ_BUF_SIZE:I = 0x2000

.field private static final JDBC_4_SPS_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private canRewrite:Z

.field private defaultTzCalendar:Ljava/util/Calendar;

.field private detectedLongParameterSwitch:Z

.field private fieldCount:I

.field private hasCheckedRewrite:Z

.field private hasOnDuplicateKeyUpdate:Z

.field private invalid:Z

.field private invalidationException:Ljava/sql/SQLException;

.field protected isCached:Z

.field private locationOfOnDuplicateKeyUpdate:I

.field private outByteBuffer:Lcom/mysql/jdbc/Buffer;

.field private parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

.field private parameterFields:[Lcom/mysql/jdbc/Field;

.field private resultFields:[Lcom/mysql/jdbc/Field;

.field private sendTypesToServer:Z

.field private serverNeedsResetBeforeEachExecution:Z

.field private serverStatementId:J

.field private serverTzCalendar:Ljava/util/Calendar;

.field private stringTypeCode:I

.field private useAutoSlowLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 62
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :try_start_0
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.mysql.jdbc.JDBC42ServerPreparedStatement"

    .line 65
    :goto_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/ServerPreparedStatement;->JDBC_4_SPS_CTOR:Ljava/lang/reflect/Constructor;

    .line 77
    :goto_1
    return-void

    .line 64
    :cond_0
    const-string v0, "com.mysql.jdbc.JDBC4ServerPreparedStatement"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 69
    :catch_1
    move-exception v0

    .line 70
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 71
    :catch_2
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 75
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/ServerPreparedStatement;->JDBC_4_SPS_CTOR:Ljava/lang/reflect/Constructor;

    goto :goto_1
.end method

.method protected constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 365
    invoke-direct {p0, p1, p3}, Lcom/mysql/jdbc/PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    .line 251
    iput-boolean v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->hasOnDuplicateKeyUpdate:Z

    .line 282
    iput-boolean v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->detectedLongParameterSwitch:Z

    .line 291
    iput-boolean v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalid:Z

    .line 308
    iput-boolean v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->sendTypesToServer:Z

    .line 314
    const/16 v0, 0xfe

    iput v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->stringTypeCode:I

    .line 543
    iput-boolean v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->isCached:Z

    .line 2574
    iput-boolean v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->hasCheckedRewrite:Z

    .line 2575
    iput-boolean v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->canRewrite:Z

    .line 2627
    const/4 v0, -0x2

    iput v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->locationOfOnDuplicateKeyUpdate:I

    .line 367
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkNullOrEmptyQuery(Ljava/lang/String;)V

    .line 369
    invoke-static {p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->findStartOfStatement(Ljava/lang/String;)I

    move-result v0

    .line 371
    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->firstAlphaCharUc(Ljava/lang/String;I)C

    move-result v0

    iput-char v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->firstCharOfStmt:C

    .line 373
    iget-char v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->firstCharOfStmt:C

    const/16 v3, 0x49

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->containsOnDuplicateKeyInString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->hasOnDuplicateKeyUpdate:Z

    .line 375
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, v4, v2, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, v4, v2, v5}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverNeedsResetBeforeEachExecution:Z

    .line 381
    :goto_2
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoSlowLog()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->useAutoSlowLog:Z

    .line 382
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/16 v3, 0x15

    const/16 v4, 0x17

    invoke-interface {v0, v5, v3, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->useTrueBoolean:Z

    .line 384
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getStatementComment()Ljava/lang/String;

    move-result-object v0

    .line 386
    if-nez v0, :cond_4

    move-object v0, p2

    :goto_3
    iput-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    .line 388
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v3, 0x2

    invoke-interface {v0, v6, v1, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 389
    const/16 v0, 0xfd

    iput v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->stringTypeCode:I

    .line 395
    :goto_4
    :try_start_0
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->serverPrepare(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 409
    invoke-virtual {p0, p4}, Lcom/mysql/jdbc/ServerPreparedStatement;->setResultSetType(I)V

    .line 410
    invoke-virtual {p0, p5}, Lcom/mysql/jdbc/ServerPreparedStatement;->setResultSetConcurrency(I)V

    .line 412
    iget v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterTypes:[I

    .line 413
    return-void

    :cond_0
    move v0, v2

    .line 373
    goto :goto_0

    :cond_1
    move v0, v2

    .line 376
    goto :goto_1

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/16 v3, 0xa

    invoke-interface {v0, v6, v1, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverNeedsResetBeforeEachExecution:Z

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_5

    .line 386
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/* "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " */ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 391
    :cond_5
    const/16 v0, 0xfe

    iput v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->stringTypeCode:I

    goto :goto_4

    .line 396
    :catch_0
    move-exception v0

    .line 397
    invoke-virtual {p0, v2, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->realClose(ZZ)V

    .line 399
    throw v0

    .line 400
    :catch_1
    move-exception v0

    .line 401
    invoke-virtual {p0, v2, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->realClose(ZZ)V

    .line 403
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 404
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 406
    throw v1
.end method

.method private clearParametersInternal(Z)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 526
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    if-eqz v0, :cond_1

    move v0, v1

    move v2, v1

    .line 527
    :goto_0
    iget v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v0, v3, :cond_2

    .line 528
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-eqz v3, :cond_0

    .line 529
    const/4 v2, 0x1

    .line 532
    :cond_0
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->reset()V

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 536
    :cond_2
    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    .line 537
    invoke-direct {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->serverResetStatement()V

    .line 539
    iput-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->detectedLongParameterSwitch:Z

    .line 541
    :cond_3
    return-void
.end method

.method private dumpCloseForTestcase()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 581
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2, v0}, Lcom/mysql/jdbc/MySQLConnection;->generateConnectionCommentBlock(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 583
    const-string v2, "DEALLOCATE PREPARE debug_stmt_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    iget v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->statementId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 585
    const-string v2, ";\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/mysql/jdbc/MySQLConnection;->dumpTestcaseQuery(Ljava/lang/String;)V

    .line 588
    monitor-exit v1

    .line 589
    return-void

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private dumpExecuteForTestcase()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 592
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 593
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    .line 595
    :goto_0
    iget v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v1, v4, :cond_1

    .line 596
    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4, v3}, Lcom/mysql/jdbc/MySQLConnection;->generateConnectionCommentBlock(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 598
    const-string v4, "SET @debug_stmt_param"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    iget v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->statementId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 600
    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 602
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    if-eqz v4, :cond_0

    .line 605
    const-string v4, "NULL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    :goto_1
    const-string v4, ";\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 607
    :cond_0
    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v4, v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 636
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 613
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1, v3}, Lcom/mysql/jdbc/MySQLConnection;->generateConnectionCommentBlock(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 615
    const-string v1, "EXECUTE debug_stmt_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    iget v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->statementId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 618
    iget v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-lez v1, :cond_3

    .line 619
    const-string v1, " USING "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    :goto_2
    iget v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v0, v1, :cond_3

    .line 621
    if-lez v0, :cond_2

    .line 622
    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    :cond_2
    const-string v1, "@debug_stmt_param"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    iget v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->statementId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 627
    const-string v1, "_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 620
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 633
    :cond_3
    const-string v0, ";\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->dumpTestcaseQuery(Ljava/lang/String;)V

    .line 636
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 637
    return-void
.end method

.method private dumpPrepareForTestcase()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 641
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x40

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 643
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2, v0}, Lcom/mysql/jdbc/MySQLConnection;->generateConnectionCommentBlock(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 645
    const-string v2, "PREPARE debug_stmt_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    iget v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->statementId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 647
    const-string v2, " FROM \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    const-string v2, "\";\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/mysql/jdbc/MySQLConnection;->dumpTestcaseQuery(Ljava/lang/String;)V

    .line 652
    monitor-exit v1

    .line 653
    return-void

    .line 652
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getDefaultTzCalendar()Ljava/util/Calendar;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2382
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2383
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->defaultTzCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 2384
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->defaultTzCalendar:Ljava/util/Calendar;

    .line 2387
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->defaultTzCalendar:Ljava/util/Calendar;

    monitor-exit v1

    return-object v0

    .line 2388
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)Lcom/mysql/jdbc/ServerPreparedStatement;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Lcom/mysql/jdbc/ServerPreparedStatement;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ServerPreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)V

    .line 332
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/ServerPreparedStatement;->JDBC_4_SPS_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ServerPreparedStatement;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    new-instance v1, Ljava/sql/SQLException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1000"

    invoke-direct {v1, v0, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 336
    :catch_1
    move-exception v0

    .line 337
    new-instance v1, Ljava/sql/SQLException;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1000"

    invoke-direct {v1, v0, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 338
    :catch_2
    move-exception v0

    .line 339
    new-instance v1, Ljava/sql/SQLException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1000"

    invoke-direct {v1, v0, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 340
    :catch_3
    move-exception v0

    .line 341
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 343
    instance-of v1, v0, Ljava/sql/SQLException;

    if-eqz v1, :cond_1

    .line 344
    check-cast v0, Ljava/sql/SQLException;

    throw v0

    .line 347
    :cond_1
    new-instance v1, Ljava/sql/SQLException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1000"

    invoke-direct {v1, v0, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method private getServerTzCalendar()Ljava/util/Calendar;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2372
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2373
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverTzCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 2374
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverTzCalendar:Ljava/util/Calendar;

    .line 2377
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverTzCalendar:Ljava/util/Calendar;

    monitor-exit v1

    return-object v0

    .line 2378
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private serverExecute(IZ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 33
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1134
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v2

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v27

    monitor-enter v27

    .line 1135
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v2

    .line 1137
    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->shouldIntercept()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v0, v4}, Lcom/mysql/jdbc/MysqlIO;->invokeStatementInterceptorsPre(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v3

    .line 1140
    if-eqz v3, :cond_0

    .line 1141
    monitor-exit v27

    move-object v2, v3

    .line 1406
    :goto_0
    return-object v2

    .line 1145
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->detectedLongParameterSwitch:Z

    if-eqz v3, :cond_4

    .line 1147
    const/4 v6, 0x0

    .line 1148
    const-wide/16 v4, 0x0

    .line 1150
    const/4 v3, 0x0

    move/from16 v30, v3

    move-wide/from16 v31, v4

    move-wide/from16 v3, v31

    move v5, v6

    move/from16 v6, v30

    :goto_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_3

    .line 1151
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v7, v7, v6

    iget-boolean v7, v7, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-eqz v7, :cond_2

    .line 1152
    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v5, v5, v6

    iget-wide v7, v5, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->boundBeforeExecutionNum:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_1

    .line 1153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServerPreparedStatement.11"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ServerPreparedStatement.12"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1C00"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 1421
    :catchall_0
    move-exception v2

    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1157
    :cond_1
    const/4 v5, 0x1

    .line 1158
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v3, v3, v6

    iget-wide v3, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->boundBeforeExecutionNum:J

    .line 1150
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1164
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->serverResetStatement()V

    .line 1168
    :cond_4
    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v3, v4, :cond_6

    .line 1169
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v4, v4, v3

    iget-boolean v4, v4, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isSet:Z

    if-nez v4, :cond_5

    .line 1170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServerPreparedStatement.13"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ServerPreparedStatement.14"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 1168
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1179
    :cond_6
    const/4 v3, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v3, v4, :cond_8

    .line 1180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v4, v4, v3

    iget-boolean v4, v4, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-eqz v4, :cond_7

    .line 1181
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v4, v4, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/mysql/jdbc/ServerPreparedStatement;->serverLongData(ILcom/mysql/jdbc/ServerPreparedStatement$BindValue;)V

    .line 1179
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1185
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getAutoGenerateTestcaseScript()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1186
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->dumpExecuteForTestcase()V

    .line 1193
    :cond_9
    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->getSharedSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v5

    .line 1195
    invoke-virtual {v5}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 1196
    const/16 v3, 0x17

    invoke-virtual {v5, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1197
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    invoke-virtual {v5, v3, v4}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v4, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-interface {v3, v4, v6, v7}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1200
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->isCursorRequired()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1201
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1206
    :goto_4
    const-wide/16 v3, 0x1

    invoke-virtual {v5, v3, v4}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1210
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v4, v3, 0x8

    .line 1215
    invoke-virtual {v5}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v6

    .line 1217
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v4, :cond_c

    .line 1218
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1217
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1203
    :cond_b
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    goto :goto_4

    .line 1221
    :cond_c
    new-array v4, v4, [B

    .line 1224
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->sendTypesToServer:Z

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    :goto_6
    invoke-virtual {v5, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1226
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->sendTypesToServer:Z

    if-eqz v3, :cond_e

    .line 1230
    const/4 v3, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v7, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v3, v7, :cond_e

    .line 1231
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v7, v7, v3

    iget v7, v7, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    invoke-virtual {v5, v7}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 1230
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1224
    :cond_d
    const/4 v3, 0x0

    goto :goto_6

    .line 1238
    :cond_e
    const/4 v3, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v7, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v3, v7, :cond_11

    .line 1239
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v7, v7, v3

    iget-boolean v7, v7, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-nez v7, :cond_f

    .line 1240
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v7, v7, v3

    iget-boolean v7, v7, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    if-nez v7, :cond_10

    .line 1241
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v7, v7, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeBinding(Lcom/mysql/jdbc/Buffer;Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;Lcom/mysql/jdbc/MysqlIO;)V

    .line 1238
    :cond_f
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1243
    :cond_10
    div-int/lit8 v7, v3, 0x8

    aget-byte v8, v4, v7

    const/4 v9, 0x1

    and-int/lit8 v10, v3, 0x7

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    goto :goto_9

    .line 1251
    :cond_11
    invoke-virtual {v5}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v3

    .line 1252
    invoke-virtual {v5, v6}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 1253
    invoke-virtual {v5, v4}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 1254
    invoke-virtual {v5, v3}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 1256
    const-wide/16 v3, 0x0

    .line 1258
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getLogSlowQueries()Z

    move-result v10

    .line 1259
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getGatherPerformanceMetrics()Z

    move-result v21

    .line 1261
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->profileSQL:Z

    if-nez v6, :cond_12

    if-nez v10, :cond_12

    if-eqz v21, :cond_2c

    .line 1262
    :cond_12
    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->getCurrentTimeNanosOrMillis()J

    move-result-wide v3

    move-wide/from16 v25, v3

    .line 1265
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetCancelledState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1267
    const/4 v4, 0x0

    .line 1271
    :try_start_2
    const-string v3, ""

    .line 1272
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->profileSQL:Z

    if-nez v6, :cond_13

    if-nez v10, :cond_13

    if-eqz v21, :cond_2b

    .line 1273
    :cond_13
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/ServerPreparedStatement;->asSql(Z)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v3

    .line 1276
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v3

    if-eqz v3, :cond_2a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->timeoutInMillis:I

    if-eqz v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v3, v6, v7, v8}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1277
    new-instance v3, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1278
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->timeoutInMillis:I

    int-to-long v6, v6

    invoke-virtual {v4, v3, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v9, v3

    .line 1281
    :goto_c
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->statementBegins()V

    .line 1283
    const/16 v3, 0x17

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    move-result-object v28

    .line 1285
    const-wide/16 v3, 0x0

    .line 1287
    if-nez v10, :cond_14

    if-nez v21, :cond_14

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->profileSQL:Z

    if-eqz v5, :cond_29

    .line 1288
    :cond_14
    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->getCurrentTimeNanosOrMillis()J

    move-result-wide v3

    move-wide/from16 v22, v3

    .line 1291
    :goto_d
    if-eqz v9, :cond_28

    .line 1292
    invoke-virtual {v9}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->purge()I

    .line 1296
    iget-object v3, v9, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    if-eqz v3, :cond_17

    .line 1297
    iget-object v3, v9, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1407
    :catch_0
    move-exception v7

    move-object v8, v9

    .line 1408
    :goto_e
    :try_start_5
    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->shouldIntercept()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v2 .. v7}, Lcom/mysql/jdbc/MysqlIO;->invokeStatementInterceptorsPost(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;ZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1412
    :cond_15
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1414
    :catchall_1
    move-exception v2

    move-object/from16 v20, v8

    :goto_f
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1416
    if-eqz v20, :cond_16

    .line 1417
    invoke-virtual/range {v20 .. v20}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->purge()I

    .line 1414
    :cond_16
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1300
    :cond_17
    const/16 v20, 0x0

    .line 1303
    :goto_10
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->cancelTimeoutMutex:Ljava/lang/Object;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1304
    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->wasCancelled:Z

    if-eqz v3, :cond_19

    .line 1307
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->wasCancelledByTimeout:Z

    if-eqz v3, :cond_18

    .line 1308
    new-instance v3, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    invoke-direct {v3}, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;-><init>()V

    .line 1313
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetCancelledState()V

    .line 1315
    throw v3

    .line 1317
    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_1

    .line 1407
    :catch_1
    move-exception v7

    move-object/from16 v8, v20

    goto :goto_e

    .line 1310
    :cond_18
    :try_start_a
    new-instance v3, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    invoke-direct {v3}, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;-><init>()V

    goto :goto_11

    .line 1317
    :cond_19
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1319
    const/4 v3, 0x0

    .line 1321
    if-nez v10, :cond_1a

    if-eqz v21, :cond_27

    .line 1322
    :cond_1a
    sub-long v13, v22, v25

    .line 1324
    if-eqz v10, :cond_26

    .line 1325
    :try_start_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->useAutoSlowLog:Z

    if-eqz v3, :cond_24

    .line 1326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getSlowQueryThresholdMillis()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v13, v3

    if-lez v3, :cond_23

    const/4 v3, 0x1

    :goto_12
    move/from16 v19, v3

    .line 1334
    :goto_13
    if-eqz v19, :cond_1b

    .line 1336
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1337
    const-string v3, "ServerPreparedStatement.15"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->getSlowQueryThreshold()J

    move-result-wide v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1339
    const-string v3, "ServerPreparedStatement.15a"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1341
    const-string v3, "ServerPreparedStatement.16"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1343
    const-string v3, "as prepared: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    const-string v3, "\n\n with parameters bound:\n\n"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-object/from16 v29, v0

    new-instance v3, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v4, 0x6

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->currentCatalog:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v7}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getId()I

    move-result v9

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->getQueryTimingUnits()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/Throwable;

    invoke-direct/range {v17 .. v17}, Ljava/lang/Throwable;-><init>()V

    invoke-static/range {v17 .. v17}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v3 .. v18}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 1353
    :cond_1b
    if-eqz v21, :cond_1c

    .line 1354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v13, v14}, Lcom/mysql/jdbc/MySQLConnection;->registerQueryExecutionTime(J)V

    :cond_1c
    move/from16 v21, v19

    .line 1358
    :goto_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->incrementNumberOfPreparedExecutes()V

    .line 1360
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->profileSQL:Z

    if-eqz v3, :cond_1d

    .line 1361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v3}, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->getInstance(Lcom/mysql/jdbc/MySQLConnection;)Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-object/from16 v19, v0

    new-instance v3, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v4, 0x4

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->currentCatalog:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connectionId:J

    move-object/from16 v0, p0

    iget v9, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->statementId:I

    const/4 v10, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->getCurrentTimeNanosOrMillis()J

    move-result-wide v13

    sub-long v13, v13, v25

    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->getQueryTimingUnits()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/Throwable;

    invoke-direct/range {v17 .. v17}, Ljava/lang/Throwable;-><init>()V

    invoke-static/range {v17 .. v17}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->truncateQueryToLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v3 .. v18}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 1368
    :cond_1d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->resultSetType:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->resultSetConcurrency:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->currentCatalog:Ljava/lang/String;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->fieldCount:I

    int-to-long v11, v3

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v7, p2

    move-object/from16 v9, v28

    move-object/from16 v13, p3

    invoke-virtual/range {v2 .. v13}, Lcom/mysql/jdbc/MysqlIO;->readAllResults(Lcom/mysql/jdbc/StatementImpl;IIIZLjava/lang/String;Lcom/mysql/jdbc/Buffer;ZJ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v5

    .line 1371
    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->shouldIntercept()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v2 .. v7}, Lcom/mysql/jdbc/MysqlIO;->invokeStatementInterceptorsPost(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;ZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v19

    .line 1374
    if-eqz v19, :cond_25

    .line 1379
    :goto_15
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->profileSQL:Z

    if-eqz v3, :cond_1e

    .line 1380
    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->getCurrentTimeNanosOrMillis()J

    move-result-wide v13

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-object/from16 v25, v0

    new-instance v3, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v4, 0x5

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->currentCatalog:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v7}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getId()I

    move-result v9

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v13, v13, v22

    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->getQueryTimingUnits()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/Throwable;

    invoke-direct/range {v17 .. v17}, Ljava/lang/Throwable;-><init>()V

    invoke-static/range {v17 .. v17}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-direct/range {v3 .. v18}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 1391
    :cond_1e
    if-eqz v21, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getExplainSlowQueries()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1392
    invoke-static/range {v24 .. v24}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v2, v3, v0}, Lcom/mysql/jdbc/MysqlIO;->explainSlowQuery([BLjava/lang/String;)V

    .line 1395
    :cond_1f
    if-nez p2, :cond_20

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverNeedsResetBeforeEachExecution:Z

    if-eqz v3, :cond_20

    .line 1396
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->serverResetStatement()V

    .line 1399
    :cond_20
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->sendTypesToServer:Z

    .line 1400
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1402
    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->hadWarnings()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1403
    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->scanForAndThrowDataTruncation()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_1

    .line 1414
    :cond_21
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1416
    if-eqz v20, :cond_22

    .line 1417
    invoke-virtual/range {v20 .. v20}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    .line 1406
    :cond_22
    monitor-exit v27
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 1326
    :cond_23
    const/4 v3, 0x0

    goto/16 :goto_12

    .line 1328
    :cond_24
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v13, v14}, Lcom/mysql/jdbc/MySQLConnection;->isAbonormallyLongQuery(J)Z

    move-result v3

    .line 1330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4, v13, v14}, Lcom/mysql/jdbc/MySQLConnection;->reportQueryTime(J)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6
    .catch Ljava/sql/SQLException; {:try_start_d .. :try_end_d} :catch_1

    move/from16 v19, v3

    goto/16 :goto_13

    .line 1414
    :catchall_3
    move-exception v2

    move-object/from16 v20, v4

    goto/16 :goto_f

    :catchall_4
    move-exception v2

    move-object/from16 v20, v3

    goto/16 :goto_f

    :catchall_5
    move-exception v2

    move-object/from16 v20, v9

    goto/16 :goto_f

    :catchall_6
    move-exception v2

    goto/16 :goto_f

    .line 1407
    :catch_2
    move-exception v7

    move-object v8, v4

    goto/16 :goto_e

    :catch_3
    move-exception v7

    move-object v8, v3

    goto/16 :goto_e

    :cond_25
    move-object/from16 v19, v5

    goto/16 :goto_15

    :cond_26
    move/from16 v19, v3

    goto/16 :goto_13

    :cond_27
    move/from16 v21, v3

    goto/16 :goto_14

    :cond_28
    move-object/from16 v20, v9

    goto/16 :goto_10

    :cond_29
    move-wide/from16 v22, v3

    goto/16 :goto_d

    :cond_2a
    move-object v9, v4

    goto/16 :goto_c

    :cond_2b
    move-object/from16 v24, v3

    goto/16 :goto_b

    :cond_2c
    move-wide/from16 v25, v3

    goto/16 :goto_a
.end method

.method private serverLongData(ILcom/mysql/jdbc/ServerPreparedStatement$BindValue;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1450
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 1451
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    .line 1453
    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getSharedSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v3

    .line 1455
    iget-object v1, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 1457
    instance-of v2, v1, [B

    if-eqz v2, :cond_0

    .line 1458
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 1459
    const/16 v1, 0x18

    invoke-virtual {v3, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1460
    iget-wide v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    invoke-virtual {v3, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1461
    invoke-virtual {v3, p1}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 1463
    iget-object v1, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {v3, v1}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 1465
    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    .line 1476
    :goto_0
    monitor-exit v7

    .line 1477
    return-void

    .line 1466
    :cond_0
    instance-of v2, v1, Ljava/io/InputStream;

    if-eqz v2, :cond_1

    .line 1467
    check-cast v1, Ljava/io/InputStream;

    invoke-direct {p0, v0, p1, v3, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeStream(Lcom/mysql/jdbc/MysqlIO;ILcom/mysql/jdbc/Buffer;Ljava/io/InputStream;)V

    goto :goto_0

    .line 1476
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1468
    :cond_1
    :try_start_1
    instance-of v2, v1, Ljava/sql/Blob;

    if-eqz v2, :cond_2

    .line 1469
    check-cast v1, Ljava/sql/Blob;

    invoke-interface {v1}, Ljava/sql/Blob;->getBinaryStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v0, p1, v3, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeStream(Lcom/mysql/jdbc/MysqlIO;ILcom/mysql/jdbc/Buffer;Ljava/io/InputStream;)V

    goto :goto_0

    .line 1470
    :cond_2
    instance-of v2, v1, Ljava/io/Reader;

    if-eqz v2, :cond_3

    .line 1471
    check-cast v1, Ljava/io/Reader;

    invoke-direct {p0, v0, p1, v3, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeReader(Lcom/mysql/jdbc/MysqlIO;ILcom/mysql/jdbc/Buffer;Ljava/io/Reader;)V

    goto :goto_0

    .line 1473
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServerPreparedStatement.18"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method private serverPrepare(Ljava/lang/String;)V
    .locals 20
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1480
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 1481
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v1

    .line 1483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getAutoGenerateTestcaseScript()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1484
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->dumpPrepareForTestcase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1488
    :cond_0
    const-wide/16 v2, 0x0

    .line 1490
    :try_start_1
    const-string v4, "LOAD DATA"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1491
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->isLoadDataQuery:Z

    .line 1496
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getProfileSql()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v12, v2

    .line 1500
    :goto_1
    const/4 v2, 0x0

    .line 1501
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v6

    .line 1503
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->isLoadDataQuery:Z

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v6, :cond_b

    .line 1507
    :goto_2
    const/16 v2, 0x16

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    move-result-object v2

    .line 1509
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1511
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 1517
    :goto_3
    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->readLong()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    .line 1518
    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->fieldCount:I

    .line 1519
    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    .line 1520
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    new-array v2, v2, [Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    .line 1522
    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v2, v3, :cond_4

    .line 1523
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    new-instance v4, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    invoke-direct {v4}, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;-><init>()V

    aput-object v4, v3, v2

    .line 1522
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1493
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->isLoadDataQuery:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1562
    :catch_0
    move-exception v1

    .line 1563
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getDumpQueriesOnException()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1564
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1565
    const-string v3, "\n\nQuery being prepared when exception was thrown:\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/ConnectionImpl;->appendMessageToException(Ljava/sql/SQLException;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 1571
    :cond_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1574
    :catchall_0
    move-exception v1

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    throw v1

    .line 1576
    :catchall_1
    move-exception v1

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 1514
    :cond_3
    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {v2, v3}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    goto/16 :goto_3

    .line 1526
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->incrementNumberOfPrepares()V

    .line 1528
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->profileSQL:Z

    if-eqz v2, :cond_5

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-object/from16 v19, v0

    new-instance v2, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v3, 0x2

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->currentCatalog:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connectionId:J

    move-object/from16 v0, p0

    iget v8, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->statementId:I

    const/4 v9, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v1}, Lcom/mysql/jdbc/MysqlIO;->getCurrentTimeNanosOrMillis()J

    move-result-wide v14

    sub-long v12, v14, v12

    invoke-virtual {v1}, Lcom/mysql/jdbc/MysqlIO;->getQueryTimingUnits()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/Throwable;

    invoke-direct/range {v16 .. v16}, Ljava/lang/Throwable;-><init>()V

    invoke-static/range {v16 .. v16}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {p0 .. p1}, Lcom/mysql/jdbc/ServerPreparedStatement;->truncateQueryToLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v2 .. v17}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 1534
    :cond_5
    invoke-virtual {v1}, Lcom/mysql/jdbc/MysqlIO;->isEOFDeprecated()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    move v3, v2

    .line 1536
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-lez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-interface {v2, v4, v5, v6}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/mysql/jdbc/MysqlIO;->isVersion(III)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1537
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    new-array v2, v2, [Lcom/mysql/jdbc/Field;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterFields:[Lcom/mysql/jdbc/Field;

    .line 1540
    const/4 v2, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v2, v4, :cond_7

    .line 1541
    invoke-virtual {v1}, Lcom/mysql/jdbc/MysqlIO;->readPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v4

    .line 1542
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterFields:[Lcom/mysql/jdbc/Field;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Lcom/mysql/jdbc/MysqlIO;->unpackField(Lcom/mysql/jdbc/Buffer;Z)Lcom/mysql/jdbc/Field;

    move-result-object v4

    aput-object v4, v5, v2

    .line 1540
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1534
    :cond_6
    const/4 v2, 0x0

    move v3, v2

    goto :goto_5

    .line 1544
    :cond_7
    if-eqz v3, :cond_8

    .line 1545
    invoke-virtual {v1}, Lcom/mysql/jdbc/MysqlIO;->readPacket()Lcom/mysql/jdbc/Buffer;

    .line 1550
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->fieldCount:I

    if-lez v2, :cond_a

    .line 1551
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->fieldCount:I

    new-array v2, v2, [Lcom/mysql/jdbc/Field;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->resultFields:[Lcom/mysql/jdbc/Field;

    .line 1554
    const/4 v2, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->fieldCount:I

    if-ge v2, v4, :cond_9

    .line 1555
    invoke-virtual {v1}, Lcom/mysql/jdbc/MysqlIO;->readPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v4

    .line 1556
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->resultFields:[Lcom/mysql/jdbc/Field;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Lcom/mysql/jdbc/MysqlIO;->unpackField(Lcom/mysql/jdbc/Buffer;Z)Lcom/mysql/jdbc/Field;

    move-result-object v4

    aput-object v4, v5, v2

    .line 1554
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1558
    :cond_9
    if-eqz v3, :cond_a

    .line 1559
    invoke-virtual {v1}, Lcom/mysql/jdbc/MysqlIO;->readPacket()Lcom/mysql/jdbc/Buffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1574
    :cond_a
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    .line 1576
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1577
    return-void

    :cond_b
    move-object v6, v2

    goto/16 :goto_2

    :cond_c
    move-wide v12, v2

    goto/16 :goto_1
.end method

.method private serverResetStatement()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1598
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 1600
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    .line 1602
    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getSharedSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v3

    .line 1604
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 1605
    const/16 v1, 0x1a

    invoke-virtual {v3, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1606
    iget-wide v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    invoke-virtual {v3, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1609
    const/16 v1, 0x1a

    const/4 v2, 0x0

    :try_start_1
    iget-object v6, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x2

    invoke-interface {v6, v8, v9, v10}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1618
    :try_start_2
    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    .line 1620
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1621
    return-void

    :cond_0
    move v4, v5

    .line 1609
    goto :goto_0

    .line 1610
    :catch_0
    move-exception v1

    .line 1611
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1618
    :catchall_0
    move-exception v1

    :try_start_4
    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    throw v1

    .line 1620
    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1612
    :catch_1
    move-exception v1

    .line 1613
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 1614
    invoke-virtual {v2, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1616
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private setTimeInternal(ILjava/sql/Time;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2039
    if-nez p2, :cond_0

    .line 2040
    const/16 v0, 0x5c

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    .line 2054
    :goto_0
    return-void

    .line 2042
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v7

    .line 2043
    const/16 v0, 0xb

    invoke-virtual {p0, v7, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 2045
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->useLegacyDatetimeCode:Z

    if-nez v0, :cond_1

    .line 2046
    iput-object p2, v7, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    goto :goto_0

    .line 2048
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v1

    .line 2050
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v5

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Time;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v0

    iput-object v0, v7, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method private setTimestampInternal(ILjava/sql/Timestamp;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2097
    if-nez p2, :cond_0

    .line 2098
    const/16 v0, 0x5d

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    .line 2117
    :goto_0
    return-void

    .line 2100
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v7

    .line 2101
    const/16 v0, 0xc

    invoke-virtual {p0, v7, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 2103
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->sendFractionalSeconds:Z

    if-nez v0, :cond_3

    .line 2104
    invoke-static {p2}, Lcom/mysql/jdbc/TimeUtil;->truncateFractionalSeconds(Ljava/sql/Timestamp;)Ljava/sql/Timestamp;

    move-result-object v3

    .line 2107
    :goto_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->useLegacyDatetimeCode:Z

    if-nez v0, :cond_1

    .line 2108
    iput-object v3, v7, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    goto :goto_0

    .line 2110
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v1

    .line 2113
    :goto_2
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v5

    move-object v2, p3

    move-object v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v0

    iput-object v0, v7, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    goto :goto_0

    .line 2110
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v3, p2

    goto :goto_1
.end method

.method private storeBinding(Lcom/mysql/jdbc/Buffer;Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;Lcom/mysql/jdbc/MysqlIO;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2179
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 2181
    :try_start_0
    iget-object v1, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 2186
    iget v2, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    sparse-switch v2, :sswitch_data_0

    .line 2240
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2241
    :goto_0
    return-void

    .line 2189
    :sswitch_0
    :try_start_2
    iget-wide v1, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2190
    :try_start_3
    monitor-exit v8

    goto :goto_0

    .line 2240
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 2192
    :sswitch_1
    const/4 v1, 0x2

    :try_start_4
    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 2193
    iget-wide v1, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int v1, v1

    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2194
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 2196
    :sswitch_2
    const/4 v1, 0x4

    :try_start_6
    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 2197
    iget-wide v1, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int v1, v1

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2198
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 2200
    :sswitch_3
    const/16 v1, 0x8

    :try_start_8
    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 2201
    iget-wide v1, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    invoke-virtual {p1, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLongLong(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_0

    .line 2202
    :try_start_9
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 2204
    :sswitch_4
    const/4 v1, 0x4

    :try_start_a
    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 2205
    iget v1, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->floatBinding:F

    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->writeFloat(F)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_0

    .line 2206
    :try_start_b
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_0

    .line 2208
    :sswitch_5
    const/16 v1, 0x8

    :try_start_c
    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 2209
    iget-wide v1, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->doubleBinding:D

    invoke-virtual {p1, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeDouble(D)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_c} :catch_0

    .line 2210
    :try_start_d
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_0

    .line 2212
    :sswitch_6
    :try_start_e
    check-cast v1, Ljava/sql/Time;

    invoke-direct {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeTime(Lcom/mysql/jdbc/Buffer;Ljava/sql/Time;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_e} :catch_0

    .line 2213
    :try_start_f
    monitor-exit v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_0

    .line 2217
    :sswitch_7
    :try_start_10
    check-cast v1, Ljava/util/Date;

    iget v2, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    invoke-direct {p0, p1, v1, p3, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeDateTime(Lcom/mysql/jdbc/Buffer;Ljava/util/Date;Lcom/mysql/jdbc/MysqlIO;I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_10} :catch_0

    .line 2218
    :try_start_11
    monitor-exit v8
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_0

    .line 2224
    :sswitch_8
    :try_start_12
    instance-of v2, v1, [B

    if-eqz v2, :cond_0

    .line 2225
    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->writeLenBytes([B)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_12} :catch_0

    .line 2233
    :goto_1
    :try_start_13
    monitor-exit v8
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_0

    .line 2226
    :cond_0
    :try_start_14
    iget-boolean v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->isLoadDataQuery:Z

    if-nez v2, :cond_1

    .line 2227
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v6

    iget-object v7, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/Buffer;->writeLenString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;ZLcom/mysql/jdbc/MySQLConnection;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_14} :catch_0

    goto :goto_1

    .line 2236
    :catch_0
    move-exception v1

    .line 2237
    :try_start_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServerPreparedStatement.22"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 2230
    :cond_1
    :try_start_16
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->writeLenBytes([B)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_16} :catch_0

    goto :goto_1

    .line 2186
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x7 -> :sswitch_7
        0x8 -> :sswitch_3
        0xa -> :sswitch_7
        0xb -> :sswitch_6
        0xc -> :sswitch_7
        0xf -> :sswitch_8
        0xf6 -> :sswitch_8
        0xfd -> :sswitch_8
        0xfe -> :sswitch_8
    .end sparse-switch
.end method

.method private storeDateTime(Lcom/mysql/jdbc/Buffer;Ljava/util/Date;Lcom/mysql/jdbc/MysqlIO;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2297
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2298
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v0, v2, v3, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2299
    invoke-direct {p0, p1, p2, p4}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeDateTime413AndNewer(Lcom/mysql/jdbc/Buffer;Ljava/util/Date;I)V

    .line 2303
    :goto_0
    monitor-exit v1

    .line 2304
    return-void

    .line 2301
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeDateTime412AndOlder(Lcom/mysql/jdbc/Buffer;Ljava/util/Date;I)V

    goto :goto_0

    .line 2303
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private storeDateTime412AndOlder(Lcom/mysql/jdbc/Buffer;Ljava/util/Date;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2244
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2247
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->useLegacyDatetimeCode:Z

    if-nez v0, :cond_1

    .line 2248
    const/16 v0, 0xa

    if-ne p3, v0, :cond_0

    .line 2249
    invoke-direct {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getDefaultTzCalendar()Ljava/util/Calendar;

    move-result-object v0

    move-object v1, v0

    .line 2258
    :goto_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 2261
    const/16 v0, 0x8

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 2262
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2264
    invoke-virtual {v1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2266
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2267
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 2268
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 2270
    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 2271
    int-to-byte v0, v4

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2272
    int-to-byte v0, v5

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2274
    instance-of v0, p2, Ljava/sql/Date;

    if-eqz v0, :cond_3

    .line 2275
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2276
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2277
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2284
    :goto_1
    :try_start_2
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2286
    monitor-exit v2

    .line 2287
    return-void

    .line 2251
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getServerTzCalendar()Ljava/util/Calendar;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 2254
    :cond_1
    instance-of v0, p2, Ljava/sql/Timestamp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    :goto_2
    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    goto :goto_2

    .line 2279
    :cond_3
    const/16 v0, 0xb

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2280
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2281
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2284
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    throw v0

    .line 2286
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private storeDateTime413AndNewer(Lcom/mysql/jdbc/Buffer;Ljava/util/Date;I)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v1, 0xb

    .line 2307
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2310
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->useLegacyDatetimeCode:Z

    if-nez v0, :cond_4

    .line 2311
    const/16 v0, 0xa

    if-ne p3, v0, :cond_3

    .line 2312
    invoke-direct {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getDefaultTzCalendar()Ljava/util/Calendar;

    move-result-object v0

    move-object v2, v0

    .line 2321
    :goto_0
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 2324
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2326
    instance-of v0, p2, Ljava/sql/Date;

    if-eqz v0, :cond_0

    .line 2327
    const/16 v0, 0xb

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Ljava/util/Calendar;->set(II)V

    .line 2328
    const/16 v0, 0xc

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Ljava/util/Calendar;->set(II)V

    .line 2329
    const/16 v0, 0xd

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Ljava/util/Calendar;->set(II)V

    .line 2332
    :cond_0
    const/4 v0, 0x7

    .line 2334
    instance-of v5, p2, Ljava/sql/Timestamp;

    if-eqz v5, :cond_1

    move v0, v1

    .line 2338
    :cond_1
    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 2340
    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2342
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 2343
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 2344
    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 2346
    invoke-virtual {p1, v5}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 2347
    int-to-byte v5, v6

    invoke-virtual {p1, v5}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2348
    int-to-byte v5, v7

    invoke-virtual {p1, v5}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2350
    instance-of v5, p2, Ljava/sql/Date;

    if-eqz v5, :cond_6

    .line 2351
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2352
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2353
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2360
    :goto_1
    if-ne v0, v1, :cond_2

    .line 2362
    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p2}, Ljava/sql/Timestamp;->getNanos()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2366
    :cond_2
    :try_start_2
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2368
    monitor-exit v3

    .line 2369
    return-void

    .line 2314
    :cond_3
    invoke-direct {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getServerTzCalendar()Ljava/util/Calendar;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 2317
    :cond_4
    instance-of v0, p2, Ljava/sql/Timestamp;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    :goto_2
    move-object v2, v0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    goto :goto_2

    .line 2355
    :cond_6
    const/16 v5, 0xb

    :try_start_3
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2356
    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2357
    const/16 v5, 0xd

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2366
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    throw v0

    .line 2368
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private storeReader(Lcom/mysql/jdbc/MysqlIO;ILcom/mysql/jdbc/Buffer;Ljava/io/Reader;)V
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2395
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v2

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 2396
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getClobCharacterEncoding()Ljava/lang/String;

    move-result-object v4

    .line 2398
    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v4

    .line 2400
    :cond_0
    const/4 v2, 0x2

    .line 2402
    if-eqz v4, :cond_1

    .line 2403
    const-string v2, "UTF-16"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2, v4}, Lcom/mysql/jdbc/MySQLConnection;->getMaxBytesPerChar(Ljava/lang/String;)I

    move-result v2

    .line 2406
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2407
    const/4 v2, 0x2

    .line 2414
    :cond_1
    :goto_0
    const/16 v3, 0x2000

    div-int v2, v3, v2

    new-array v2, v2, [C

    .line 2418
    const/4 v5, 0x0

    .line 2419
    const/4 v12, 0x0

    .line 2420
    const/4 v10, 0x0

    .line 2421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getBlobSendChunkSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v15

    .line 2424
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 2425
    const/16 v3, 0x18

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2426
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v7}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 2427
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 2429
    const/4 v3, 0x0

    move v9, v3

    move v11, v5

    .line 2431
    :goto_1
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/io/Reader;->read([C)I

    move-result v7

    const/4 v3, -0x1

    if-eq v7, v3, :cond_3

    .line 2432
    const/4 v13, 0x1

    .line 2434
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/mysql/jdbc/StringUtils;->getBytes([CLcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;IIZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v5

    .line 2437
    const/4 v3, 0x0

    array-length v6, v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v3, v6}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 2439
    array-length v3, v5

    add-int/2addr v3, v11

    .line 2440
    array-length v5, v5

    add-int/2addr v12, v5

    .line 2442
    if-lt v3, v15, :cond_8

    .line 2445
    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v5 .. v11}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    .line 2447
    const/4 v3, 0x0

    .line 2448
    invoke-virtual/range {p3 .. p3}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 2449
    const/16 v5, 0x18

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2450
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 2451
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    move v5, v3

    move v3, v12

    :goto_2
    move v9, v13

    move v10, v3

    move v11, v5

    .line 2453
    goto :goto_1

    .line 2410
    :cond_2
    const/4 v2, 0x4

    goto/16 :goto_0

    .line 2455
    :cond_3
    if-eq v12, v10, :cond_4

    .line 2456
    const/16 v3, 0x18

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    .line 2459
    :cond_4
    if-nez v9, :cond_5

    .line 2460
    const/16 v3, 0x18

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2469
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getAutoClosePStmtStreams()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-eqz v2, :cond_6

    .line 2470
    if-eqz p4, :cond_6

    .line 2472
    :try_start_3
    invoke-virtual/range {p4 .. p4}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2479
    :cond_6
    :goto_3
    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2480
    return-void

    .line 2462
    :catch_0
    move-exception v2

    .line 2463
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServerPreparedStatement.24"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "S1000"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    .line 2465
    invoke-virtual {v3, v2}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2467
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2469
    :catchall_0
    move-exception v2

    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getAutoClosePStmtStreams()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v3

    if-eqz v3, :cond_7

    .line 2470
    if-eqz p4, :cond_7

    .line 2472
    :try_start_7
    invoke-virtual/range {p4 .. p4}, Ljava/io/Reader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 2469
    :cond_7
    :goto_4
    :try_start_8
    throw v2

    .line 2479
    :catchall_1
    move-exception v2

    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    .line 2473
    :catch_1
    move-exception v3

    goto :goto_4

    :catch_2
    move-exception v2

    goto :goto_3

    :cond_8
    move v5, v3

    move v3, v10

    goto :goto_2
.end method

.method private storeStream(Lcom/mysql/jdbc/MysqlIO;ILcom/mysql/jdbc/Buffer;Ljava/io/InputStream;)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2483
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 2484
    const/16 v1, 0x2000

    :try_start_0
    new-array v11, v1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2489
    const/4 v3, 0x0

    .line 2490
    const/4 v9, 0x0

    .line 2491
    const/4 v2, 0x0

    .line 2492
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getBlobSendChunkSize()I

    move-result v12

    .line 2494
    invoke-virtual/range {p3 .. p3}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 2495
    const/16 v1, 0x18

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2496
    iget-wide v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 2497
    move-object/from16 v0, p3

    invoke-virtual {v0, p2}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 2499
    const/4 v1, 0x0

    move v8, v1

    move v1, v2

    move v2, v3

    .line 2501
    :cond_0
    :goto_0
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 2503
    const/4 v8, 0x1

    .line 2505
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v4, v3}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 2506
    add-int/2addr v2, v3

    .line 2507
    add-int/2addr v9, v3

    .line 2509
    if-lt v2, v12, :cond_0

    .line 2512
    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    .line 2514
    const/4 v1, 0x0

    .line 2515
    invoke-virtual/range {p3 .. p3}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 2516
    const/16 v2, 0x18

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2517
    iget-wide v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 2518
    move-object/from16 v0, p3

    invoke-virtual {v0, p2}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    move v2, v1

    move v1, v9

    goto :goto_0

    .line 2522
    :cond_1
    if-eq v9, v1, :cond_2

    .line 2523
    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    .line 2526
    :cond_2
    if-nez v8, :cond_3

    .line 2527
    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2536
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getAutoClosePStmtStreams()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-eqz v1, :cond_4

    .line 2537
    if-eqz p4, :cond_4

    .line 2539
    :try_start_3
    invoke-virtual/range {p4 .. p4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2546
    :cond_4
    :goto_1
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2547
    return-void

    .line 2529
    :catch_0
    move-exception v1

    .line 2530
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServerPreparedStatement.25"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 2532
    invoke-virtual {v2, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2534
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2536
    :catchall_0
    move-exception v1

    :try_start_6
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getAutoClosePStmtStreams()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v2

    if-eqz v2, :cond_5

    .line 2537
    if-eqz p4, :cond_5

    .line 2539
    :try_start_7
    invoke-virtual/range {p4 .. p4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 2536
    :cond_5
    :goto_2
    :try_start_8
    throw v1

    .line 2546
    :catchall_1
    move-exception v1

    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1

    .line 2540
    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private storeTime(Lcom/mysql/jdbc/Buffer;Ljava/sql/Time;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 255
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 256
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 257
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 258
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 260
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v1

    .line 262
    monitor-enter v1

    .line 263
    :try_start_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 265
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 266
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 267
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 268
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 274
    monitor-exit v1

    .line 275
    return-void

    .line 272
    :catchall_0
    move-exception v0

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    throw v0

    .line 274
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private truncateQueryToLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1580
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1583
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getMaxQuerySizeToLog()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 1584
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getMaxQuerySizeToLog()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1585
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getMaxQuerySizeToLog()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    const-string v2, "MysqlIO.25"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1593
    :cond_0
    monitor-exit v1

    return-object p1

    .line 1594
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addBatch()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedArgs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedArgs:Ljava/util/List;

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedArgs:Ljava/util/List;

    new-instance v2, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;

    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    invoke-direct {v2, v3}, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;-><init>([Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    monitor-exit v1

    .line 433
    return-void

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public asSql(Z)Ljava/lang/String;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 438
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 440
    const/4 v1, 0x0

    .line 443
    :try_start_0
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    iget-object v5, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->currentCatalog:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/mysql/jdbc/PreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/jdbc/PreparedStatement;

    move-result-object v1

    .line 445
    iget v3, v1, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    .line 446
    iget v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    .line 448
    :goto_0
    if-ge v0, v3, :cond_3

    if-ge v0, v4, :cond_3

    .line 449
    iget-object v5, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v5, v5, v0

    if-eqz v5, :cond_0

    .line 450
    iget-object v5, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v5, v5, v0

    iget-boolean v5, v5, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    if-eqz v5, :cond_1

    .line 451
    add-int/lit8 v5, v0, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 448
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    :cond_1
    iget-object v5, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v5, v5, v0

    .line 458
    iget v6, v5, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    packed-switch v6, :pswitch_data_0

    .line 479
    :pswitch_0
    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    invoke-virtual {v1, v5, v6}, Lcom/mysql/jdbc/PreparedStatement;->setObject(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 488
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 490
    :try_start_1
    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 488
    :cond_2
    :goto_2
    :try_start_2
    throw v0

    .line 496
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 461
    :pswitch_1
    add-int/lit8 v6, v0, 0x1

    :try_start_3
    iget-wide v7, v5, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int v5, v7

    int-to-byte v5, v5

    invoke-virtual {v1, v6, v5}, Lcom/mysql/jdbc/PreparedStatement;->setByte(IB)V

    goto :goto_1

    .line 464
    :pswitch_2
    add-int/lit8 v6, v0, 0x1

    iget-wide v7, v5, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int v5, v7

    int-to-short v5, v5

    invoke-virtual {v1, v6, v5}, Lcom/mysql/jdbc/PreparedStatement;->setShort(IS)V

    goto :goto_1

    .line 467
    :pswitch_3
    add-int/lit8 v6, v0, 0x1

    iget-wide v7, v5, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int v5, v7

    invoke-virtual {v1, v6, v5}, Lcom/mysql/jdbc/PreparedStatement;->setInt(II)V

    goto :goto_1

    .line 470
    :pswitch_4
    add-int/lit8 v6, v0, 0x1

    iget-wide v7, v5, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    invoke-virtual {v1, v6, v7, v8}, Lcom/mysql/jdbc/PreparedStatement;->setLong(IJ)V

    goto :goto_1

    .line 473
    :pswitch_5
    add-int/lit8 v6, v0, 0x1

    iget v5, v5, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->floatBinding:F

    invoke-virtual {v1, v6, v5}, Lcom/mysql/jdbc/PreparedStatement;->setFloat(IF)V

    goto :goto_1

    .line 476
    :pswitch_6
    add-int/lit8 v6, v0, 0x1

    iget-wide v7, v5, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->doubleBinding:D

    invoke-virtual {v1, v6, v7, v8}, Lcom/mysql/jdbc/PreparedStatement;->setDouble(ID)V

    goto :goto_1

    .line 486
    :cond_3
    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/PreparedStatement;->asSql(Z)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 488
    if-eqz v1, :cond_4

    .line 490
    :try_start_4
    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 486
    :cond_4
    :goto_3
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-object v0

    .line 491
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public canRewriteAsMultiValueInsertAtSqlLevel()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2579
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 2580
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->hasCheckedRewrite:Z

    if-nez v0, :cond_0

    .line 2581
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->hasCheckedRewrite:Z

    .line 2582
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->isOnDuplicateKeyUpdate()Z

    move-result v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getLocationOfOnDuplicateKeyUpdate()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/mysql/jdbc/ServerPreparedStatement;->canRewrite(Ljava/lang/String;ZII)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->canRewrite:Z

    .line 2584
    new-instance v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v3

    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v5, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;)V

    iput-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    .line 2587
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->canRewrite:Z

    monitor-exit v6

    return v0

    .line 2588
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public canRewriteAsMultivalueInsertStatement()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2592
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2593
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->canRewriteAsMultiValueInsertAtSqlLevel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2594
    monitor-exit v3

    move v0, v1

    .line 2623
    :goto_0
    return v0

    .line 2598
    :cond_0
    const/4 v4, 0x0

    .line 2600
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v2, v1

    .line 2604
    :goto_1
    if-ge v2, v5, :cond_3

    .line 2605
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2607
    instance-of v6, v0, Ljava/lang/String;

    if-nez v6, :cond_2

    .line 2609
    check-cast v0, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;

    iget-object v6, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;->batchedParameterValues:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    .line 2613
    if-eqz v4, :cond_2

    move v0, v1

    .line 2614
    :goto_2
    iget-object v7, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    array-length v7, v7

    if-ge v0, v7, :cond_2

    .line 2615
    aget-object v7, v6, v0

    iget v7, v7, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    aget-object v8, v4, v0

    iget v8, v8, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    if-eq v7, v8, :cond_1

    .line 2616
    monitor-exit v3

    move v0, v1

    goto :goto_0

    .line 2614
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2604
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 2623
    :cond_3
    const/4 v0, 0x1

    monitor-exit v3

    goto :goto_0

    .line 2624
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected checkClosed()Lcom/mysql/jdbc/MySQLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalid:Z

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalidationException:Ljava/sql/SQLException;

    throw v0

    .line 510
    :cond_0
    invoke-super {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    return-object v0
.end method

.method public clearParameters()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 519
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->clearParametersInternal(Z)V

    .line 520
    monitor-exit v1

    .line 521
    return-void

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 562
    if-nez v0, :cond_0

    .line 577
    :goto_0
    return-void

    .line 566
    :cond_0
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 567
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->isCached:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->isPoolable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->isClosed:Z

    if-nez v0, :cond_1

    .line 568
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->clearParameters()V

    .line 569
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->isClosed:Z

    .line 570
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, p0}, Lcom/mysql/jdbc/MySQLConnection;->recachePreparedStatement(Lcom/mysql/jdbc/ServerPreparedStatement;)V

    .line 571
    monitor-exit v1

    goto :goto_0

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 574
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->isClosed:Z

    .line 575
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->realClose(ZZ)V

    .line 576
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected computeMaxParameterSetSizeAndBatchSize(I)[J
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2655
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 2656
    const-wide/16 v5, 0xa

    .line 2657
    const-wide/16 v3, 0x0

    .line 2659
    const/4 v1, 0x0

    move v7, v1

    move-wide v8, v5

    :goto_0
    move/from16 v0, p1

    if-ge v7, v0, :cond_3

    .line 2660
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;

    iget-object v11, v1, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;->batchedParameterValues:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    .line 2662
    const-wide/16 v1, 0x0

    .line 2664
    move-object/from16 v0, p0

    iget v5, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 2666
    move-object/from16 v0, p0

    iget v5, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    mul-int/lit8 v5, v5, 0x2

    int-to-long v5, v5

    add-long/2addr v5, v1

    .line 2668
    const/4 v1, 0x0

    move/from16 v16, v1

    move-wide v1, v5

    move/from16 v5, v16

    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 2669
    aget-object v6, v11, v5

    iget-boolean v6, v6, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    if-nez v6, :cond_0

    .line 2671
    aget-object v6, v11, v5

    invoke-virtual {v6}, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->getBoundLength()J

    move-result-wide v12

    .line 2673
    aget-object v6, v11, v5

    iget-boolean v6, v6, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-eqz v6, :cond_1

    .line 2674
    const-wide/16 v14, -0x1

    cmp-long v6, v12, v14

    if-eqz v6, :cond_0

    .line 2675
    add-long/2addr v1, v12

    .line 2668
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2678
    :cond_1
    add-long/2addr v1, v12

    goto :goto_2

    .line 2683
    :cond_2
    add-long v5, v8, v1

    .line 2685
    cmp-long v8, v1, v3

    if-lez v8, :cond_4

    .line 2659
    :goto_3
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move-wide v8, v5

    move-wide v3, v1

    goto :goto_0

    .line 2690
    :cond_3
    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    aput-wide v8, v1, v2

    monitor-exit v10

    return-object v1

    .line 2691
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    move-wide v1, v3

    goto :goto_3
.end method

.method protected containsOnDuplicateKeyUpdateInSQL()Z
    .locals 1

    .prologue
    .line 2778
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->hasOnDuplicateKeyUpdate:Z

    return v0
.end method

.method protected executeBatchSerially(I)[J
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 658
    :try_start_0
    iget-object v9, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 660
    invoke-interface {v9}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServerPreparedStatement.2"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ServerPreparedStatement.3"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 769
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 665
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->clearWarnings()V

    .line 669
    iget-object v10, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 672
    const/4 v1, 0x0

    .line 674
    :try_start_2
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedArgs:Ljava/util/List;

    if-eqz v2, :cond_e

    .line 675
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    .line 676
    new-array v6, v11, [J

    .line 678
    iget-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v1, :cond_1

    .line 679
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 682
    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v11, :cond_2

    .line 683
    const-wide/16 v2, -0x3

    aput-wide v2, v6, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 682
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 686
    :cond_2
    const/4 v4, 0x0

    .line 690
    const/4 v5, 0x0

    .line 692
    const/4 v2, 0x0

    .line 695
    :try_start_3
    invoke-interface {v9}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz p1, :cond_10

    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-interface {v9, v1, v3, v7}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 696
    new-instance v1, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {v1, p0, p0}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 697
    :try_start_4
    invoke-interface {v9}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v2

    int-to-long v12, p1

    invoke-virtual {v2, v1, v12, v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-object v3, v1

    .line 700
    :goto_1
    const/4 v1, 0x0

    move v7, v1

    :goto_2
    if-ge v7, v11, :cond_b

    .line 701
    :try_start_5
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v2

    .line 704
    :try_start_6
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 705
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    const/4 v12, 0x1

    iget-boolean v13, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->retrieveGeneratedKeys:Z

    invoke-virtual {p0, v1, v12, v13}, Lcom/mysql/jdbc/ServerPreparedStatement;->executeUpdateInternal(Ljava/lang/String;ZZ)J

    move-result-wide v12

    aput-wide v12, v6, v7

    .line 708
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getFirstCharOfQuery()C

    move-result v1

    const/16 v12, 0x49

    if-ne v1, v12, :cond_4

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->containsOnDuplicateKeyInString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBatchedGeneratedKeys(I)V

    move-object v1, v5

    :goto_4
    move-object v2, v4

    .line 700
    :cond_3
    add-int/lit8 v4, v7, 0x1

    move-object v5, v1

    move v7, v4

    move-object v4, v2

    goto :goto_2

    .line 708
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 710
    :cond_5
    check-cast v2, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;

    iget-object v1, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;->batchedParameterValues:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    .line 714
    if-eqz v5, :cond_6

    .line 715
    const/4 v1, 0x0

    :goto_5
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 716
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    aget-object v12, v5, v1

    iget v12, v12, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    if-eq v2, v12, :cond_9

    .line 717
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->sendTypesToServer:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    .line 725
    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_7
    invoke-virtual {p0, v1, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->executeUpdateInternal(ZZ)J

    move-result-wide v1

    aput-wide v1, v6, v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 727
    :try_start_8
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_1

    .line 731
    :try_start_9
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->containsOnDuplicateKeyUpdateInSQL()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBatchedGeneratedKeys(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_4

    .line 733
    :catch_0
    move-exception v2

    .line 734
    :goto_7
    const-wide/16 v4, -0x3

    :try_start_a
    aput-wide v4, v6, v7

    .line 736
    iget-boolean v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->continueBatchOnError:Z

    if-eqz v4, :cond_7

    instance-of v4, v2, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    if-nez v4, :cond_7

    instance-of v4, v2, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    if-nez v4, :cond_7

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->hasDeadlockOrTimeoutRolledBackTx(Ljava/sql/SQLException;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 740
    :cond_7
    new-array v1, v7, [J

    .line 741
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v6, v4, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 743
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 748
    :catchall_1
    move-exception v1

    :goto_8
    if-eqz v3, :cond_8

    .line 749
    :try_start_b
    invoke-virtual {v3}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 751
    invoke-interface {v9}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    .line 754
    :cond_8
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetCancelledState()V

    .line 748
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 764
    :catchall_2
    move-exception v1

    :try_start_c
    iput-object v10, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    .line 765
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->sendTypesToServer:Z

    .line 767
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->clearBatch()V

    .line 764
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 715
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 727
    :catchall_3
    move-exception v1

    :try_start_d
    iget-object v5, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_d .. :try_end_d} :catch_1

    .line 733
    :catch_1
    move-exception v2

    move-object v1, v5

    goto :goto_7

    .line 731
    :cond_a
    const/4 v2, 0x0

    goto :goto_6

    .line 748
    :cond_b
    if-eqz v3, :cond_c

    .line 749
    :try_start_e
    invoke-virtual {v3}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 751
    invoke-interface {v9}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 754
    :cond_c
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetCancelledState()V

    .line 757
    if-eqz v4, :cond_d

    .line 758
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v4, v6, v1}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_d
    move-object v1, v6

    .line 762
    :cond_e
    if-eqz v1, :cond_f

    .line 764
    :goto_9
    :try_start_f
    iput-object v10, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    .line 765
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->sendTypesToServer:Z

    .line 767
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->clearBatch()V

    .line 762
    monitor-exit v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    return-object v1

    :cond_f
    const/4 v1, 0x0

    :try_start_10
    new-array v1, v1, [J
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_9

    .line 748
    :catchall_4
    move-exception v1

    move-object v3, v2

    goto :goto_8

    :catchall_5
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    goto :goto_8

    :cond_10
    move-object v3, v2

    goto/16 :goto_1
.end method

.method protected executeInternal(ILcom/mysql/jdbc/Buffer;ZZ[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 779
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->numberOfExecutions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->numberOfExecutions:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    :try_start_1
    invoke-direct {p0, p1, p3, p5}, Lcom/mysql/jdbc/ServerPreparedStatement;->serverExecute(IZ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :try_start_2
    monitor-exit v1

    return-object v0

    .line 784
    :catch_0
    move-exception v0

    .line 786
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getEnablePacketDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 787
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->dumpPacketRingBuffer()V

    .line 790
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getDumpQueriesOnException()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 791
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->toString()Ljava/lang/String;

    move-result-object v2

    .line 792
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 793
    const-string v4, "\n\nQuery being executed when exception was thrown:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    const-string v2, "\n\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/ConnectionImpl;->appendMessageToException(Ljava/sql/SQLException;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 800
    :cond_1
    throw v0

    .line 822
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 801
    :catch_1
    move-exception v2

    .line 802
    :try_start_3
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEnablePacketDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 803
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->dumpPacketRingBuffer()V

    .line 806
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 808
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getDumpQueriesOnException()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 809
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->toString()Ljava/lang/String;

    move-result-object v3

    .line 810
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 811
    const-string v5, "\n\nQuery being executed when exception was thrown:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    const-string v3, "\n\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/mysql/jdbc/ConnectionImpl;->appendMessageToException(Ljava/sql/SQLException;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 818
    :cond_3
    invoke-virtual {v0, v2}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 820
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected fillSendPacket()Lcom/mysql/jdbc/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 830
    const/4 v0, 0x0

    return-object v0
.end method

.method protected fillSendPacket([[B[Ljava/io/InputStream;[Z[I)Lcom/mysql/jdbc/Buffer;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 839
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 855
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 856
    const-string v0, "ServerPreparedStatement.8"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 877
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 860
    :cond_0
    add-int/lit8 v0, p1, -0x1

    .line 862
    if-ltz v0, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 863
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServerPreparedStatement.9"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ServerPreparedStatement.10"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 868
    :cond_2
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v2, v2, v0

    if-nez v2, :cond_4

    .line 869
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    new-instance v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    invoke-direct {v3}, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;-><init>()V

    aput-object v3, v2, v0

    .line 876
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v0, v2, v0

    monitor-exit v1

    return-object v0

    .line 871
    :cond_4
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-eqz v2, :cond_3

    if-nez p2, :cond_3

    .line 872
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->detectedLongParameterSwitch:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method getBytes(I)[B
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 895
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 896
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 898
    iget-boolean v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    if-eqz v2, :cond_0

    .line 899
    const/4 v0, 0x0

    monitor-exit v1

    .line 921
    :goto_0
    return-object v0

    .line 900
    :cond_0
    iget-boolean v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-eqz v2, :cond_1

    .line 901
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 923
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 903
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->outByteBuffer:Lcom/mysql/jdbc/Buffer;

    if-nez v2, :cond_2

    .line 904
    new-instance v2, Lcom/mysql/jdbc/Buffer;

    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getNetBufferLength()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->outByteBuffer:Lcom/mysql/jdbc/Buffer;

    .line 907
    :cond_2
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->outByteBuffer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 909
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->outByteBuffer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    .line 911
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->outByteBuffer:Lcom/mysql/jdbc/Buffer;

    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeBinding(Lcom/mysql/jdbc/Buffer;Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;Lcom/mysql/jdbc/MysqlIO;)V

    .line 913
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->outByteBuffer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    .line 915
    sub-int v3, v0, v2

    .line 917
    new-array v0, v3, [B

    .line 919
    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->outByteBuffer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 921
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected getLocationOfOnDuplicateKeyUpdate()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2631
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2632
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->locationOfOnDuplicateKeyUpdate:I

    const/4 v2, -0x2

    if-ne v0, v2, :cond_0

    .line 2633
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getDontCheckOnDuplicateKeyUpdateInSQL()Z

    move-result v2

    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getRewriteBatchedStatements()Z

    move-result v3

    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/mysql/jdbc/ServerPreparedStatement;->getOnDuplicateKeyLocation(Ljava/lang/String;ZZZ)I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->locationOfOnDuplicateKeyUpdate:I

    .line 2637
    :cond_0
    iget v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->locationOfOnDuplicateKeyUpdate:I

    monitor-exit v1

    return v0

    .line 2638
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 931
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 933
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->resultFields:[Lcom/mysql/jdbc/Field;

    if-nez v0, :cond_0

    .line 934
    const/4 v0, 0x0

    monitor-exit v1

    .line 937
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mysql/jdbc/ResultSetMetaData;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->resultFields:[Lcom/mysql/jdbc/Field;

    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getUseOldAliasMetadataBehavior()Z

    move-result v3

    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/mysql/jdbc/ResultSetMetaData;-><init>([Lcom/mysql/jdbc/Field;ZZLcom/mysql/jdbc/ExceptionInterceptor;)V

    monitor-exit v1

    goto :goto_0

    .line 939
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getParameterBindValues()[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    return-object v0
.end method

.method public getParameterMetaData()Ljava/sql/ParameterMetaData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 949
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    if-nez v0, :cond_0

    .line 950
    new-instance v0, Lcom/mysql/jdbc/MysqlParameterMetadata;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterFields:[Lcom/mysql/jdbc/Field;

    iget v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/mysql/jdbc/MysqlParameterMetadata;-><init>([Lcom/mysql/jdbc/Field;ILcom/mysql/jdbc/ExceptionInterceptor;)V

    iput-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    monitor-exit v1

    return-object v0

    .line 954
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getServerStatementId()J
    .locals 2

    .prologue
    .line 2571
    iget-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    return-wide v0
.end method

.method isCursorRequired()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->resultFields:[Lcom/mysql/jdbc/Field;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isCursorFetchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getResultSetType()I

    move-result v0

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getResultSetConcurrency()I

    move-result v0

    const/16 v1, 0x3ef

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getFetchSize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNull(I)Z
    .locals 2
    .parameter

    .prologue
    .line 962
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ServerPreparedStatement.7"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isOnDuplicateKeyUpdate()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2642
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2643
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getLocationOfOnDuplicateKeyUpdate()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2644
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected prepareBatchedInsertSQL(Lcom/mysql/jdbc/MySQLConnection;I)Lcom/mysql/jdbc/PreparedStatement;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2783
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2785
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    invoke-virtual {v0, p2}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->getSqlForBatch(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->resultSetType:I

    iget v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->resultSetConcurrency:I

    invoke-interface {p1, v0, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/Wrapper;

    const-class v2, Lcom/mysql/jdbc/PreparedStatement;

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/Wrapper;->unwrap(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    .line 2787
    iget-boolean v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->retrieveGeneratedKeys:Z

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2789
    :try_start_1
    monitor-exit v1

    return-object v0

    .line 2790
    :catch_0
    move-exception v0

    .line 2791
    const-string v2, "Unable to prepare batch statement"

    const-string v3, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 2793
    invoke-virtual {v2, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2795
    throw v2

    .line 2797
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected rePrepare()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1043
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1044
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalidationException:Ljava/sql/SQLException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1047
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->serverPrepare(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1056
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalidationException:Ljava/sql/SQLException;

    if-eqz v0, :cond_2

    .line 1057
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalid:Z

    .line 1059
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    .line 1061
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterFields:[Lcom/mysql/jdbc/Field;

    .line 1062
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->resultFields:[Lcom/mysql/jdbc/Field;

    .line 1064
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    .line 1066
    :try_start_3
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 1071
    :cond_0
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_1

    .line 1073
    :try_start_5
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1079
    :cond_1
    :goto_2
    :try_start_6
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->closeAllOpenResults()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1083
    :goto_3
    :try_start_7
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_2

    .line 1084
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1085
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, p0}, Lcom/mysql/jdbc/MySQLConnection;->unregisterStatement(Lcom/mysql/jdbc/Statement;)V

    .line 1089
    :cond_2
    monitor-exit v1

    .line 1090
    return-void

    .line 1048
    :catch_0
    move-exception v0

    .line 1050
    iput-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalidationException:Ljava/sql/SQLException;

    goto :goto_0

    .line 1089
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .line 1051
    :catch_1
    move-exception v0

    .line 1052
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalidationException:Ljava/sql/SQLException;

    .line 1053
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalidationException:Ljava/sql/SQLException;

    invoke-virtual {v2, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 1080
    :catch_2
    move-exception v0

    goto :goto_3

    .line 1074
    :catch_3
    move-exception v0

    goto :goto_2

    .line 1067
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method protected realClose(ZZ)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 976
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 978
    if-nez v0, :cond_0

    .line 1033
    :goto_0
    return-void

    .line 982
    :cond_0
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 984
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_3

    .line 985
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoGenerateTestcaseScript()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 986
    invoke-direct {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->dumpCloseForTestcase()V

    .line 998
    :cond_1
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 999
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    .line 1004
    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getSharedSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v3

    .line 1006
    const/16 v1, 0x19

    invoke-virtual {v3, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1007
    iget-wide v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    invoke-virtual {v3, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1009
    const/16 v1, 0x19

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v7

    .line 1013
    :goto_1
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1016
    :goto_2
    :try_start_3
    iget-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->isCached:Z

    if-eqz v1, :cond_2

    .line 1017
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1, p0}, Lcom/mysql/jdbc/MySQLConnection;->decachePreparedStatement(Lcom/mysql/jdbc/ServerPreparedStatement;)V

    .line 1018
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->isCached:Z

    .line 1020
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->realClose(ZZ)V

    .line 1022
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->clearParametersInternal(Z)V

    .line 1023
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    .line 1025
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterFields:[Lcom/mysql/jdbc/Field;

    .line 1026
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->resultFields:[Lcom/mysql/jdbc/Field;

    .line 1028
    if-eqz v0, :cond_3

    .line 1029
    throw v0

    .line 1032
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1013
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 1032
    :cond_3
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1010
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    move-object v0, v7

    goto :goto_2
.end method

.method protected resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2123
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2125
    :try_start_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->reset()V

    .line 2127
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    iget v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    if-eqz v0, :cond_1

    .line 2135
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isSet:Z

    .line 2136
    iget v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->numberOfExecutions:I

    int-to-long v2, v0

    iput-wide v2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->boundBeforeExecutionNum:J

    .line 2137
    monitor-exit v1

    .line 2138
    return-void

    .line 2129
    :cond_1
    iget v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    if-eq v0, p2, :cond_0

    .line 2130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->sendTypesToServer:Z

    .line 2131
    iput p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    goto :goto_0

    .line 2137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setArray(ILjava/sql/Array;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1628
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public setAsciiStream(ILjava/io/InputStream;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1636
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1637
    if-nez p2, :cond_0

    .line 1638
    const/4 v0, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    .line 1652
    :goto_0
    monitor-exit v1

    .line 1653
    return-void

    .line 1640
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1641
    const/16 v2, 0xfc

    invoke-virtual {p0, v0, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1643
    iput-object p2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 1644
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    .line 1646
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1647
    int-to-long v2, p3

    iput-wide v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    goto :goto_0

    .line 1652
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1649
    :cond_1
    const-wide/16 v2, -0x1

    :try_start_1
    iput-wide v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setBigDecimal(ILjava/math/BigDecimal;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1662
    if-nez p2, :cond_0

    .line 1663
    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    .line 1676
    :goto_0
    monitor-exit v1

    .line 1677
    return-void

    .line 1666
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1668
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-interface {v2, v3, v4, v5}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1669
    const/16 v2, 0xf6

    invoke-virtual {p0, v0, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1674
    :goto_1
    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->consistentToString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mysql/jdbc/StringUtils;->fixDecimalExponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    goto :goto_0

    .line 1676
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1671
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->stringTypeCode:I

    invoke-virtual {p0, v0, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setBinaryStream(ILjava/io/InputStream;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1684
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1686
    if-nez p2, :cond_0

    .line 1687
    const/4 v0, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    .line 1701
    :goto_0
    monitor-exit v1

    .line 1702
    return-void

    .line 1689
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1690
    const/16 v2, 0xfc

    invoke-virtual {p0, v0, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1692
    iput-object p2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 1693
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    .line 1695
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1696
    int-to-long v2, p3

    iput-wide v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    goto :goto_0

    .line 1701
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1698
    :cond_1
    const-wide/16 v2, -0x1

    :try_start_1
    iput-wide v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setBlob(ILjava/sql/Blob;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1709
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1711
    if-nez p2, :cond_0

    .line 1712
    const/4 v0, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    .line 1726
    :goto_0
    monitor-exit v1

    .line 1727
    return-void

    .line 1714
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1715
    const/16 v2, 0xfc

    invoke-virtual {p0, v0, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1717
    iput-object p2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 1718
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    .line 1720
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1721
    invoke-interface {p2}, Ljava/sql/Blob;->length()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    goto :goto_0

    .line 1726
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1723
    :cond_1
    const-wide/16 v2, -0x1

    :try_start_1
    iput-wide v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setBoolean(IZ)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1734
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->setByte(IB)V

    .line 1735
    return-void

    .line 1734
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setByte(IB)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1742
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1744
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1745
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1747
    int-to-long v1, p2

    iput-wide v1, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    .line 1748
    return-void
.end method

.method public setBytes(I[B)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1755
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1757
    if-nez p2, :cond_0

    .line 1758
    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    .line 1765
    :goto_0
    return-void

    .line 1760
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1761
    const/16 v1, 0xfd

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1763
    iput-object p2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setCharacterStream(ILjava/io/Reader;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1772
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1774
    if-nez p2, :cond_0

    .line 1775
    const/4 v0, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    .line 1789
    :goto_0
    monitor-exit v1

    .line 1790
    return-void

    .line 1777
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1778
    const/16 v2, 0xfc

    invoke-virtual {p0, v0, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1780
    iput-object p2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 1781
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    .line 1783
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1784
    int-to-long v2, p3

    iput-wide v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    goto :goto_0

    .line 1789
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1786
    :cond_1
    const-wide/16 v2, -0x1

    :try_start_1
    iput-wide v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setClob(ILjava/sql/Clob;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1797
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1799
    if-nez p2, :cond_0

    .line 1800
    const/4 v0, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    .line 1814
    :goto_0
    monitor-exit v1

    .line 1815
    return-void

    .line 1802
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1803
    const/16 v2, 0xfc

    invoke-virtual {p0, v0, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1805
    invoke-interface {p2}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v2

    iput-object v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 1806
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    .line 1808
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1809
    invoke-interface {p2}, Ljava/sql/Clob;->length()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    goto :goto_0

    .line 1814
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1811
    :cond_1
    const-wide/16 v2, -0x1

    :try_start_1
    iput-wide v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected setClosed(Z)V
    .locals 0
    .parameter

    .prologue
    .line 552
    iput-boolean p1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->isClosed:Z

    .line 553
    return-void
.end method

.method public setDate(ILjava/sql/Date;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1831
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->setDate(ILjava/sql/Date;Ljava/util/Calendar;)V

    .line 1832
    return-void
.end method

.method public setDate(ILjava/sql/Date;Ljava/util/Calendar;)V
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
    .line 1850
    if-nez p2, :cond_0

    .line 1851
    const/16 v0, 0x5b

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    .line 1858
    :goto_0
    return-void

    .line 1853
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1854
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1856
    iput-object p2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDouble(ID)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1865
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1867
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAllowNanAndInf()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/high16 v2, 0x7ff0

    cmpl-double v0, p2, v2

    if-eqz v0, :cond_0

    const-wide/high16 v2, -0x10

    cmpl-double v0, p2, v2

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1868
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' is not a valid numeric or approximate numeric value"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1877
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1873
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1874
    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1876
    iput-wide p2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->doubleBinding:D

    .line 1877
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1878
    return-void
.end method

.method public setFloat(IF)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1885
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1887
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1888
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1890
    iput p2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->floatBinding:F

    .line 1891
    return-void
.end method

.method public setInt(II)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1898
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1900
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1901
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1903
    int-to-long v1, p2

    iput-wide v1, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    .line 1904
    return-void
.end method

.method public setLong(IJ)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1911
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1913
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1914
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1916
    iput-wide p2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    .line 1917
    return-void
.end method

.method public setNull(II)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1924
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1926
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1927
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1929
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    .line 1930
    return-void
.end method

.method public setNull(IILjava/lang/String;)V
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
    .line 1937
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1939
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1940
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1942
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    .line 1943
    return-void
.end method

.method protected setOneBatchedParameterSet(Ljava/sql/PreparedStatement;ILjava/lang/Object;)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2696
    check-cast p3, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;

    iget-object v4, p3, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;->batchedParameterValues:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move v1, v2

    .line 2698
    :goto_0
    array-length v0, v4

    if-ge v1, v0, :cond_5

    .line 2699
    aget-object v0, v4, v1

    iget-boolean v0, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    if-eqz v0, :cond_0

    .line 2700
    add-int/lit8 v0, p2, 0x1

    invoke-interface {p1, p2, v2}, Ljava/sql/PreparedStatement;->setNull(II)V

    move p2, v0

    .line 2698
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2702
    :cond_0
    aget-object v0, v4, v1

    iget-boolean v0, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-eqz v0, :cond_2

    .line 2703
    aget-object v0, v4, v1

    iget-object v0, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 2705
    instance-of v3, v0, Ljava/io/InputStream;

    if-eqz v3, :cond_1

    .line 2706
    add-int/lit8 v3, p2, 0x1

    check-cast v0, Ljava/io/InputStream;

    aget-object v5, v4, v1

    iget-wide v5, v5, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    long-to-int v5, v5

    invoke-interface {p1, p2, v0, v5}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    move v0, v3

    :goto_2
    move p2, v0

    .line 2710
    goto :goto_1

    .line 2708
    :cond_1
    add-int/lit8 v3, p2, 0x1

    check-cast v0, Ljava/io/Reader;

    aget-object v5, v4, v1

    iget-wide v5, v5, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    long-to-int v5, v5

    invoke-interface {p1, p2, v0, v5}, Ljava/sql/PreparedStatement;->setCharacterStream(ILjava/io/Reader;I)V

    move v0, v3

    goto :goto_2

    .line 2712
    :cond_2
    aget-object v0, v4, v1

    iget v0, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    sparse-switch v0, :sswitch_data_0

    .line 2766
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type when re-binding parameter into batched statement for parameter index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2715
    :sswitch_0
    add-int/lit8 v0, p2, 0x1

    aget-object v3, v4, v1

    iget-wide v5, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int v3, v5

    int-to-byte v3, v3

    invoke-interface {p1, p2, v3}, Ljava/sql/PreparedStatement;->setByte(IB)V

    move p2, v0

    .line 2716
    goto :goto_1

    .line 2718
    :sswitch_1
    add-int/lit8 v0, p2, 0x1

    aget-object v3, v4, v1

    iget-wide v5, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int v3, v5

    int-to-short v3, v3

    invoke-interface {p1, p2, v3}, Ljava/sql/PreparedStatement;->setShort(IS)V

    move p2, v0

    .line 2719
    goto :goto_1

    .line 2721
    :sswitch_2
    add-int/lit8 v0, p2, 0x1

    aget-object v3, v4, v1

    iget-wide v5, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int v3, v5

    invoke-interface {p1, p2, v3}, Ljava/sql/PreparedStatement;->setInt(II)V

    move p2, v0

    .line 2722
    goto :goto_1

    .line 2724
    :sswitch_3
    add-int/lit8 v0, p2, 0x1

    aget-object v3, v4, v1

    iget-wide v5, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    invoke-interface {p1, p2, v5, v6}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    move p2, v0

    .line 2725
    goto :goto_1

    .line 2727
    :sswitch_4
    add-int/lit8 v0, p2, 0x1

    aget-object v3, v4, v1

    iget v3, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->floatBinding:F

    invoke-interface {p1, p2, v3}, Ljava/sql/PreparedStatement;->setFloat(IF)V

    move p2, v0

    .line 2728
    goto/16 :goto_1

    .line 2730
    :sswitch_5
    add-int/lit8 v0, p2, 0x1

    aget-object v3, v4, v1

    iget-wide v5, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->doubleBinding:D

    invoke-interface {p1, p2, v5, v6}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    move p2, v0

    .line 2731
    goto/16 :goto_1

    .line 2733
    :sswitch_6
    add-int/lit8 v3, p2, 0x1

    aget-object v0, v4, v1

    iget-object v0, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/sql/Time;

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setTime(ILjava/sql/Time;)V

    move p2, v3

    .line 2734
    goto/16 :goto_1

    .line 2736
    :sswitch_7
    add-int/lit8 v3, p2, 0x1

    aget-object v0, v4, v1

    iget-object v0, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/sql/Date;

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setDate(ILjava/sql/Date;)V

    move p2, v3

    .line 2737
    goto/16 :goto_1

    .line 2740
    :sswitch_8
    add-int/lit8 v3, p2, 0x1

    aget-object v0, v4, v1

    iget-object v0, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/sql/Timestamp;

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    move p2, v3

    .line 2741
    goto/16 :goto_1

    .line 2747
    :sswitch_9
    aget-object v0, v4, v1

    iget-object v0, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 2749
    instance-of v3, v0, [B

    if-eqz v3, :cond_4

    .line 2750
    check-cast v0, [B

    check-cast v0, [B

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2757
    :goto_3
    instance-of v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 2758
    check-cast v0, Lcom/mysql/jdbc/ServerPreparedStatement;

    invoke-virtual {v0, p2, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 2759
    aget-object v3, v4, v1

    iget v3, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    iput v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    .line 2762
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 2764
    goto/16 :goto_1

    .line 2752
    :cond_4
    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_3

    .line 2773
    :cond_5
    return p2

    .line 2712
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x7 -> :sswitch_8
        0x8 -> :sswitch_3
        0xa -> :sswitch_7
        0xb -> :sswitch_6
        0xc -> :sswitch_8
        0xf -> :sswitch_9
        0xf6 -> :sswitch_9
        0xfd -> :sswitch_9
        0xfe -> :sswitch_9
    .end sparse-switch
.end method

.method public setPoolable(Z)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2802
    if-nez p1, :cond_0

    .line 2803
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, p0}, Lcom/mysql/jdbc/MySQLConnection;->decachePreparedStatement(Lcom/mysql/jdbc/ServerPreparedStatement;)V

    .line 2805
    :cond_0
    invoke-super {p0, p1}, Lcom/mysql/jdbc/PreparedStatement;->setPoolable(Z)V

    .line 2806
    return-void
.end method

.method public setRef(ILjava/sql/Ref;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1950
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public setShort(IS)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1958
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1960
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1961
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1963
    int-to-long v1, p2

    iput-wide v1, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    .line 1964
    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1971
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1973
    if-nez p2, :cond_0

    .line 1974
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    .line 1981
    :goto_0
    return-void

    .line 1976
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 1977
    iget v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->stringTypeCode:I

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1979
    iput-object p2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setTime(ILjava/sql/Time;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1996
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1997
    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ServerPreparedStatement;->setTimeInternal(ILjava/sql/Time;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V

    .line 1998
    monitor-exit v6

    .line 1999
    return-void

    .line 1998
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTime(ILjava/sql/Time;Ljava/util/Calendar;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2018
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 2019
    :try_start_0
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ServerPreparedStatement;->setTimeInternal(ILjava/sql/Time;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V

    .line 2020
    monitor-exit v6

    .line 2021
    return-void

    .line 2020
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimestamp(ILjava/sql/Timestamp;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2070
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 2071
    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ServerPreparedStatement;->setTimestampInternal(ILjava/sql/Timestamp;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V

    .line 2072
    monitor-exit v6

    .line 2073
    return-void

    .line 2072
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2091
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 2092
    :try_start_0
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ServerPreparedStatement;->setTimestampInternal(ILjava/sql/Timestamp;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V

    .line 2093
    monitor-exit v6

    .line 2094
    return-void

    .line 2093
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setURL(ILjava/net/URL;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2164
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 2166
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->setString(ILjava/lang/String;)V

    .line 2167
    return-void
.end method

.method public setUnicodeStream(ILjava/io/InputStream;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2154
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 2156
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2556
    const-string v0, "com.mysql.jdbc.ServerPreparedStatement["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2557
    iget-wide v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2558
    const-string v0, "] - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2561
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->asSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2567
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2562
    :catch_0
    move-exception v0

    .line 2563
    const-string v2, "ServerPreparedStatement.6"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2564
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
