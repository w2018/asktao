.class public Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;
.super Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;
.source "CallableStatementWrapper.java"

# interfaces
.implements Ljava/sql/CallableStatement;


# static fields
.field private static final JDBC_4_CALLABLE_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
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
    .line 54
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :try_start_0
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.mysql.jdbc.jdbc2.optional.JDBC42CallableStatementWrapper"

    .line 58
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

    const-class v3, Ljava/sql/CallableStatement;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->JDBC_4_CALLABLE_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    .line 70
    :goto_1
    return-void

    .line 56
    :cond_0
    const-string v0, "com.mysql.jdbc.jdbc2.optional.JDBC4CallableStatementWrapper"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 62
    :catch_1
    move-exception v0

    .line 63
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 64
    :catch_2
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 68
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->JDBC_4_CALLABLE_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    goto :goto_1
.end method

.method public constructor <init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/CallableStatement;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)V

    .line 88
    return-void
.end method

.method protected static getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/CallableStatement;)Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;
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
    .line 73
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/CallableStatement;)V

    .line 77
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->JDBC_4_CALLABLE_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

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

    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;

    goto :goto_0
.end method


# virtual methods
.method public getArray(I)Ljava/sql/Array;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 494
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getArray(I)Ljava/sql/Array;

    move-result-object v0

    .line 502
    :goto_0
    return-object v0

    .line 497
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 502
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getArray(Ljava/lang/String;)Ljava/sql/Array;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1418
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getArray(Ljava/lang/String;)Ljava/sql/Array;

    move-result-object v0

    .line 1426
    :goto_0
    return-object v0

    .line 1421
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1423
    :catch_0
    move-exception v0

    .line 1424
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1426
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object v0

    .line 410
    :goto_0
    return-object v0

    .line 404
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 410
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBigDecimal(II)Ljava/math/BigDecimal;
    .locals 3
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
    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 301
    :goto_0
    return-object v0

    .line 295
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 301
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1325
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1334
    :goto_0
    return-object v0

    .line 1328
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    :catch_0
    move-exception v0

    .line 1331
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1334
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBlob(I)Ljava/sql/Blob;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getBlob(I)Ljava/sql/Blob;

    move-result-object v0

    .line 466
    :goto_0
    return-object v0

    .line 460
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 466
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBlob(Ljava/lang/String;)Ljava/sql/Blob;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1381
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getBlob(Ljava/lang/String;)Ljava/sql/Blob;

    move-result-object v0

    .line 1390
    :goto_0
    return-object v0

    .line 1384
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1386
    :catch_0
    move-exception v0

    .line 1387
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1390
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoolean(I)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getBoolean(I)Z

    move-result v0

    .line 177
    :goto_0
    return v0

    .line 171
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 177
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1097
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1106
    :goto_0
    return v0

    .line 1100
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    :catch_0
    move-exception v0

    .line 1103
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1106
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getByte(I)B
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getByte(I)B

    move-result v0

    .line 196
    :goto_0
    return v0

    .line 190
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 196
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1116
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getByte(Ljava/lang/String;)B

    move-result v0

    .line 1125
    :goto_0
    return v0

    .line 1119
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1121
    :catch_0
    move-exception v0

    .line 1122
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1125
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBytes(I)[B
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getBytes(I)[B

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    .line 314
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 320
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1230
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1239
    :goto_0
    return-object v0

    .line 1233
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    :catch_0
    move-exception v0

    .line 1236
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1239
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClob(I)Ljava/sql/Clob;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getClob(I)Ljava/sql/Clob;

    move-result-object v0

    .line 484
    :goto_0
    return-object v0

    .line 479
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :catch_0
    move-exception v0

    .line 482
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 484
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClob(Ljava/lang/String;)Ljava/sql/Clob;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1400
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getClob(Ljava/lang/String;)Ljava/sql/Clob;

    move-result-object v0

    .line 1408
    :goto_0
    return-object v0

    .line 1403
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1405
    :catch_0
    move-exception v0

    .line 1406
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1408
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDate(I)Ljava/sql/Date;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getDate(I)Ljava/sql/Date;

    move-result-object v0

    .line 334
    :goto_0
    return-object v0

    .line 328
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 334
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDate(ILjava/util/Calendar;)Ljava/sql/Date;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    .line 520
    :goto_0
    return-object v0

    .line 515
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :catch_0
    move-exception v0

    .line 518
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 520
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDate(Ljava/lang/String;)Ljava/sql/Date;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1249
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getDate(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v0

    .line 1258
    :goto_0
    return-object v0

    .line 1252
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1254
    :catch_0
    move-exception v0

    .line 1255
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1258
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1436
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1437
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    .line 1444
    :goto_0
    return-object v0

    .line 1439
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1441
    :catch_0
    move-exception v0

    .line 1442
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1444
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getDouble(I)D

    move-result-wide v0

    .line 286
    :goto_0
    return-wide v0

    .line 280
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 286
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1211
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 1220
    :goto_0
    return-wide v0

    .line 1214
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    :catch_0
    move-exception v0

    .line 1217
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1220
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getFloat(I)F
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getFloat(I)F

    move-result v0

    .line 272
    :goto_0
    return v0

    .line 266
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 272
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1192
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 1201
    :goto_0
    return v0

    .line 1195
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1197
    :catch_0
    move-exception v0

    .line 1198
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1201
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getInt(I)I

    move-result v0

    .line 234
    :goto_0
    return v0

    .line 228
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 234
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1154
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1163
    :goto_0
    return v0

    .line 1157
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1159
    :catch_0
    move-exception v0

    .line 1160
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1163
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getLong(I)J

    move-result-wide v0

    .line 253
    :goto_0
    return-wide v0

    .line 247
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 253
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1173
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1182
    :goto_0
    return-wide v0

    .line 1176
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    :catch_0
    move-exception v0

    .line 1179
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1182
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    .line 385
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 391
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getObject(ILjava/util/Map;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getObject(ILjava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    .line 428
    :goto_0
    return-object v0

    .line 423
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 428
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1306
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1315
    :goto_0
    return-object v0

    .line 1309
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1311
    :catch_0
    move-exception v0

    .line 1312
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1315
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getObject(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1344
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getObject(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    .line 1352
    :goto_0
    return-object v0

    .line 1347
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1349
    :catch_0
    move-exception v0

    .line 1350
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1352
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRef(I)Ljava/sql/Ref;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getRef(I)Ljava/sql/Ref;

    move-result-object v0

    .line 447
    :goto_0
    return-object v0

    .line 441
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 447
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRef(Ljava/lang/String;)Ljava/sql/Ref;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1362
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getRef(Ljava/lang/String;)Ljava/sql/Ref;

    move-result-object v0

    .line 1371
    :goto_0
    return-object v0

    .line 1365
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1367
    :catch_0
    move-exception v0

    .line 1368
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1371
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getShort(I)S

    move-result v0

    .line 215
    :goto_0
    return v0

    .line 209
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 215
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1135
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getShort(Ljava/lang/String;)S

    move-result v0

    .line 1144
    :goto_0
    return v0

    .line 1138
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1140
    :catch_0
    move-exception v0

    .line 1141
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1144
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 153
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 158
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1079
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1087
    :goto_0
    return-object v0

    .line 1082
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1084
    :catch_0
    move-exception v0

    .line 1085
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1087
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTime(I)Ljava/sql/Time;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getTime(I)Ljava/sql/Time;

    move-result-object v0

    .line 353
    :goto_0
    return-object v0

    .line 347
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 353
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTime(ILjava/util/Calendar;)Ljava/sql/Time;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getTime(ILjava/util/Calendar;)Ljava/sql/Time;

    move-result-object v0

    .line 538
    :goto_0
    return-object v0

    .line 533
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :catch_0
    move-exception v0

    .line 536
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 538
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTime(Ljava/lang/String;)Ljava/sql/Time;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1268
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getTime(Ljava/lang/String;)Ljava/sql/Time;

    move-result-object v0

    .line 1277
    :goto_0
    return-object v0

    .line 1271
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    :catch_0
    move-exception v0

    .line 1274
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1277
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTime(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Time;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1454
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1455
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getTime(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Time;

    move-result-object v0

    .line 1462
    :goto_0
    return-object v0

    .line 1457
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1459
    :catch_0
    move-exception v0

    .line 1460
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1462
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object v0

    .line 372
    :goto_0
    return-object v0

    .line 366
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 372
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object v0

    .line 556
    :goto_0
    return-object v0

    .line 551
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :catch_0
    move-exception v0

    .line 554
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 556
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1287
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1288
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v0

    .line 1296
    :goto_0
    return-object v0

    .line 1290
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1292
    :catch_0
    move-exception v0

    .line 1293
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1296
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1472
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object v0

    .line 1480
    :goto_0
    return-object v0

    .line 1475
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1477
    :catch_0
    move-exception v0

    .line 1478
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1480
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getURL(I)Ljava/net/URL;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 634
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getURL(I)Ljava/net/URL;

    move-result-object v0

    .line 643
    :goto_0
    return-object v0

    .line 637
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    :catch_0
    move-exception v0

    .line 640
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 643
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1490
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 1499
    :goto_0
    return-object v0

    .line 1493
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1495
    :catch_0
    move-exception v0

    .line 1496
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1499
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerOutParameter(II)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->registerOutParameter(II)V

    .line 105
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public registerOutParameter(III)V
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
    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->registerOutParameter(III)V

    .line 122
    :goto_0
    return-void

    .line 117
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public registerOutParameter(IILjava/lang/String;)V
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
    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->registerOutParameter(IILjava/lang/String;)V

    .line 574
    :goto_0
    return-void

    .line 569
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :catch_0
    move-exception v0

    .line 572
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public registerOutParameter(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 583
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->registerOutParameter(Ljava/lang/String;I)V

    .line 591
    :goto_0
    return-void

    .line 586
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :catch_0
    move-exception v0

    .line 589
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public registerOutParameter(Ljava/lang/String;II)V
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
    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->registerOutParameter(Ljava/lang/String;II)V

    .line 608
    :goto_0
    return-void

    .line 603
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :catch_0
    move-exception v0

    .line 606
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public registerOutParameter(Ljava/lang/String;ILjava/lang/String;)V
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
    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->registerOutParameter(Ljava/lang/String;ILjava/lang/String;)V

    .line 625
    :goto_0
    return-void

    .line 620
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :catch_0
    move-exception v0

    .line 623
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V
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
    .line 908
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V

    .line 917
    :goto_0
    return-void

    .line 911
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    :catch_0
    move-exception v0

    .line 914
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V

    .line 814
    :goto_0
    return-void

    .line 809
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :catch_0
    move-exception v0

    .line 812
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V
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
    .line 926
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V

    .line 934
    :goto_0
    return-void

    .line 929
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :catch_0
    move-exception v0

    .line 932
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 687
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setBoolean(Ljava/lang/String;Z)V

    .line 695
    :goto_0
    return-void

    .line 690
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :catch_0
    move-exception v0

    .line 693
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setByte(Ljava/lang/String;B)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setByte(Ljava/lang/String;B)V

    .line 712
    :goto_0
    return-void

    .line 707
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    :catch_0
    move-exception v0

    .line 710
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setBytes(Ljava/lang/String;[B)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 840
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setBytes(Ljava/lang/String;[B)V

    .line 848
    :goto_0
    return-void

    .line 843
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    :catch_0
    move-exception v0

    .line 846
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V
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
    .line 994
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V

    .line 1002
    :goto_0
    return-void

    .line 997
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setDate(Ljava/lang/String;Ljava/sql/Date;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 857
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setDate(Ljava/lang/String;Ljava/sql/Date;)V

    .line 865
    :goto_0
    return-void

    .line 860
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    :catch_0
    move-exception v0

    .line 863
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setDate(Ljava/lang/String;Ljava/sql/Date;Ljava/util/Calendar;)V
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
    .line 1011
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setDate(Ljava/lang/String;Ljava/sql/Date;Ljava/util/Calendar;)V

    .line 1019
    :goto_0
    return-void

    .line 1014
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setDouble(Ljava/lang/String;D)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 789
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setDouble(Ljava/lang/String;D)V

    .line 797
    :goto_0
    return-void

    .line 792
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    :catch_0
    move-exception v0

    .line 795
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setFloat(Ljava/lang/String;F)V

    .line 780
    :goto_0
    return-void

    .line 775
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    :catch_0
    move-exception v0

    .line 778
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 738
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setInt(Ljava/lang/String;I)V

    .line 746
    :goto_0
    return-void

    .line 741
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :catch_0
    move-exception v0

    .line 744
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setLong(Ljava/lang/String;J)V

    .line 763
    :goto_0
    return-void

    .line 758
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    :catch_0
    move-exception v0

    .line 761
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setNull(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setNull(Ljava/lang/String;I)V

    .line 678
    :goto_0
    return-void

    .line 673
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    :catch_0
    move-exception v0

    .line 676
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setNull(Ljava/lang/String;ILjava/lang/String;)V
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
    .line 1062
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setNull(Ljava/lang/String;ILjava/lang/String;)V

    .line 1070
    :goto_0
    return-void

    .line 1065
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 977
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 985
    :goto_0
    return-void

    .line 980
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    :catch_0
    move-exception v0

    .line 983
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;I)V
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
    .line 960
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setObject(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 968
    :goto_0
    return-void

    .line 963
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    :catch_0
    move-exception v0

    .line 966
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;II)V
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
    .line 943
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/CallableStatement;->setObject(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 951
    :goto_0
    return-void

    .line 946
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    :catch_0
    move-exception v0

    .line 949
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setShort(Ljava/lang/String;S)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 721
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setShort(Ljava/lang/String;S)V

    .line 729
    :goto_0
    return-void

    .line 724
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    :catch_0
    move-exception v0

    .line 727
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 823
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    :goto_0
    return-void

    .line 826
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :catch_0
    move-exception v0

    .line 829
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setTime(Ljava/lang/String;Ljava/sql/Time;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 874
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setTime(Ljava/lang/String;Ljava/sql/Time;)V

    .line 882
    :goto_0
    return-void

    .line 877
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    :catch_0
    move-exception v0

    .line 880
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setTime(Ljava/lang/String;Ljava/sql/Time;Ljava/util/Calendar;)V
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
    .line 1028
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setTime(Ljava/lang/String;Ljava/sql/Time;Ljava/util/Calendar;)V

    .line 1036
    :goto_0
    return-void

    .line 1031
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1033
    :catch_0
    move-exception v0

    .line 1034
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 891
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;)V

    .line 899
    :goto_0
    return-void

    .line 894
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    :catch_0
    move-exception v0

    .line 897
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;Ljava/util/Calendar;)V
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
    .line 1045
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;Ljava/util/Calendar;)V

    .line 1053
    :goto_0
    return-void

    .line 1048
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public setURL(Ljava/lang/String;Ljava/net/URL;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 653
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setURL(Ljava/lang/String;Ljava/net/URL;)V

    .line 661
    :goto_0
    return-void

    .line 656
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :catch_0
    move-exception v0

    .line 659
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    goto :goto_0
.end method

.method public wasNull()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0}, Ljava/sql/CallableStatement;->wasNull()Z

    move-result v0

    .line 140
    :goto_0
    return v0

    .line 134
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 140
    const/4 v0, 0x0

    goto :goto_0
.end method
