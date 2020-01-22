.class public Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;
.super Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;
.source "PreparedStatementWrapper.java"

# interfaces
.implements Ljava/sql/PreparedStatement;


# static fields
.field private static final JDBC_4_PREPARED_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 55
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :try_start_0
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.mysql.jdbc.jdbc2.optional.JDBC42PreparedStatementWrapper"

    .line 59
    :goto_0
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

    const-class v3, Ljava/sql/PreparedStatement;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->JDBC_4_PREPARED_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    .line 71
    :goto_1
    return-void

    .line 57
    :cond_0
    const-string v0, "com.mysql.jdbc.jdbc2.optional.JDBC4PreparedStatementWrapper"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 63
    :catch_1
    move-exception v0

    .line 64
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 65
    :catch_2
    move-exception v0

    .line 66
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 69
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->JDBC_4_PREPARED_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    goto :goto_1
.end method

.method constructor <init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/Statement;)V

    .line 84
    return-void
.end method

.method protected static getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;
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
    .line 74
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)V

    .line 78
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->JDBC_4_PREPARED_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

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

    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    goto :goto_0
.end method


# virtual methods
.method public addBatch()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->addBatch()V

    .line 495
    :goto_0
    return-void

    .line 490
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public clearParameters()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->clearParameters()V

    .line 507
    :goto_0
    return-void

    .line 502
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public execute()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z

    move-result v0

    .line 520
    :goto_0
    return v0

    .line 515
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 520
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public executeLargeUpdate()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 914
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->executeLargeUpdate()J

    move-result-wide v0

    .line 923
    :goto_0
    return-wide v0

    .line 918
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :catch_0
    move-exception v0

    .line 920
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 923
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public executeQuery()Ljava/sql/ResultSet;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 525
    const/4 v2, 0x0

    .line 527
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-nez v1, :cond_0

    .line 528
    const-string v1, "No operations allowed after statement closed"

    const-string v3, "S1000"

    iget-object v4, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :catch_0
    move-exception v1

    .line 534
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 537
    :goto_0
    return-object v2

    .line 530
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v1, Ljava/sql/PreparedStatement;

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    .line 531
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-object v1, v0

    invoke-interface {v1, p0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setWrapperStatement(Ljava/sql/Statement;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public executeUpdate()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v0

    .line 551
    :goto_0
    return v0

    .line 546
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 551
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    .line 289
    :goto_0
    return-object v0

    .line 284
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 289
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParameterMetaData()Ljava/sql/ParameterMetaData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getParameterMetaData()Ljava/sql/ParameterMetaData;

    move-result-object v0

    .line 363
    :goto_0
    return-object v0

    .line 358
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 363
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setArray(ILjava/sql/Array;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setArray(ILjava/sql/Array;)V

    .line 96
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setAsciiStream(ILjava/io/InputStream;I)V
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
    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;I)V

    .line 108
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setBigDecimal(ILjava/math/BigDecimal;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    .line 120
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setBinaryStream(ILjava/io/InputStream;I)V
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
    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 132
    :goto_0
    return-void

    .line 127
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setBlob(ILjava/sql/Blob;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBlob(ILjava/sql/Blob;)V

    .line 144
    :goto_0
    return-void

    .line 139
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setBoolean(IZ)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 156
    :goto_0
    return-void

    .line 151
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

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
    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setByte(IB)V

    .line 168
    :goto_0
    return-void

    .line 163
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setBytes(I[B)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 180
    :goto_0
    return-void

    .line 175
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setCharacterStream(ILjava/io/Reader;I)V
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
    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setCharacterStream(ILjava/io/Reader;I)V

    .line 192
    :goto_0
    return-void

    .line 187
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setClob(ILjava/sql/Clob;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setClob(ILjava/sql/Clob;)V

    .line 204
    :goto_0
    return-void

    .line 199
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setDate(ILjava/sql/Date;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setDate(ILjava/sql/Date;)V

    .line 216
    :goto_0
    return-void

    .line 211
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setDate(ILjava/sql/Date;Ljava/util/Calendar;)V
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
    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setDate(ILjava/sql/Date;Ljava/util/Calendar;)V

    .line 228
    :goto_0
    return-void

    .line 223
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setDouble(ID)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    .line 240
    :goto_0
    return-void

    .line 235
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setFloat(IF)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setFloat(IF)V

    .line 252
    :goto_0
    return-void

    .line 247
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
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
    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 264
    :goto_0
    return-void

    .line 259
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setLong(IJ)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 276
    :goto_0
    return-void

    .line 271
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setNull(II)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNull(II)V

    .line 302
    :goto_0
    return-void

    .line 297
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setNull(IILjava/lang/String;)V
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
    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setNull(IILjava/lang/String;)V

    .line 314
    :goto_0
    return-void

    .line 309
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setObject(ILjava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;)V

    .line 326
    :goto_0
    return-void

    .line 321
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setObject(ILjava/lang/Object;I)V
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
    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;I)V

    .line 338
    :goto_0
    return-void

    .line 333
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setObject(ILjava/lang/Object;II)V
    .locals 3
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
    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;II)V

    .line 350
    :goto_0
    return-void

    .line 345
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setRef(ILjava/sql/Ref;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setRef(ILjava/sql/Ref;)V

    .line 376
    :goto_0
    return-void

    .line 371
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
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
    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setShort(IS)V

    .line 388
    :goto_0
    return-void

    .line 383
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setString(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 400
    :goto_0
    return-void

    .line 395
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setTime(ILjava/sql/Time;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setTime(ILjava/sql/Time;)V

    .line 412
    :goto_0
    return-void

    .line 407
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setTime(ILjava/sql/Time;Ljava/util/Calendar;)V
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
    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setTime(ILjava/sql/Time;Ljava/util/Calendar;)V

    .line 424
    :goto_0
    return-void

    .line 419
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setTimestamp(ILjava/sql/Timestamp;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    .line 436
    :goto_0
    return-void

    .line 431
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V
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
    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V

    .line 448
    :goto_0
    return-void

    .line 443
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setURL(ILjava/net/URL;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setURL(ILjava/net/URL;)V

    .line 460
    :goto_0
    return-void

    .line 455
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setUnicodeStream(ILjava/io/InputStream;I)V
    .locals 3
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
    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setUnicodeStream(ILjava/io/InputStream;I)V

    .line 483
    :goto_0
    return-void

    .line 478
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 559
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->asSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 562
    :catch_0
    move-exception v0

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXCEPTION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
