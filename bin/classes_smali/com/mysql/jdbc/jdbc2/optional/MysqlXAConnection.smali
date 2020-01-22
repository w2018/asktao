.class public Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;
.super Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
.source "MysqlXAConnection.java"

# interfaces
.implements Ljavax/sql/XAConnection;
.implements Ljavax/transaction/xa/XAResource;


# static fields
.field private static final JDBC_4_XA_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static final MAX_COMMAND_LENGTH:I = 0x12c

.field private static final MYSQL_ERROR_CODES_TO_XA_ERROR_CODES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private log:Lcom/mysql/jdbc/log/Log;

.field protected logXaCommands:Z

.field private underlyingConnection:Lcom/mysql/jdbc/Connection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    const/16 v1, 0x575

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/16 v1, 0x576

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const/16 v1, 0x577

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const/16 v1, 0x578

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, -0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const/16 v1, 0x579

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const/16 v1, 0x57a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/16 v1, 0x5a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/16 v1, 0x64d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x6a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const/16 v1, 0x64e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->MYSQL_ERROR_CODES_TO_XA_ERROR_CODES:Ljava/util/Map;

    .line 92
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    :try_start_0
    const-string v0, "com.mysql.jdbc.jdbc2.optional.JDBC4MysqlXAConnection"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/mysql/jdbc/Connection;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->JDBC_4_XA_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 106
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 98
    :catch_1
    move-exception v0

    .line 99
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 100
    :catch_2
    move-exception v0

    .line 101
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 104
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->JDBC_4_XA_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/mysql/jdbc/Connection;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;-><init>(Lcom/mysql/jdbc/Connection;)V

    .line 122
    iput-object p1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    .line 123
    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->log:Lcom/mysql/jdbc/log/Log;

    .line 124
    iput-boolean p2, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->logXaCommands:Z

    .line 125
    return-void
.end method

.method private static appendXid(Ljava/lang/StringBuilder;Ljavax/transaction/xa/Xid;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x2c

    .line 590
    invoke-interface {p1}, Ljavax/transaction/xa/Xid;->getGlobalTransactionId()[B

    move-result-object v0

    .line 591
    invoke-interface {p1}, Ljavax/transaction/xa/Xid;->getBranchQualifier()[B

    move-result-object v1

    .line 593
    if-eqz v0, :cond_0

    .line 594
    invoke-static {p0, v0}, Lcom/mysql/jdbc/StringUtils;->appendAsHex(Ljava/lang/StringBuilder;[B)V

    .line 597
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 598
    if-eqz v1, :cond_1

    .line 599
    invoke-static {p0, v1}, Lcom/mysql/jdbc/StringUtils;->appendAsHex(Ljava/lang/StringBuilder;[B)V

    .line 602
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 603
    invoke-interface {p1}, Ljavax/transaction/xa/Xid;->getFormatId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/mysql/jdbc/StringUtils;->appendAsHex(Ljava/lang/StringBuilder;I)V

    .line 604
    return-void
.end method

.method private dispatchCommand(Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .prologue
    .line 552
    const/4 v1, 0x0

    .line 555
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->logXaCommands:Z

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->log:Lcom/mysql/jdbc/log/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing XA statement: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/log/Log;->logDebug(Ljava/lang/Object;)V

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v1

    .line 562
    invoke-interface {v1, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 564
    invoke-interface {v1}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 570
    if-eqz v1, :cond_1

    .line 572
    :try_start_1
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 566
    :cond_1
    :goto_0
    return-object v0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    :try_start_2
    invoke-static {v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->mapXAExceptionFromSQLException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 570
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 572
    :try_start_3
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    .line 570
    :cond_2
    :goto_1
    throw v0

    .line 573
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method protected static getInstance(Lcom/mysql/jdbc/Connection;Z)Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;-><init>(Lcom/mysql/jdbc/Connection;Z)V

    .line 113
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->JDBC_4_XA_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;

    goto :goto_0
.end method

.method protected static mapXAExceptionFromSQLException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 580
    sget-object v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->MYSQL_ERROR_CODES_TO_XA_ERROR_CODES:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 582
    if-eqz v0, :cond_0

    .line 583
    new-instance v1, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, v3}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/transaction/xa/XAException;

    .line 586
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;

    const/4 v1, -0x7

    const-string v2, "MysqlXAConnection.003"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/transaction/xa/XAException;

    goto :goto_0
.end method

.method protected static recover(Ljava/sql/Connection;I)[Ljavax/transaction/xa/Xid;
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 269
    const/high16 v3, 0x100

    and-int/2addr v3, p1

    if-lez v3, :cond_0

    move v3, v1

    .line 270
    :goto_0
    const/high16 v4, 0x80

    and-int/2addr v4, p1

    if-lez v4, :cond_1

    .line 272
    :goto_1
    if-nez v3, :cond_2

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 273
    new-instance v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;

    const/4 v1, -0x5

    const-string v3, "MysqlXAConnection.001"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    move v3, v0

    .line 269
    goto :goto_0

    :cond_1
    move v1, v0

    .line 270
    goto :goto_1

    .line 282
    :cond_2
    if-nez v3, :cond_3

    .line 283
    new-array v0, v0, [Ljavax/transaction/xa/Xid;

    .line 344
    :goto_2
    return-object v0

    .line 289
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 293
    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v1

    .line 295
    :try_start_1
    const-string v4, "XA RECOVER"

    invoke-interface {v1, v4}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 297
    :goto_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 298
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v4

    .line 299
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v5

    .line 300
    const/4 v6, 0x3

    invoke-interface {v2, v6}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v6

    .line 301
    const/4 v7, 0x4

    invoke-interface {v2, v7}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v7

    .line 303
    new-array v8, v5, [B

    .line 304
    new-array v9, v6, [B

    .line 306
    array-length v10, v7

    add-int v11, v5, v6

    if-eq v10, v11, :cond_6

    .line 307
    new-instance v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;

    const/16 v3, 0x69

    const-string v4, "MysqlXAConnection.002"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    :goto_4
    :try_start_2
    invoke-static {v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->mapXAExceptionFromSQLException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 318
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v2, :cond_4

    .line 320
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    .line 326
    :cond_4
    if-eqz v1, :cond_5

    .line 328
    :try_start_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_2

    .line 318
    :cond_5
    throw v0

    .line 310
    :cond_6
    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_5
    invoke-static {v7, v10, v8, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    const/4 v10, 0x0

    invoke-static {v7, v5, v9, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    new-instance v5, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;

    invoke-direct {v5, v8, v9, v4}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;-><init>([B[BI)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 318
    :cond_7
    if-eqz v2, :cond_8

    .line 320
    :try_start_6
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_3

    .line 326
    :cond_8
    if-eqz v1, :cond_9

    .line 328
    :try_start_7
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_4

    .line 335
    :cond_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 337
    new-array v1, v4, [Ljavax/transaction/xa/Xid;

    .line 338
    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    move v2, v0

    .line 340
    :goto_6
    if-ge v2, v4, :cond_a

    .line 341
    aget-object v0, v3, v2

    check-cast v0, Ljavax/transaction/xa/Xid;

    aput-object v0, v1, v2

    .line 340
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_a
    move-object v0, v1

    .line 344
    goto/16 :goto_2

    .line 321
    :catch_1
    move-exception v0

    .line 322
    invoke-static {v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->mapXAExceptionFromSQLException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object v0

    throw v0

    .line 329
    :catch_2
    move-exception v0

    .line 330
    invoke-static {v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->mapXAExceptionFromSQLException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object v0

    throw v0

    .line 321
    :catch_3
    move-exception v0

    .line 322
    invoke-static {v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->mapXAExceptionFromSQLException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object v0

    throw v0

    .line 329
    :catch_4
    move-exception v0

    .line 330
    invoke-static {v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->mapXAExceptionFromSQLException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object v0

    throw v0

    .line 318
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    .line 315
    :catch_5
    move-exception v0

    move-object v1, v2

    goto :goto_4
.end method


# virtual methods
.method public commit(Ljavax/transaction/xa/Xid;Z)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 537
    const-string v1, "XA COMMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-static {v0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->appendXid(Ljava/lang/StringBuilder;Ljavax/transaction/xa/Xid;)V

    .line 540
    if-eqz p2, :cond_0

    .line 541
    const-string v1, " ONE PHASE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->dispatchCommand(Ljava/lang/String;)Ljava/sql/ResultSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/Connection;->setInGlobalTx(Z)V

    .line 549
    return-void

    .line 547
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/Connection;->setInGlobalTx(Z)V

    throw v0
.end method

.method public end(Ljavax/transaction/xa/Xid;I)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .prologue
    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 449
    const-string v1, "XA END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-static {v0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->appendXid(Ljava/lang/StringBuilder;Ljavax/transaction/xa/Xid;)V

    .line 452
    sparse-switch p2, :sswitch_data_0

    .line 461
    new-instance v0, Ljavax/transaction/xa/XAException;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Ljavax/transaction/xa/XAException;-><init>(I)V

    throw v0

    .line 456
    :sswitch_0
    const-string v1, " SUSPEND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    :sswitch_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->dispatchCommand(Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 465
    return-void

    .line 452
    :sswitch_data_0
    .sparse-switch
        0x2000000 -> :sswitch_0
        0x4000000 -> :sswitch_1
        0x20000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public forget(Ljavax/transaction/xa/Xid;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .prologue
    .line 388
    return-void
.end method

.method public declared-synchronized getConnection()Ljava/sql/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 613
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->getConnection(ZZ)Ljava/sql/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 615
    monitor-exit p0

    return-object v0

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTransactionTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public getXAResource()Ljavax/transaction/xa/XAResource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 137
    return-object p0
.end method

.method public isSameRM(Ljavax/transaction/xa/XAResource;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .prologue
    .line 199
    instance-of v0, p1, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    check-cast p1, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;

    iget-object v1, p1, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/Connection;->isSameResource(Lcom/mysql/jdbc/Connection;)Z

    move-result v0

    .line 203
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepare(Ljavax/transaction/xa/Xid;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .prologue
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 367
    const-string v1, "XA PREPARE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-static {v0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->appendXid(Ljava/lang/StringBuilder;Ljavax/transaction/xa/Xid;)V

    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->dispatchCommand(Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public recover(I)[Ljavax/transaction/xa/Xid;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    invoke-static {v0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->recover(Ljava/sql/Connection;I)[Ljavax/transaction/xa/Xid;

    move-result-object v0

    return-object v0
.end method

.method public rollback(Ljavax/transaction/xa/Xid;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 409
    const-string v1, "XA ROLLBACK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-static {v0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->appendXid(Ljava/lang/StringBuilder;Ljavax/transaction/xa/Xid;)V

    .line 413
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->dispatchCommand(Ljava/lang/String;)Ljava/sql/ResultSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/Connection;->setInGlobalTx(Z)V

    .line 417
    return-void

    .line 415
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/Connection;->setInGlobalTx(Z)V

    throw v0
.end method

.method public setTransactionTimeout(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public start(Ljavax/transaction/xa/Xid;I)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .prologue
    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 492
    const-string v1, "XA START "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-static {v0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->appendXid(Ljava/lang/StringBuilder;Ljavax/transaction/xa/Xid;)V

    .line 495
    sparse-switch p2, :sswitch_data_0

    .line 506
    new-instance v0, Ljavax/transaction/xa/XAException;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Ljavax/transaction/xa/XAException;-><init>(I)V

    throw v0

    .line 497
    :sswitch_0
    const-string v1, " JOIN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :goto_0
    :sswitch_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->dispatchCommand(Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 511
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/Connection;->setInGlobalTx(Z)V

    .line 512
    return-void

    .line 500
    :sswitch_2
    const-string v1, " RESUME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 495
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x200000 -> :sswitch_0
        0x8000000 -> :sswitch_2
    .end sparse-switch
.end method
