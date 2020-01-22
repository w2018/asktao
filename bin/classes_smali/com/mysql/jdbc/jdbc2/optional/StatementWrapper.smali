.class public Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;
.super Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;
.source "StatementWrapper.java"

# interfaces
.implements Ljava/sql/Statement;


# static fields
.field private static final JDBC_4_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field protected wrappedConn:Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;

.field protected wrappedStmt:Ljava/sql/Statement;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 44
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    const-string v0, "com.mysql.jdbc.jdbc2.optional.JDBC4StatementWrapper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/sql/Statement;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->JDBC_4_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 58
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 50
    :catch_1
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 52
    :catch_2
    move-exception v0

    .line 53
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 56
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->JDBC_4_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/Statement;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;-><init>(Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;)V

    .line 74
    iput-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    .line 75
    iput-object p1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedConn:Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;

    .line 76
    return-void
.end method

.method protected static getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/Statement;)Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/Statement;)V

    .line 65
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->JDBC_4_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-virtual {p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;

    goto :goto_0
.end method


# virtual methods
.method public addBatch(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->addBatch(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->cancel()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public clearBatch()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->clearBatch()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 403
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public clearWarnings()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->clearWarnings()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :cond_0
    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    .line 426
    :goto_0
    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    .line 428
    return-void

    .line 422
    :catch_0
    move-exception v0

    .line 423
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    .line 426
    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    .line 425
    throw v0
.end method

.method public enableStreamingResults()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Lcom/mysql/jdbc/Statement;

    invoke-interface {v0}, Lcom/mysql/jdbc/Statement;->enableStreamingResults()V

    .line 582
    :goto_0
    return-void

    .line 577
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :catch_0
    move-exception v0

    .line 580
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    move-result v0

    .line 483
    :goto_0
    return v0

    .line 478
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 483
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;I)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1, p2}, Ljava/sql/Statement;->execute(Ljava/lang/String;I)Z

    move-result v0

    .line 441
    :goto_0
    return v0

    .line 436
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :catch_0
    move-exception v0

    .line 438
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 441
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;[I)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1, p2}, Ljava/sql/Statement;->execute(Ljava/lang/String;[I)Z

    move-result v0

    .line 455
    :goto_0
    return v0

    .line 450
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 455
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1, p2}, Ljava/sql/Statement;->execute(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    .line 469
    :goto_0
    return v0

    .line 464
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 469
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public executeBatch()[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->executeBatch()[I

    move-result-object v0

    .line 497
    :goto_0
    return-object v0

    .line 492
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 497
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public executeLargeBatch()[J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0}, Lcom/mysql/jdbc/StatementImpl;->executeLargeBatch()[J

    move-result-object v0

    .line 599
    :goto_0
    return-object v0

    .line 594
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :catch_0
    move-exception v0

    .line 596
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 599
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public executeLargeUpdate(Ljava/lang/String;)J
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 608
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/StatementImpl;->executeLargeUpdate(Ljava/lang/String;)J

    move-result-wide v0

    .line 617
    :goto_0
    return-wide v0

    .line 612
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :catch_0
    move-exception v0

    .line 614
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 617
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public executeLargeUpdate(Ljava/lang/String;I)J
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;->executeLargeUpdate(Ljava/lang/String;I)J

    move-result-wide v0

    .line 635
    :goto_0
    return-wide v0

    .line 630
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :catch_0
    move-exception v0

    .line 632
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 635
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public executeLargeUpdate(Ljava/lang/String;[I)J
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;->executeLargeUpdate(Ljava/lang/String;[I)J

    move-result-wide v0

    .line 653
    :goto_0
    return-wide v0

    .line 648
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :catch_0
    move-exception v0

    .line 650
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 653
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public executeLargeUpdate(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;->executeLargeUpdate(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 671
    :goto_0
    return-wide v0

    .line 666
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :catch_0
    move-exception v0

    .line 668
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 671
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 501
    const/4 v2, 0x0

    .line 503
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-nez v1, :cond_0

    .line 504
    const-string v1, "Statement already closed"

    const-string v3, "S1009"

    iget-object v4, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :catch_0
    move-exception v1

    .line 510
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 513
    :goto_0
    return-object v2

    .line 506
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v1, p1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 507
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-object v1, v0

    invoke-interface {v1, p0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setWrapperStatement(Ljava/sql/Statement;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public executeUpdate(Ljava/lang/String;)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    move-result v0

    .line 569
    :goto_0
    return v0

    .line 564
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :catch_0
    move-exception v0

    .line 566
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 569
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public executeUpdate(Ljava/lang/String;I)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1, p2}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;I)I

    move-result v0

    .line 527
    :goto_0
    return v0

    .line 522
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :catch_0
    move-exception v0

    .line 524
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 527
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public executeUpdate(Ljava/lang/String;[I)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1, p2}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;[I)I

    move-result v0

    .line 541
    :goto_0
    return v0

    .line 536
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 541
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public executeUpdate(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1, p2}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 555
    :goto_0
    return v0

    .line 550
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 555
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedConn:Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;

    .line 89
    :goto_0
    return-object v0

    .line 84
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 89
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFetchDirection()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getFetchDirection()I

    move-result v0

    .line 139
    :goto_0
    return v0

    .line 134
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 139
    const/16 v0, 0x3e8

    goto :goto_0
.end method

.method public getFetchSize()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getFetchSize()I

    move-result v0

    .line 165
    :goto_0
    return v0

    .line 160
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 165
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGeneratedKeys()Ljava/sql/ResultSet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getGeneratedKeys()Ljava/sql/ResultSet;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 174
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 179
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLargeMaxRows()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0}, Lcom/mysql/jdbc/StatementImpl;->getLargeMaxRows()J

    move-result-wide v0

    .line 689
    :goto_0
    return-wide v0

    .line 684
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :catch_0
    move-exception v0

    .line 686
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 689
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getLargeUpdateCount()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 698
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0}, Lcom/mysql/jdbc/StatementImpl;->getLargeUpdateCount()J

    move-result-wide v0

    .line 707
    :goto_0
    return-wide v0

    .line 702
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    :catch_0
    move-exception v0

    .line 704
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 707
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getMaxFieldSize()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getMaxFieldSize()I

    move-result v0

    .line 205
    :goto_0
    return v0

    .line 200
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 205
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxRows()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getMaxRows()I

    move-result v0

    .line 231
    :goto_0
    return v0

    .line 226
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 231
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMoreResults()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getMoreResults()Z

    move-result v0

    .line 245
    :goto_0
    return v0

    .line 240
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 245
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMoreResults(I)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->getMoreResults(I)Z

    move-result v0

    .line 259
    :goto_0
    return v0

    .line 254
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 259
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQueryTimeout()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getQueryTimeout()I

    move-result v0

    .line 285
    :goto_0
    return v0

    .line 280
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 285
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResultSet()Ljava/sql/ResultSet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v1}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v2

    .line 293
    if-eqz v2, :cond_0

    .line 294
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-object v1, v0

    invoke-interface {v1, p0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setWrapperStatement(Ljava/sql/Statement;)V

    .line 304
    :cond_0
    :goto_0
    return-object v2

    .line 299
    :cond_1
    const-string v1, "Statement already closed"

    const-string v2, "S1009"

    iget-object v3, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :catch_0
    move-exception v1

    .line 301
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 304
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getResultSetConcurrency()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getResultSetConcurrency()I

    move-result v0

    .line 318
    :goto_0
    return v0

    .line 313
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 318
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResultSetHoldability()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getResultSetHoldability()I

    move-result v0

    .line 332
    :goto_0
    return v0

    .line 327
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 332
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getResultSetType()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getResultSetType()I

    move-result v0

    .line 346
    :goto_0
    return v0

    .line 341
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 346
    const/16 v0, 0x3eb

    goto :goto_0
.end method

.method public getUpdateCount()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getUpdateCount()I

    move-result v0

    .line 360
    :goto_0
    return v0

    .line 355
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 360
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getWarnings()Ljava/sql/SQLWarning;

    move-result-object v0

    .line 374
    :goto_0
    return-object v0

    .line 369
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 374
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCursorName(Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setCursorName(Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setEscapeProcessing(Z)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setEscapeProcessing(Z)V

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setFetchDirection(I)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setFetchDirection(I)V

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setFetchSize(I)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setFetchSize(I)V

    .line 152
    :goto_0
    return-void

    .line 147
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setLargeMaxRows(J)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;->setLargeMaxRows(J)V

    .line 724
    :goto_0
    return-void

    .line 719
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    :catch_0
    move-exception v0

    .line 722
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setMaxFieldSize(I)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setMaxFieldSize(I)V

    .line 192
    :goto_0
    return-void

    .line 187
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setMaxRows(I)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setMaxRows(I)V

    .line 218
    :goto_0
    return-void

    .line 213
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setQueryTimeout(I)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setQueryTimeout(I)V

    .line 272
    :goto_0
    return-void

    .line 267
    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method
