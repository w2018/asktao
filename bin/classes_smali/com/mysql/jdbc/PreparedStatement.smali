.class public Lcom/mysql/jdbc/PreparedStatement;
.super Lcom/mysql/jdbc/StatementImpl;
.source "PreparedStatement.java"

# interfaces
.implements Ljava/sql/PreparedStatement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;,
        Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;,
        Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;,
        Lcom/mysql/jdbc/PreparedStatement$ParseInfo;,
        Lcom/mysql/jdbc/PreparedStatement$EndPoint;,
        Lcom/mysql/jdbc/PreparedStatement$BatchParams;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[B

.field private static final JDBC_4_PSTMT_2_ARG_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static final JDBC_4_PSTMT_3_ARG_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static final JDBC_4_PSTMT_4_ARG_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field protected batchCommandIndex:I

.field protected batchHasPlainStatements:Z

.field protected batchedValuesClause:Ljava/lang/String;

.field private charsetEncoder:Ljava/nio/charset/CharsetEncoder;

.field private compensateForOnDuplicateKeyUpdate:Z

.field private dbmd:Ljava/sql/DatabaseMetaData;

.field private ddf:Ljava/text/SimpleDateFormat;

.field private doPingInstead:Z

.field protected firstCharOfStmt:C

.field protected isLoadDataQuery:Z

.field protected isNull:[Z

.field private isStream:[Z

.field protected numberOfExecutions:I

.field protected originalSql:Ljava/lang/String;

.field protected parameterCount:I

.field protected parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

.field private parameterStreams:[Ljava/io/InputStream;

.field protected parameterTypes:[I

.field private parameterValues:[[B

.field protected parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

.field private pstmtResultMetaData:Ljava/sql/ResultSetMetaData;

.field protected rewrittenBatchSize:I

.field protected serverSupportsFracSecs:Z

.field private staticSqlStrings:[[B

.field private streamConvertBuf:[B

.field private streamLengths:[I

.field private tdf:Ljava/text/SimpleDateFormat;

.field private tsdf:Ljava/text/SimpleDateFormat;

.field protected useTrueBoolean:Z

.field protected usingAnsiMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :try_start_0
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.mysql.jdbc.JDBC42PreparedStatement"

    .line 87
    :goto_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_2_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 88
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_3_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 89
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x4

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

    const-class v3, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_4_ARG_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 625
    :goto_1
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mysql/jdbc/PreparedStatement;->HEX_DIGITS:[B

    return-void

    .line 86
    :cond_0
    :try_start_1
    const-string v0, "com.mysql.jdbc.JDBC4PreparedStatement"
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 93
    :catch_1
    move-exception v0

    .line 94
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 95
    :catch_2
    move-exception v0

    .line 96
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 99
    :cond_1
    sput-object v1, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_2_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 100
    sput-object v1, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_3_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 101
    sput-object v1, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_4_ARG_CTOR:Ljava/lang/reflect/Constructor;

    goto :goto_1

    .line 625
    :array_0
    .array-data 0x1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 792
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    .line 660
    iput-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->batchHasPlainStatements:Z

    .line 662
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->dbmd:Ljava/sql/DatabaseMetaData;

    .line 668
    iput-char v2, p0, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    .line 671
    iput-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    .line 673
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    .line 675
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    .line 677
    iput v2, p0, Lcom/mysql/jdbc/PreparedStatement;->numberOfExecutions:I

    .line 680
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    .line 687
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    move-object v0, v1

    .line 689
    check-cast v0, [[B

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    .line 695
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    move-object v0, v1

    .line 701
    check-cast v0, [[B

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    .line 703
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    .line 705
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    .line 707
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    .line 716
    iput-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->useTrueBoolean:Z

    .line 724
    iput-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->compensateForOnDuplicateKeyUpdate:Z

    .line 730
    const/4 v0, -0x1

    iput v0, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    .line 2236
    iput v2, p0, Lcom/mysql/jdbc/PreparedStatement;->rewrittenBatchSize:I

    .line 794
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->detectFractionalSecondsSupport()V

    .line 795
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCompensateOnDuplicateKeyUpdateCounts()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->compensateForOnDuplicateKeyUpdate:Z

    .line 796
    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)V
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
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 816
    invoke-direct {p0, p1, p3}, Lcom/mysql/jdbc/StatementImpl;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    .line 660
    iput-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->batchHasPlainStatements:Z

    .line 662
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->dbmd:Ljava/sql/DatabaseMetaData;

    .line 668
    iput-char v2, p0, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    .line 671
    iput-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    .line 673
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    .line 675
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    .line 677
    iput v2, p0, Lcom/mysql/jdbc/PreparedStatement;->numberOfExecutions:I

    .line 680
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    .line 687
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    move-object v0, v1

    .line 689
    check-cast v0, [[B

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    .line 695
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    move-object v0, v1

    .line 701
    check-cast v0, [[B

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    .line 703
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    .line 705
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    .line 707
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    .line 716
    iput-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->useTrueBoolean:Z

    .line 724
    iput-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->compensateForOnDuplicateKeyUpdate:Z

    .line 730
    const/4 v0, -0x1

    iput v0, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    .line 2236
    iput v2, p0, Lcom/mysql/jdbc/PreparedStatement;->rewrittenBatchSize:I

    .line 818
    if-nez p2, :cond_0

    .line 819
    const-string v0, "PreparedStatement.0"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 822
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->detectFractionalSecondsSupport()V

    .line 823
    iput-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    .line 825
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    const-string v1, "/* ping */"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->doPingInstead:Z

    .line 827
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->dbmd:Ljava/sql/DatabaseMetaData;

    .line 829
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x3

    const/16 v2, 0x15

    const/16 v3, 0x17

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->useTrueBoolean:Z

    .line 831
    new-instance v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->dbmd:Ljava/sql/DatabaseMetaData;

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;)V

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    .line 833
    invoke-direct {p0}, Lcom/mysql/jdbc/PreparedStatement;->initializeFromParseInfo()V

    .line 835
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCompensateOnDuplicateKeyUpdateCounts()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->compensateForOnDuplicateKeyUpdate:Z

    .line 837
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getRequiresEscapingEncoder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 838
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 840
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)V
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
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 857
    invoke-direct {p0, p1, p3}, Lcom/mysql/jdbc/StatementImpl;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    .line 660
    iput-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->batchHasPlainStatements:Z

    .line 662
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->dbmd:Ljava/sql/DatabaseMetaData;

    .line 668
    iput-char v2, p0, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    .line 671
    iput-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    .line 673
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    .line 675
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    .line 677
    iput v2, p0, Lcom/mysql/jdbc/PreparedStatement;->numberOfExecutions:I

    .line 680
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    .line 687
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    move-object v0, v1

    .line 689
    check-cast v0, [[B

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    .line 695
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    move-object v0, v1

    .line 701
    check-cast v0, [[B

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    .line 703
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    .line 705
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    .line 707
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    .line 716
    iput-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->useTrueBoolean:Z

    .line 724
    iput-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->compensateForOnDuplicateKeyUpdate:Z

    .line 730
    const/4 v0, -0x1

    iput v0, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    .line 2236
    iput v2, p0, Lcom/mysql/jdbc/PreparedStatement;->rewrittenBatchSize:I

    .line 859
    if-nez p2, :cond_0

    .line 860
    const-string v0, "PreparedStatement.1"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 863
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->detectFractionalSecondsSupport()V

    .line 864
    iput-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    .line 866
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->dbmd:Ljava/sql/DatabaseMetaData;

    .line 868
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x3

    const/16 v3, 0x15

    const/16 v4, 0x17

    invoke-interface {v0, v1, v3, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->useTrueBoolean:Z

    .line 870
    iput-object p4, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    .line 872
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->useAnsiQuotedIdentifiers()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->usingAnsiMode:Z

    .line 874
    invoke-direct {p0}, Lcom/mysql/jdbc/PreparedStatement;->initializeFromParseInfo()V

    .line 876
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCompensateOnDuplicateKeyUpdateCounts()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->compensateForOnDuplicateKeyUpdate:Z

    .line 878
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getRequiresEscapingEncoder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 879
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 881
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 872
    goto :goto_0
.end method

.method protected static canRewrite(Ljava/lang/String;ZII)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 5082
    const-string v0, "INSERT"

    invoke-static {p0, v0, p3}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5083
    const-string v2, "SELECT"

    const-string v3, "\"\'`"

    const-string v4, "\"\'`"

    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    move v0, p3

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    if-eq v0, v8, :cond_1

    move v6, v7

    .line 5095
    :cond_0
    :goto_0
    return v6

    .line 5086
    :cond_1
    if-eqz p1, :cond_0

    .line 5087
    const-string v0, " UPDATE "

    invoke-static {p2, p0, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 5088
    if-eq v0, v8, :cond_0

    .line 5089
    const-string v2, "LAST_INSERT_ID"

    const-string v3, "\"\'`"

    const-string v4, "\"\'`"

    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    if-ne v0, v8, :cond_2

    move v0, v6

    :goto_1
    move v6, v0

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1

    .line 5095
    :cond_3
    const-string v0, "REPLACE"

    invoke-static {p0, v0, p3}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v2, "SELECT"

    const-string v3, "\"\'`"

    const-string v4, "\"\'`"

    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    move v0, p3

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    if-eq v0, v8, :cond_0

    :cond_4
    move v6, v7

    goto :goto_0
.end method

.method private checkAllParametersSet([BLjava/io/InputStream;I)V
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
    .line 2209
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 2211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreparedStatement.40"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "07001"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2214
    :cond_0
    return-void
.end method

.method private doSSPSCompatibleTimezoneShift(ILjava/sql/Timestamp;)V
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v11, 0xa

    .line 4314
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4315
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    move-object v1, v0

    .line 4318
    :goto_0
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4319
    :try_start_1
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 4322
    :try_start_2
    invoke-virtual {v1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 4324
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 4325
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 4326
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 4328
    const/16 v6, 0xb

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 4329
    const/16 v7, 0xc

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 4330
    const/16 v8, 0xd

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 4332
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 4334
    const/16 v10, 0x27

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4335
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4337
    const-string v0, "-"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4339
    if-ge v4, v11, :cond_0

    .line 4340
    const/16 v0, 0x30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4343
    :cond_0
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4345
    const/16 v0, 0x2d

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4347
    if-ge v5, v11, :cond_1

    .line 4348
    const/16 v0, 0x30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4351
    :cond_1
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4353
    const/16 v0, 0x20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4355
    if-ge v6, v11, :cond_2

    .line 4356
    const/16 v0, 0x30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4359
    :cond_2
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4361
    const/16 v0, 0x3a

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4363
    if-ge v7, v11, :cond_3

    .line 4364
    const/16 v0, 0x30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4367
    :cond_3
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4369
    const/16 v0, 0x3a

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4371
    if-ge v8, v11, :cond_4

    .line 4372
    const/16 v0, 0x30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4375
    :cond_4
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4377
    const/16 v0, 0x2e

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4378
    invoke-virtual {p2}, Ljava/sql/Timestamp;->getNanos()I

    move-result v0

    iget-boolean v4, p0, Lcom/mysql/jdbc/PreparedStatement;->serverSupportsFracSecs:Z

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/mysql/jdbc/TimeUtil;->formatNanos(IZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4379
    const/16 v0, 0x27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4381
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4384
    :try_start_3
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 4386
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4387
    :try_start_4
    monitor-exit v2

    .line 4388
    return-void

    .line 4315
    :cond_5
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 4384
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    throw v0

    .line 4386
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    .line 4387
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method private final escapeblockFast([BLcom/mysql/jdbc/Buffer;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x5c

    move v0, v1

    .line 1036
    :goto_0
    if-ge v1, p3, :cond_5

    .line 1037
    aget-byte v2, p1, v1

    .line 1039
    if-nez v2, :cond_2

    .line 1041
    if-le v1, v0, :cond_0

    .line 1042
    sub-int v2, v1, v0

    invoke-virtual {p2, p1, v0, v2}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 1046
    :cond_0
    invoke-virtual {p2, v4}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1047
    const/16 v0, 0x30

    invoke-virtual {p2, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1048
    add-int/lit8 v0, v1, 0x1

    .line 1036
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1050
    :cond_2
    if-eq v2, v4, :cond_3

    const/16 v3, 0x27

    if-eq v2, v3, :cond_3

    iget-boolean v3, p0, Lcom/mysql/jdbc/PreparedStatement;->usingAnsiMode:Z

    if-nez v3, :cond_1

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    .line 1052
    :cond_3
    if-le v1, v0, :cond_4

    .line 1053
    sub-int v2, v1, v0

    invoke-virtual {p2, p1, v0, v2}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 1057
    :cond_4
    invoke-virtual {p2, v4}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    move v0, v1

    .line 1058
    goto :goto_1

    .line 1064
    :cond_5
    if-ge v0, p3, :cond_6

    .line 1065
    sub-int v1, p3, v0

    invoke-virtual {p2, p1, v0, v1}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 1067
    :cond_6
    return-void
.end method

.method private final escapeblockFast([BLjava/io/ByteArrayOutputStream;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x5c

    move v0, v1

    .line 1072
    :goto_0
    if-ge v1, p3, :cond_5

    .line 1073
    aget-byte v2, p1, v1

    .line 1075
    if-nez v2, :cond_2

    .line 1077
    if-le v1, v0, :cond_0

    .line 1078
    sub-int v2, v1, v0

    invoke-virtual {p2, p1, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1082
    :cond_0
    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1083
    const/16 v0, 0x30

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1084
    add-int/lit8 v0, v1, 0x1

    .line 1072
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1086
    :cond_2
    if-eq v2, v4, :cond_3

    const/16 v3, 0x27

    if-eq v2, v3, :cond_3

    iget-boolean v3, p0, Lcom/mysql/jdbc/PreparedStatement;->usingAnsiMode:Z

    if-nez v3, :cond_1

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    .line 1088
    :cond_3
    if-le v1, v0, :cond_4

    .line 1089
    sub-int v2, v1, v0

    invoke-virtual {p2, p1, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1093
    :cond_4
    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v0, v1

    .line 1094
    goto :goto_1

    .line 1100
    :cond_5
    if-ge v0, p3, :cond_6

    .line 1101
    sub-int v1, p3, v0

    invoke-virtual {p2, p1, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1103
    :cond_6
    return-void
.end method

.method private generateMultiStatementForBatch(I)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1456
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1457
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, p1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1459
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v3, p1, -0x1

    if-ge v0, v3, :cond_0

    .line 1462
    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1463
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1466
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1467
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final getDateTimePattern(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 14
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2329
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v3, v0

    .line 2331
    :goto_0
    const/16 v0, 0x8

    if-lt v3, v0, :cond_4

    const/16 v0, 0xa

    if-gt v3, v0, :cond_4

    .line 2332
    const/4 v2, 0x0

    .line 2333
    const/4 v1, 0x1

    .line 2335
    const/4 v0, 0x0

    move v13, v0

    move v0, v2

    move v2, v13

    :goto_1
    if-ge v2, v3, :cond_0

    .line 2336
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 2338
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_2

    .line 2339
    const/4 v1, 0x0

    .line 2349
    :cond_0
    if-eqz v1, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 2350
    const-string v0, "yyyy-MM-dd"

    .line 2483
    :goto_2
    return-object v0

    .line 2329
    :cond_1
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    .line 2344
    :cond_2
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_3

    .line 2345
    add-int/lit8 v0, v0, 0x1

    .line 2335
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2357
    :cond_4
    const/4 v0, 0x1

    .line 2359
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_5

    .line 2360
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2362
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_6

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_6

    .line 2363
    const/4 v0, 0x0

    .line 2369
    :cond_5
    if-eqz v0, :cond_7

    .line 2370
    const-string v0, "HH:mm:ss"

    goto :goto_2

    .line 2359
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2379
    :cond_7
    new-instance v4, Ljava/io/StringReader;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 2380
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2381
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2382
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 2384
    const/4 v1, 0x0

    const/16 v2, 0x79

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2385
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v2, v0, v1

    .line 2386
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2387
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2389
    if-eqz p2, :cond_8

    .line 2390
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 2391
    const/4 v1, 0x0

    const/16 v2, 0x68

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2392
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v2, v0, v1

    .line 2393
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2394
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2397
    :cond_8
    :goto_4
    invoke-virtual {v4}, Ljava/io/StringReader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 2398
    int-to-char v7, v0

    .line 2399
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2401
    const/4 v0, 0x0

    move v3, v0

    :goto_5
    if-ge v3, v8, :cond_10

    .line 2402
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 2403
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2404
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {p0, v1, v9}, Lcom/mysql/jdbc/PreparedStatement;->getSuccessor(CI)C

    move-result v2

    .line 2406
    invoke-static {v7}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_c

    .line 2407
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    if-ne v2, v1, :cond_a

    const/16 v1, 0x53

    if-eq v2, v1, :cond_a

    .line 2408
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2401
    :cond_9
    :goto_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    .line 2410
    :cond_a
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2412
    const/16 v1, 0x58

    if-eq v2, v1, :cond_b

    const/16 v1, 0x59

    if-ne v2, v1, :cond_9

    .line 2413
    :cond_b
    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_6

    .line 2417
    :cond_c
    const/16 v1, 0x58

    if-ne v2, v1, :cond_e

    .line 2418
    const/16 v2, 0x79

    .line 2419
    const/4 v1, 0x3

    new-array v10, v1, [Ljava/lang/Object;

    .line 2420
    const/4 v11, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x4d

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    aput-object v1, v10, v11

    .line 2421
    const/4 v1, 0x0

    const/16 v11, 0x4d

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    aput-object v11, v10, v1

    .line 2422
    const/4 v1, 0x2

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v1

    .line 2423
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2433
    :cond_d
    :goto_7
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2435
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    if-ne v2, v1, :cond_f

    .line 2436
    const/4 v1, 0x2

    add-int/lit8 v2, v9, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_6

    .line 2424
    :cond_e
    const/16 v1, 0x59

    if-ne v2, v1, :cond_d

    .line 2425
    const/16 v2, 0x4d

    .line 2426
    const/4 v1, 0x3

    new-array v10, v1, [Ljava/lang/Object;

    .line 2427
    const/4 v11, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x64

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    aput-object v1, v10, v11

    .line 2428
    const/4 v1, 0x0

    const/16 v11, 0x64

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    aput-object v11, v10, v1

    .line 2429
    const/4 v1, 0x2

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v1

    .line 2430
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2438
    :cond_f
    const/4 v1, 0x0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2439
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    goto/16 :goto_6

    .line 2444
    :cond_10
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2446
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_11

    .line 2447
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 2448
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2446
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 2451
    :cond_11
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_4

    .line 2454
    :cond_12
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2456
    const/4 v0, 0x0

    move v4, v0

    :goto_9
    if-ge v4, v7, :cond_1b

    .line 2457
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 2458
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v8

    .line 2459
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2461
    invoke-direct {p0, v8, v1}, Lcom/mysql/jdbc/PreparedStatement;->getSuccessor(CI)C

    move-result v1

    if-eq v1, v8, :cond_17

    const/4 v1, 0x1

    move v2, v1

    .line 2462
    :goto_a
    const/16 v1, 0x73

    if-eq v8, v1, :cond_13

    const/16 v1, 0x6d

    if-eq v8, v1, :cond_13

    const/16 v1, 0x68

    if-ne v8, v1, :cond_18

    if-eqz p2, :cond_18

    :cond_13
    if-eqz v2, :cond_18

    const/4 v1, 0x1

    move v3, v1

    .line 2463
    :goto_b
    if-eqz v2, :cond_19

    const/16 v1, 0x64

    if-ne v8, v1, :cond_19

    if-nez p2, :cond_19

    const/4 v1, 0x1

    move v2, v1

    .line 2464
    :goto_c
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x57

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_1a

    const/4 v1, 0x1

    .line 2466
    :goto_d
    if-nez v3, :cond_14

    if-eqz v2, :cond_15

    :cond_14
    if-eqz v1, :cond_16

    .line 2467
    :cond_15
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2456
    :cond_16
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_9

    .line 2461
    :cond_17
    const/4 v1, 0x0

    move v2, v1

    goto :goto_a

    .line 2462
    :cond_18
    const/4 v1, 0x0

    move v3, v1

    goto :goto_b

    .line 2463
    :cond_19
    const/4 v1, 0x0

    move v2, v1

    goto :goto_c

    .line 2464
    :cond_1a
    const/4 v1, 0x0

    goto :goto_d

    .line 2471
    :cond_1b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2473
    const/4 v0, 0x0

    :goto_e
    if-ge v0, v1, :cond_1c

    .line 2474
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2473
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 2477
    :cond_1c
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2478
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 2480
    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/StringBuilder;

    .line 2481
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2483
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method protected static getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)Lcom/mysql/jdbc/PreparedStatement;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 742
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 743
    new-instance v0, Lcom/mysql/jdbc/PreparedStatement;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    .line 746
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_2_ARG_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    goto :goto_0
.end method

.method protected static getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/jdbc/PreparedStatement;
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
    .line 757
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 758
    new-instance v0, Lcom/mysql/jdbc/PreparedStatement;

    invoke-direct {v0, p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_3_ARG_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    goto :goto_0
.end method

.method protected static getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)Lcom/mysql/jdbc/PreparedStatement;
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
    .line 772
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    new-instance v0, Lcom/mysql/jdbc/PreparedStatement;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)V

    .line 776
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_4_ARG_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    goto :goto_0
.end method

.method private final getSuccessor(CI)C
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x6d

    const/16 v1, 0x64

    const/16 v2, 0x48

    const/16 v0, 0x4d

    const/4 v5, 0x2

    .line 2595
    const/16 v4, 0x79

    if-ne p1, v4, :cond_1

    if-ne p2, v5, :cond_1

    const/16 v0, 0x58

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v4, 0x79

    if-ne p1, v4, :cond_2

    const/4 v4, 0x4

    if-ge p2, v4, :cond_2

    const/16 v0, 0x79

    goto :goto_0

    :cond_2
    const/16 v4, 0x79

    if-eq p1, v4, :cond_0

    if-ne p1, v0, :cond_3

    if-ne p2, v5, :cond_3

    const/16 v0, 0x59

    goto :goto_0

    :cond_3
    if-ne p1, v0, :cond_4

    const/4 v4, 0x3

    if-lt p2, v4, :cond_0

    :cond_4
    if-ne p1, v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    if-ne p1, v1, :cond_6

    if-ge p2, v5, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    if-ne p1, v1, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    if-ne p1, v2, :cond_8

    if-ge p2, v5, :cond_8

    move v0, v2

    goto :goto_0

    :cond_8
    if-ne p1, v2, :cond_9

    move v0, v3

    goto :goto_0

    :cond_9
    if-ne p1, v3, :cond_a

    if-ge p2, v5, :cond_a

    move v0, v3

    goto :goto_0

    :cond_a
    if-ne p1, v3, :cond_b

    const/16 v0, 0x73

    goto :goto_0

    :cond_b
    const/16 v0, 0x73

    if-ne p1, v0, :cond_c

    if-ge p2, v5, :cond_c

    const/16 v0, 0x73

    goto :goto_0

    :cond_c
    const/16 v0, 0x57

    goto :goto_0
.end method

.method private final hexEscapeBlock([BLcom/mysql/jdbc/Buffer;I)V
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
    .line 2611
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 2612
    aget-byte v1, p1, v0

    .line 2613
    and-int/lit16 v2, v1, 0xff

    div-int/lit8 v2, v2, 0x10

    .line 2614
    and-int/lit16 v1, v1, 0xff

    rem-int/lit8 v1, v1, 0x10

    .line 2616
    sget-object v3, Lcom/mysql/jdbc/PreparedStatement;->HEX_DIGITS:[B

    aget-byte v2, v3, v2

    invoke-virtual {p2, v2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2617
    sget-object v2, Lcom/mysql/jdbc/PreparedStatement;->HEX_DIGITS:[B

    aget-byte v1, v2, v1

    invoke-virtual {p2, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2611
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2619
    :cond_0
    return-void
.end method

.method private initializeFromParseInfo()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2622
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2623
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-object v2, v2, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    .line 2624
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-boolean v2, v2, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    iput-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    .line 2625
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-char v2, v2, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    iput-char v2, p0, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    .line 2627
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    .line 2629
    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    new-array v2, v2, [[B

    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    .line 2630
    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    new-array v2, v2, [Ljava/io/InputStream;

    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    .line 2631
    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    .line 2632
    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    .line 2633
    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    .line 2634
    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    .line 2636
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V

    .line 2638
    :goto_0
    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    if-ge v0, v2, :cond_0

    .line 2639
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    .line 2638
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2641
    :cond_0
    monitor-exit v1

    .line 2642
    return-void

    .line 2641
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isEscapeNeededForString(Ljava/lang/String;I)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    .line 4037
    :goto_0
    if-ge v2, p2, :cond_0

    .line 4038
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 4040
    sparse-switch v3, :sswitch_data_0

    .line 4075
    :goto_1
    if-eqz v0, :cond_1

    .line 4079
    :cond_0
    return v0

    :sswitch_0
    move v0, v1

    .line 4044
    goto :goto_1

    :sswitch_1
    move v0, v1

    .line 4049
    goto :goto_1

    :sswitch_2
    move v0, v1

    .line 4053
    goto :goto_1

    :sswitch_3
    move v0, v1

    .line 4058
    goto :goto_1

    :sswitch_4
    move v0, v1

    .line 4063
    goto :goto_1

    :sswitch_5
    move v0, v1

    .line 4068
    goto :goto_1

    :sswitch_6
    move v0, v1

    .line 4071
    goto :goto_1

    .line 4037
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4040
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x1a -> :sswitch_6
        0x22 -> :sswitch_5
        0x27 -> :sswitch_4
        0x5c -> :sswitch_3
    .end sparse-switch
.end method

.method private newSetDateInternal(ILjava/sql/Date;Ljava/util/Calendar;)V
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
    .line 4296
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4297
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->ddf:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 4298
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "\'\'yyyy-MM-dd\'\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->ddf:Ljava/text/SimpleDateFormat;

    .line 4301
    :cond_0
    if-eqz p3, :cond_1

    .line 4302
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->ddf:Ljava/text/SimpleDateFormat;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4309
    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->ddf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 4310
    monitor-exit v1

    .line 4311
    return-void

    .line 4303
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNoTimezoneConversionForDateType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4304
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->ddf:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 4310
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4306
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->ddf:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private newSetTimeInternal(ILjava/sql/Time;Ljava/util/Calendar;)V
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
    .line 4280
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4281
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->tdf:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 4282
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "\'\'HH:mm:ss\'\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->tdf:Ljava/text/SimpleDateFormat;

    .line 4285
    :cond_0
    if-eqz p3, :cond_1

    .line 4286
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->tdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4291
    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->tdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 4292
    monitor-exit v1

    .line 4293
    return-void

    .line 4288
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->tdf:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 4292
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private newSetTimestampInternal(ILjava/sql/Timestamp;Ljava/util/Calendar;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4258
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4259
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 4260
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "\'\'yyyy-MM-dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    .line 4263
    :cond_0
    if-eqz p3, :cond_1

    .line 4264
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4269
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4270
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4271
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4272
    invoke-virtual {p2}, Ljava/sql/Timestamp;->getNanos()I

    move-result v2

    iget-boolean v3, p0, Lcom/mysql/jdbc/PreparedStatement;->serverSupportsFracSecs:Z

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/TimeUtil;->formatNanos(IZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4273
    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4275
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 4276
    monitor-exit v1

    .line 4277
    return-void

    .line 4266
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 4276
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static readFully(Ljava/io/Reader;[CI)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 639
    const/4 v0, 0x0

    .line 641
    :goto_0
    if-ge v0, p2, :cond_0

    .line 642
    sub-int v1, p2, v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 644
    if-gez v1, :cond_1

    .line 651
    :cond_0
    return v0

    .line 648
    :cond_1
    add-int/2addr v0, v1

    .line 649
    goto :goto_0
.end method

.method private final readblock(Ljava/io/InputStream;[B)I
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2652
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 2653
    :catch_0
    move-exception v0

    .line 2654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreparedStatement.56"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 2656
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2658
    throw v1
.end method

.method private final readblock(Ljava/io/InputStream;[BI)I
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
    .line 2666
    :try_start_0
    array-length v0, p2

    if-le p3, v0, :cond_0

    .line 2667
    array-length p3, p2

    .line 2670
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 2671
    :catch_0
    move-exception v0

    .line 2672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreparedStatement.56"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 2674
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2676
    throw v1
.end method

.method private setNumericObject(ILjava/lang/Object;II)V
    .locals 4
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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3423
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 3424
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    move-object v2, v1

    .line 3470
    :goto_1
    packed-switch p3, :pswitch_data_0

    .line 3521
    :goto_2
    :pswitch_0
    return-void

    .line 3424
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 3425
    :cond_1
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 3426
    packed-switch p3, :pswitch_data_1

    .line 3464
    :pswitch_1
    new-instance v1, Ljava/math/BigDecimal;

    check-cast p2, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_1

    .line 3428
    :pswitch_2
    const-string v1, "1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3429
    :cond_2
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    .line 3431
    :cond_3
    const-string v1, "true"

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 3433
    if-eqz v1, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    move-object v2, v1

    .line 3436
    goto :goto_1

    .line 3433
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    .line 3441
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v1

    .line 3443
    goto :goto_1

    .line 3446
    :pswitch_4
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    move-object v2, v1

    .line 3448
    goto :goto_1

    .line 3451
    :pswitch_5
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    move-object v2, v1

    .line 3453
    goto :goto_1

    .line 3457
    :pswitch_6
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    move-object v2, v1

    .line 3459
    goto :goto_1

    .line 3467
    :cond_5
    check-cast p2, Ljava/lang/Number;

    move-object v2, p2

    goto :goto_1

    .line 3475
    :pswitch_7
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setInt(II)V

    goto :goto_2

    .line 3480
    :pswitch_8
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setLong(IJ)V

    goto :goto_2

    .line 3485
    :pswitch_9
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setFloat(IF)V

    goto :goto_2

    .line 3491
    :pswitch_a
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setDouble(ID)V

    goto/16 :goto_2

    .line 3498
    :pswitch_b
    instance-of v1, v2, Ljava/math/BigDecimal;

    if-eqz v1, :cond_6

    .line 3502
    :try_start_0
    move-object v0, v2

    check-cast v0, Ljava/math/BigDecimal;

    move-object v1, v0

    invoke-virtual {v1, p4}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3512
    :goto_4
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    goto/16 :goto_2

    .line 3503
    :catch_0
    move-exception v1

    .line 3505
    :try_start_1
    move-object v0, v2

    check-cast v0, Ljava/math/BigDecimal;

    move-object v1, v0

    const/4 v3, 0x4

    invoke-virtual {v1, p4, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_4

    .line 3506
    :catch_1
    move-exception v1

    .line 3507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t set scale of \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' for DECIMAL argument \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 3513
    :cond_6
    instance-of v1, v2, Ljava/math/BigInteger;

    if-eqz v1, :cond_7

    .line 3514
    new-instance v1, Ljava/math/BigDecimal;

    check-cast v2, Ljava/math/BigInteger;

    invoke-direct {v1, v2, p4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    goto/16 :goto_2

    .line 3516
    :cond_7
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    goto/16 :goto_2

    .line 3470
    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_b
        :pswitch_7
        :pswitch_7
        :pswitch_a
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 3426
    :pswitch_data_1
    .packed-switch -0x7
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final setSerializableObject(ILjava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3822
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3823
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3824
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3825
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 3826
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 3827
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 3828
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 3830
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 3831
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3832
    array-length v0, v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 3833
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, -0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3841
    return-void

    .line 3834
    :catch_0
    move-exception v0

    .line 3835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreparedStatement.54"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 3837
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3839
    throw v1
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
    const/16 v7, 0x5c

    .line 4136
    if-nez p2, :cond_0

    .line 4137
    invoke-virtual {p0, p1, v7}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 4153
    :goto_0
    return-void

    .line 4139
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 4141
    iget-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->useLegacyDatetimeCode:Z

    if-nez v0, :cond_1

    .line 4142
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->newSetTimeInternal(ILjava/sql/Time;Ljava/util/Calendar;)V

    .line 4151
    :goto_1
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    aput v7, v0, v1

    goto :goto_0

    .line 4144
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v1

    .line 4146
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v5

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Time;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v0

    .line 4148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/sql/Time;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    goto :goto_1
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
    const/16 v7, 0x5d

    .line 4208
    if-nez p2, :cond_0

    .line 4209
    invoke-virtual {p0, p1, v7}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 4255
    :goto_0
    return-void

    .line 4211
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 4213
    iget-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->sendFractionalSeconds:Z

    if-nez v0, :cond_6

    .line 4214
    invoke-static {p2}, Lcom/mysql/jdbc/TimeUtil;->truncateFractionalSeconds(Ljava/sql/Timestamp;)Ljava/sql/Timestamp;

    move-result-object v3

    .line 4217
    :goto_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->useLegacyDatetimeCode:Z

    if-nez v0, :cond_1

    .line 4218
    invoke-direct {p0, p1, v3, p3}, Lcom/mysql/jdbc/PreparedStatement;->newSetTimestampInternal(ILjava/sql/Timestamp;Ljava/util/Calendar;)V

    .line 4253
    :goto_2
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    aput v7, v0, v1

    goto :goto_0

    .line 4220
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v1

    .line 4223
    :goto_3
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v5

    move-object v2, p3

    move-object v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v0

    .line 4225
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseSSPSCompatibleTimezoneShift()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4226
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->doSSPSCompatibleTimezoneShift(ILjava/sql/Timestamp;)V

    goto :goto_2

    .line 4220
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v1

    goto :goto_3

    .line 4228
    :cond_3
    monitor-enter p0

    .line 4229
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_4

    .line 4230
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "\'\'yyyy-MM-dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    .line 4233
    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 4234
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4236
    iget-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->serverSupportsFracSecs:Z

    if-eqz v2, :cond_5

    .line 4237
    invoke-virtual {v0}, Ljava/sql/Timestamp;->getNanos()I

    move-result v0

    .line 4239
    if-eqz v0, :cond_5

    .line 4240
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4241
    iget-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->serverSupportsFracSecs:Z

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/TimeUtil;->formatNanos(IZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4245
    :cond_5
    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4247
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 4249
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    move-object v3, p2

    goto/16 :goto_1
.end method

.method private final streamToBytes(Lcom/mysql/jdbc/Buffer;Ljava/io/InputStream;ZIZ)V
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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4438
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v2

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 4440
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    if-nez v2, :cond_0

    .line 4441
    const/16 v2, 0x1000

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    .line 4444
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4449
    :try_start_1
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v4

    if-eqz v4, :cond_e

    if-eqz v2, :cond_e

    invoke-static {v2}, Lcom/mysql/jdbc/CharsetMapping;->isMultibyteCharset(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_e

    .line 4459
    :cond_1
    :goto_0
    const/4 v2, -0x1

    if-ne p4, v2, :cond_2

    move p5, v1

    .line 4465
    :cond_2
    if-eqz p5, :cond_6

    .line 4466
    :try_start_2
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, p2, v1, p4}, Lcom/mysql/jdbc/PreparedStatement;->readblock(Ljava/io/InputStream;[BI)I

    move-result v2

    .line 4471
    :goto_1
    sub-int v1, p4, v2

    .line 4473
    if-eqz v0, :cond_7

    .line 4474
    const-string v4, "x"

    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;)V

    .line 4479
    :cond_3
    :goto_2
    if-eqz p3, :cond_4

    .line 4480
    const/16 v4, 0x27

    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 4483
    :cond_4
    :goto_3
    if-lez v2, :cond_b

    .line 4484
    if-eqz v0, :cond_8

    .line 4485
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, v4, p1, v2}, Lcom/mysql/jdbc/PreparedStatement;->hexEscapeBlock([BLcom/mysql/jdbc/Buffer;I)V

    .line 4492
    :goto_4
    if-eqz p5, :cond_a

    .line 4493
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, p2, v2, v1}, Lcom/mysql/jdbc/PreparedStatement;->readblock(Ljava/io/InputStream;[BI)I

    move-result v2

    .line 4495
    if-lez v2, :cond_4

    .line 4496
    sub-int/2addr v1, v2

    goto :goto_3

    .line 4453
    :catch_0
    move-exception v0

    .line 4454
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 4455
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4456
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4507
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getAutoClosePStmtStreams()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    if-eqz v1, :cond_5

    .line 4509
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 4507
    :cond_5
    :goto_5
    :try_start_5
    throw v0

    .line 4516
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 4468
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, p2, v1}, Lcom/mysql/jdbc/PreparedStatement;->readblock(Ljava/io/InputStream;[B)I

    move-result v2

    goto :goto_1

    .line 4475
    :cond_7
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4476
    const-string v4, "_binary"

    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;)V

    goto :goto_2

    .line 4486
    :cond_8
    if-eqz p3, :cond_9

    .line 4487
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, v4, p1, v2}, Lcom/mysql/jdbc/PreparedStatement;->escapeblockFast([BLcom/mysql/jdbc/Buffer;I)V

    goto :goto_4

    .line 4489
    :cond_9
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v2}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    goto :goto_4

    .line 4499
    :cond_a
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, p2, v2}, Lcom/mysql/jdbc/PreparedStatement;->readblock(Ljava/io/InputStream;[B)I

    move-result v2

    goto :goto_3

    .line 4503
    :cond_b
    if-eqz p3, :cond_c

    .line 4504
    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4507
    :cond_c
    :try_start_7
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoClosePStmtStreams()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v0

    if-eqz v0, :cond_d

    .line 4509
    :try_start_8
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 4516
    :cond_d
    :goto_6
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 4517
    return-void

    .line 4510
    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_e
    move v0, v1

    goto/16 :goto_0
.end method

.method private final streamToBytes(Ljava/io/InputStream;ZIZ)[B
    .locals 8
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
    const/4 v0, 0x0

    .line 4520
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4521
    const v1, 0x7fffffff

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4523
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    if-nez v1, :cond_0

    .line 4524
    const/16 v1, 0x1000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    .line 4526
    :cond_0
    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    move p4, v0

    .line 4530
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4534
    if-eqz p4, :cond_4

    .line 4535
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, p1, v0, p3}, Lcom/mysql/jdbc/PreparedStatement;->readblock(Ljava/io/InputStream;[BI)I

    move-result v1

    .line 4540
    :goto_0
    sub-int v0, p3, v1

    .line 4542
    if-eqz p2, :cond_3

    .line 4543
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4544
    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4545
    const/16 v4, 0x62

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4546
    const/16 v4, 0x69

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4547
    const/16 v4, 0x6e

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4548
    const/16 v4, 0x61

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4549
    const/16 v4, 0x72

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4550
    const/16 v4, 0x79

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4553
    :cond_2
    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4556
    :cond_3
    :goto_1
    if-lez v1, :cond_8

    .line 4557
    if-eqz p2, :cond_5

    .line 4558
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, v4, v3, v1}, Lcom/mysql/jdbc/PreparedStatement;->escapeblockFast([BLjava/io/ByteArrayOutputStream;I)V

    .line 4563
    :goto_2
    if-eqz p4, :cond_7

    .line 4564
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, p1, v1, v0}, Lcom/mysql/jdbc/PreparedStatement;->readblock(Ljava/io/InputStream;[BI)I

    move-result v1

    .line 4566
    if-lez v1, :cond_3

    .line 4567
    sub-int/2addr v0, v1

    goto :goto_1

    .line 4537
    :cond_4
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->readblock(Ljava/io/InputStream;[B)I

    move-result v1

    goto :goto_0

    .line 4560
    :cond_5
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 4580
    :catchall_0
    move-exception v0

    .line 4581
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4584
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getAutoClosePStmtStreams()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    if-eqz v1, :cond_6

    .line 4586
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 4580
    :cond_6
    :goto_4
    :try_start_5
    throw v0

    .line 4593
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 4570
    :cond_7
    :try_start_6
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->readblock(Ljava/io/InputStream;[B)I

    move-result v1

    goto :goto_1

    .line 4574
    :cond_8
    if-eqz p2, :cond_9

    .line 4575
    const/16 v0, 0x27

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4578
    :cond_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    .line 4581
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 4584
    :goto_5
    :try_start_8
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getAutoClosePStmtStreams()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v1

    if-eqz v1, :cond_a

    .line 4586
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 4578
    :cond_a
    :goto_6
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    return-object v0

    .line 4582
    :catch_0
    move-exception v1

    goto :goto_3

    .line 4587
    :catch_1
    move-exception v1

    goto :goto_4

    .line 4582
    :catch_2
    move-exception v1

    goto :goto_5

    .line 4587
    :catch_3
    move-exception v1

    goto :goto_6
.end method


# virtual methods
.method public addBatch()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 892
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 893
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 894
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    .line 897
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 898
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    aget-object v2, v2, v0

    invoke-direct {p0, v1, v2, v0}, Lcom/mysql/jdbc/PreparedStatement;->checkAllParametersSet([BLjava/io/InputStream;I)V

    .line 897
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 901
    :cond_1
    iget-object v8, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    new-instance v0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/PreparedStatement$BatchParams;-><init>(Lcom/mysql/jdbc/PreparedStatement;[[B[Ljava/io/InputStream;[Z[I[Z)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    monitor-exit v7

    .line 903
    return-void

    .line 902
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addBatch(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 908
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->batchHasPlainStatements:Z

    .line 910
    invoke-super {p0, p1}, Lcom/mysql/jdbc/StatementImpl;->addBatch(Ljava/lang/String;)V

    .line 911
    monitor-exit v1

    .line 912
    return-void

    .line 911
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public asSql()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 915
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/PreparedStatement;->asSql(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asSql(Z)Ljava/lang/String;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 919
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 921
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    :try_start_1
    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int v7, v1, v2

    .line 925
    const/4 v2, 0x0

    .line 926
    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    if-eq v1, v9, :cond_0

    .line 927
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 930
    :cond_0
    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v7, :cond_c

    .line 931
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 932
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    aget-object v1, v1, v4

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/mysql/jdbc/StringUtils;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    :goto_1
    if-eqz v2, :cond_3

    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 939
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    :cond_1
    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 934
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    aget-object v1, v1, v4

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 993
    :catch_0
    move-exception v1

    .line 994
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PreparedStatement.32"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PreparedStatement.33"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 998
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 942
    :cond_3
    :try_start_3
    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    if-ne v1, v9, :cond_5

    .line 943
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    aget-object v1, v1, v4

    move-object v3, v1

    .line 949
    :goto_3
    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    if-ne v1, v9, :cond_6

    .line 950
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    aget-boolean v1, v1, v4

    .line 955
    :goto_4
    if-nez v3, :cond_7

    if-nez v1, :cond_7

    .line 956
    if-eqz p1, :cond_4

    .line 957
    const-string v1, "\'"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    :cond_4
    const-string v1, "** NOT SPECIFIED **"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    if-eqz p1, :cond_1

    .line 963
    const-string v1, "\'"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 945
    :cond_5
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    aget-object v1, v1, v4

    move-object v3, v1

    goto :goto_3

    .line 952
    :cond_6
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isStream:[Z

    aget-boolean v1, v1, v4

    goto :goto_4

    .line 965
    :cond_7
    if-eqz v1, :cond_9

    .line 966
    if-eqz p1, :cond_8

    .line 967
    const-string v1, "\'"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    :cond_8
    const-string v1, "** STREAM DATA **"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    if-eqz p1, :cond_1

    .line 973
    const-string v1, "\'"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 976
    :cond_9
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    if-eqz v1, :cond_a

    .line 977
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    invoke-virtual {v1, v3}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 979
    :cond_a
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 980
    new-instance v1, Ljava/lang/String;

    iget-object v8, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    invoke-direct {v1, v3, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 982
    :cond_b
    invoke-static {v3}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 988
    :cond_c
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 989
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v3

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mysql/jdbc/StringUtils;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    .line 997
    :goto_5
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v1

    .line 991
    :cond_d
    :try_start_5
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v3

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5
.end method

.method public canRewriteAsMultiValueInsertAtSqlLevel()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-boolean v0, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->canRewriteAsMultiValueInsert:Z

    return v0
.end method

.method protected checkBounds(II)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 3322
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3323
    if-ge p1, v2, :cond_0

    .line 3324
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreparedStatement.49"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "PreparedStatement.50"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3336
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3326
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    if-le p1, v0, :cond_1

    .line 3327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreparedStatement.51"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "PreparedStatement.52"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "PreparedStatement.53"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3332
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    if-ne p1, v2, :cond_2

    .line 3333
    const-string v0, "Can\'t set IN parameter for return value of stored function call."

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3336
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3337
    return-void
.end method

.method protected checkReadOnlySafeStatement()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1112
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1113
    :try_start_0
    iget-char v0, p0, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearBatch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1003
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1004
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->batchHasPlainStatements:Z

    .line 1006
    invoke-super {p0}, Lcom/mysql/jdbc/StatementImpl;->clearBatch()V

    .line 1007
    monitor-exit v1

    .line 1008
    return-void

    .line 1007
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearParameters()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1021
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1023
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1024
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 1025
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 1026
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    .line 1027
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    .line 1028
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 1023
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1030
    :cond_0
    monitor-exit v1

    .line 1031
    return-void

    .line 1030
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected computeBatchSize(I)I
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1627
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1628
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement;->computeMaxParameterSetSizeAndBatchSize(I)[J

    move-result-object v0

    .line 1630
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    .line 1631
    const/4 v4, 0x1

    aget-wide v4, v0, v4

    .line 1633
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMaxAllowedPacket()I

    move-result v0

    .line 1635
    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v6, v0, v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 1636
    monitor-exit v1

    .line 1639
    :goto_0
    return p1

    :cond_0
    const-wide/16 v4, 0x1

    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v0, v6

    int-to-long v6, v0

    div-long v2, v6, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int p1, v2

    monitor-exit v1

    goto :goto_0

    .line 1640
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 1650
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 1651
    const-wide/16 v2, 0x0

    .line 1652
    const-wide/16 v4, 0x0

    .line 1654
    const/4 v1, 0x0

    move v8, v1

    move-wide v9, v2

    :goto_0
    move/from16 v0, p1

    if-ge v8, v0, :cond_5

    .line 1655
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/PreparedStatement$BatchParams;

    .line 1657
    iget-object v12, v1, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isNull:[Z

    .line 1658
    iget-object v13, v1, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isStream:[Z

    .line 1660
    const-wide/16 v6, 0x0

    .line 1662
    const/4 v2, 0x0

    move/from16 v16, v2

    move-wide v2, v6

    move/from16 v6, v16

    :goto_1
    array-length v7, v12

    if-ge v6, v7, :cond_3

    .line 1663
    aget-boolean v7, v12, v6

    if-nez v7, :cond_2

    .line 1665
    aget-boolean v7, v13, v6

    if-eqz v7, :cond_1

    .line 1666
    iget-object v7, v1, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->streamLengths:[I

    aget v7, v7, v6

    .line 1668
    const/4 v14, -0x1

    if-eq v7, v14, :cond_0

    .line 1669
    mul-int/lit8 v7, v7, 0x2

    int-to-long v14, v7

    add-long/2addr v2, v14

    .line 1662
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1671
    :cond_0
    iget-object v7, v1, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    aget-object v7, v7, v6

    array-length v7, v7

    .line 1672
    int-to-long v14, v7

    add-long/2addr v2, v14

    goto :goto_2

    .line 1675
    :cond_1
    iget-object v7, v1, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    aget-object v7, v7, v6

    array-length v7, v7

    int-to-long v14, v7

    add-long/2addr v2, v14

    goto :goto_2

    .line 1678
    :cond_2
    const-wide/16 v14, 0x4

    add-long/2addr v2, v14

    goto :goto_2

    .line 1688
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getValuesClause()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1689
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getValuesClause()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v6, v1

    add-long v1, v2, v6

    .line 1694
    :goto_3
    add-long v6, v9, v1

    .line 1696
    cmp-long v3, v1, v4

    if-lez v3, :cond_6

    .line 1654
    :goto_4
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move-wide v4, v1

    move-wide v9, v6

    goto :goto_0

    .line 1691
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v6, v1

    add-long v1, v2, v6

    goto :goto_3

    .line 1701
    :cond_5
    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide v4, v1, v2

    const/4 v2, 0x1

    aput-wide v9, v1, v2

    monitor-exit v11

    return-object v1

    .line 1702
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_6
    move-wide v1, v4

    goto :goto_4
.end method

.method protected containsOnDuplicateKeyUpdateInSQL()Z
    .locals 1

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-boolean v0, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    return v0
.end method

.method protected detectFractionalSecondsSupport()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 799
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->serverSupportsFracSecs:Z

    .line 800
    return-void

    .line 799
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public execute()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x53

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1129
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 1131
    :try_start_0
    iget-object v13, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 1133
    iget-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->doPingInstead:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkReadOnlySafeStatement()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreparedStatement.20"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PreparedStatement.21"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1223
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1140
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->lastQueryIsOnDupKeyUpdate:Z

    .line 1142
    iget-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v0, :cond_1

    .line 1143
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->containsOnDuplicateKeyUpdateInSQL()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->lastQueryIsOnDupKeyUpdate:Z

    .line 1146
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 1148
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    .line 1150
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->implicitlyCloseAllOpenResults()V

    .line 1152
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearWarnings()V

    .line 1154
    iget-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->doPingInstead:Z

    if-eqz v0, :cond_2

    .line 1155
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->doPingInstead()V

    .line 1157
    monitor-exit v12

    move v0, v7

    .line 1222
    :goto_0
    return v0

    .line 1160
    :cond_2
    invoke-virtual {p0, v13}, Lcom/mysql/jdbc/PreparedStatement;->setupStreamingTimeout(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1162
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->fillSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v2

    .line 1166
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1167
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v0

    .line 1168
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    invoke-interface {v13, v1}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    move-object v11, v0

    .line 1175
    :goto_1
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCacheResultSetMetadata()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1176
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-interface {v13, v0}, Lcom/mysql/jdbc/MySQLConnection;->getCachedMetaData(Ljava/lang/String;)Lcom/mysql/jdbc/CachedResultSetMetaData;

    move-result-object v0

    move-object v10, v0

    .line 1181
    :goto_2
    if-eqz v10, :cond_3

    .line 1182
    iget-object v5, v10, Lcom/mysql/jdbc/CachedResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    .line 1187
    :cond_3
    iget-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v0, :cond_c

    .line 1188
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->isReadInfoMsgEnabled()Z

    move-result v0

    .line 1189
    const/4 v1, 0x1

    invoke-interface {v13, v1}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V

    move v9, v0

    .line 1195
    :goto_3
    iget-char v0, p0, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    if-ne v0, v4, :cond_8

    iget v0, p0, Lcom/mysql/jdbc/PreparedStatement;->maxRows:I

    :goto_4
    invoke-interface {v13, v0}, Lcom/mysql/jdbc/MySQLConnection;->setSessionMaxRows(I)V

    .line 1197
    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement;->maxRows:I

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->createStreamingResultSet()Z

    move-result v3

    iget-char v0, p0, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    if-ne v0, v4, :cond_9

    move v4, v7

    :goto_5
    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/PreparedStatement;->executeInternal(ILcom/mysql/jdbc/Buffer;ZZ[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 1199
    if-eqz v10, :cond_a

    .line 1200
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-interface {v13, v1, v10, v0}, Lcom/mysql/jdbc/MySQLConnection;->initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    .line 1207
    :cond_4
    :goto_6
    iget-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v1, :cond_5

    .line 1208
    invoke-interface {v13, v9}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V

    .line 1209
    iget-char v1, p0, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setFirstCharOfQuery(C)V

    .line 1212
    :cond_5
    if-eqz v11, :cond_6

    .line 1213
    invoke-interface {v13, v11}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    .line 1216
    :cond_6
    if-eqz v0, :cond_7

    .line 1217
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateID()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mysql/jdbc/PreparedStatement;->lastInsertId:J

    .line 1219
    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1222
    :cond_7
    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v7

    :goto_7
    monitor-exit v12

    goto/16 :goto_0

    .line 1195
    :cond_8
    const/4 v0, -0x1

    goto :goto_4

    :cond_9
    move v4, v8

    .line 1197
    goto :goto_5

    .line 1202
    :cond_a
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCacheResultSetMetadata()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1203
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v13, v1, v2, v0}, Lcom/mysql/jdbc/MySQLConnection;->initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :cond_b
    move v0, v8

    .line 1222
    goto :goto_7

    :cond_c
    move v9, v8

    goto :goto_3

    :cond_d
    move-object v10, v5

    goto :goto_2

    :cond_e
    move-object v11, v5

    goto/16 :goto_1
.end method

.method protected executeBatchInternal()[J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1228
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1230
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1231
    new-instance v0, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PreparedStatement.25"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PreparedStatement.26"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1009"

    invoke-direct {v0, v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1268
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1235
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1236
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [J

    monitor-exit v1

    .line 1262
    :goto_0
    return-object v0

    .line 1240
    :cond_2
    iget v0, p0, Lcom/mysql/jdbc/PreparedStatement;->timeoutInMillis:I

    .line 1241
    const/4 v2, 0x0

    iput v2, p0, Lcom/mysql/jdbc/PreparedStatement;->timeoutInMillis:I

    .line 1243
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1246
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->statementBegins()V

    .line 1248
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearWarnings()V

    .line 1250
    iget-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->batchHasPlainStatements:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getRewriteBatchedStatements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1252
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->canRewriteAsMultiValueInsertAtSqlLevel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1253
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/PreparedStatement;->executeBatchedInserts(I)[J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 1264
    :try_start_3
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1266
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearBatch()V

    .line 1253
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1256
    :cond_3
    :try_start_4
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->batchHasPlainStatements:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_4

    .line 1258
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/PreparedStatement;->executePreparedBatchAsMultiStatement(I)[J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 1264
    :try_start_5
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1266
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearBatch()V

    .line 1258
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1262
    :cond_4
    :try_start_6
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/PreparedStatement;->executeBatchSerially(I)[J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v0

    .line 1264
    :try_start_7
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1266
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearBatch()V

    .line 1262
    monitor-exit v1

    goto :goto_0

    .line 1264
    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1266
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearBatch()V

    .line 1264
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method protected executeBatchSerially(I)[J
    .locals 15
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1714
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 1715
    :try_start_0
    iget-object v12, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 1717
    if-nez v12, :cond_0

    .line 1718
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1721
    :cond_0
    const/4 v1, 0x0

    .line 1723
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    if-eqz v2, :cond_c

    .line 1724
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    .line 1725
    new-array v9, v13, [J

    .line 1727
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v13, :cond_1

    .line 1728
    const-wide/16 v2, -0x3

    aput-wide v2, v9, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1727
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1731
    :cond_1
    const/4 v1, 0x0

    .line 1733
    const/4 v3, 0x0

    .line 1736
    :try_start_1
    invoke-interface {v12}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz p1, :cond_e

    const/4 v2, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v12, v2, v4, v5}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1737
    new-instance v2, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {v2, p0, p0}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1738
    :try_start_2
    invoke-interface {v12}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v3

    move/from16 v0, p1

    int-to-long v4, v0

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v8, v2

    .line 1741
    :goto_1
    :try_start_3
    iget-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v2, :cond_2

    .line 1742
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v13}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 1745
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    move-object v10, v1

    :goto_2
    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    if-ge v1, v13, :cond_9

    .line 1746
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    .line 1749
    :try_start_4
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1750
    iget v3, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    invoke-virtual {p0, v1, v4, v5}, Lcom/mysql/jdbc/PreparedStatement;->executeUpdateInternal(Ljava/lang/String;ZZ)J

    move-result-wide v4

    aput-wide v4, v9, v3

    .line 1753
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getFirstCharOfQuery()C

    move-result v1

    const/16 v3, 0x49

    if-ne v1, v3, :cond_4

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/PreparedStatement;->containsOnDuplicateKeyInString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/PreparedStatement;->getBatchedGeneratedKeys(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    move-object v1, v10

    .line 1745
    :cond_3
    :try_start_5
    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v10, v1

    goto :goto_2

    .line 1753
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 1755
    :cond_5
    :try_start_6
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;

    move-object v1, v0

    .line 1756
    iget v14, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    iget-object v2, v1, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    iget-object v3, v1, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStreams:[Ljava/io/InputStream;

    iget-object v4, v1, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isStream:[Z

    iget-object v5, v1, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->streamLengths:[I

    iget-object v6, v1, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isNull:[Z

    const/4 v7, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/PreparedStatement;->executeUpdateInternal([[B[Ljava/io/InputStream;[Z[I[ZZ)J

    move-result-wide v1

    aput-wide v1, v9, v14

    .line 1760
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->containsOnDuplicateKeyUpdateInSQL()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :goto_5
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/PreparedStatement;->getBatchedGeneratedKeys(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 1762
    :catch_0
    move-exception v1

    .line 1763
    :try_start_7
    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    const-wide/16 v3, -0x3

    aput-wide v3, v9, v2

    .line 1765
    iget-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->continueBatchOnError:Z

    if-eqz v2, :cond_6

    instance-of v2, v1, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    if-nez v2, :cond_6

    instance-of v2, v1, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    if-nez v2, :cond_6

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/PreparedStatement;->hasDeadlockOrTimeoutRolledBackTx(Ljava/sql/SQLException;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1769
    :cond_6
    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    new-array v2, v2, [J

    .line 1770
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    invoke-static {v9, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1772
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1780
    :catch_1
    move-exception v1

    move-object v2, v8

    .line 1782
    :goto_6
    :try_start_8
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1793
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1795
    :catchall_0
    move-exception v1

    move-object v8, v2

    :goto_7
    const/4 v2, -0x1

    :try_start_a
    iput v2, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    .line 1797
    if-eqz v8, :cond_7

    .line 1798
    invoke-virtual {v8}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1799
    invoke-interface {v12}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    .line 1802
    :cond_7
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    .line 1795
    throw v1

    .line 1807
    :catchall_1
    move-exception v1

    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v1

    .line 1760
    :cond_8
    const/4 v1, 0x0

    goto :goto_5

    .line 1777
    :cond_9
    if-eqz v10, :cond_a

    .line 1778
    :try_start_b
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v10, v9, v1}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_1

    .line 1795
    :catchall_2
    move-exception v1

    goto :goto_7

    :cond_a
    const/4 v1, -0x1

    :try_start_c
    iput v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    .line 1797
    if-eqz v8, :cond_b

    .line 1798
    invoke-virtual {v8}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1799
    invoke-interface {v12}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 1802
    :cond_b
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    move-object v1, v9

    .line 1806
    :cond_c
    if-eqz v1, :cond_d

    :goto_8
    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    return-object v1

    .line 1783
    :catch_2
    move-exception v1

    .line 1784
    :try_start_d
    iget v3, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    const-wide/16 v4, -0x3

    aput-wide v4, v9, v3

    .line 1786
    iget v3, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    new-array v3, v3, [J

    .line 1788
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    invoke-static {v9, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1790
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1806
    :cond_d
    const/4 v1, 0x0

    :try_start_e
    new-array v1, v1, [J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_8

    .line 1795
    :catchall_3
    move-exception v1

    move-object v8, v3

    goto :goto_7

    .line 1780
    :catch_3
    move-exception v1

    move-object v2, v3

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_6

    :cond_e
    move-object v8, v3

    goto/16 :goto_1
.end method

.method protected executeBatchedInserts(I)[J
    .locals 21
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1480
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v2

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 1481
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getValuesClause()Ljava/lang/String;

    move-result-object v2

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object/from16 v16, v0

    .line 1485
    if-nez v2, :cond_0

    .line 1486
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/PreparedStatement;->executeBatchSerially(I)[J

    move-result-object v2

    monitor-exit v15

    .line 1598
    :goto_0
    return-object v2

    .line 1489
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1491
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v2, :cond_1

    .line 1492
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mysql/jdbc/PreparedStatement;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 1495
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/PreparedStatement;->computeBatchSize(I)I

    move-result v2

    .line 1497
    if-ge v3, v2, :cond_13

    move v14, v3

    .line 1501
    :goto_1
    const/4 v4, 0x0

    .line 1503
    const/4 v13, 0x1

    .line 1504
    const-wide/16 v11, 0x0

    .line 1506
    const/4 v10, 0x0

    .line 1507
    const/4 v5, 0x0

    .line 1508
    const/4 v9, 0x0

    .line 1510
    new-array v6, v3, [J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1514
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Lcom/mysql/jdbc/PreparedStatement;->prepareBatchedInsertSQL(Lcom/mysql/jdbc/MySQLConnection;I)Lcom/mysql/jdbc/PreparedStatement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 1517
    :try_start_2
    invoke-interface/range {v16 .. v16}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz p1, :cond_12

    const/4 v2, 0x5

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v4, v7}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1518
    new-instance v4, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v8}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 1519
    :try_start_3
    invoke-interface/range {v16 .. v16}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v2

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v2, v4, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move-object v7, v4

    .line 1522
    :goto_2
    if-ge v3, v14, :cond_2

    move v2, v3

    .line 1528
    :goto_3
    mul-int v17, v2, v14

    .line 1530
    const/4 v2, 0x0

    move v4, v2

    move v5, v10

    move-object v2, v9

    move-wide v9, v11

    move v11, v13

    :goto_4
    move/from16 v0, v17

    if-ge v4, v0, :cond_3

    .line 1531
    if-eqz v4, :cond_11

    :try_start_4
    rem-int v12, v4, v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    if-nez v12, :cond_11

    .line 1533
    :try_start_5
    invoke-virtual {v8}, Lcom/mysql/jdbc/PreparedStatement;->executeLargeUpdate()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-wide v11

    add-long/2addr v9, v11

    .line 1538
    :goto_5
    :try_start_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/PreparedStatement;->getBatchedGeneratedKeys(Ljava/sql/Statement;)V

    .line 1539
    invoke-virtual {v8}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V

    .line 1540
    const/4 v11, 0x1

    move-object/from16 v19, v2

    move v2, v11

    move-wide v11, v9

    move-object/from16 v9, v19

    .line 1544
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    add-int/lit8 v10, v5, 0x1

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2, v5}, Lcom/mysql/jdbc/PreparedStatement;->setOneBatchedParameterSet(Ljava/sql/PreparedStatement;ILjava/lang/Object;)I

    move-result v5

    .line 1530
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v9

    move/from16 v19, v10

    move-wide v9, v11

    move v11, v5

    move/from16 v5, v19

    goto :goto_4

    .line 1525
    :cond_2
    div-int v2, v3, v14

    goto :goto_3

    .line 1534
    :catch_0
    move-exception v2

    .line 1535
    add-int/lit8 v11, v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v6, v2}, Lcom/mysql/jdbc/PreparedStatement;->handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    move-result-object v2

    goto :goto_5

    .line 1548
    :cond_3
    :try_start_7
    invoke-virtual {v8}, Lcom/mysql/jdbc/PreparedStatement;->executeLargeUpdate()J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_1

    move-result-wide v11

    add-long/2addr v9, v11

    .line 1553
    :goto_7
    :try_start_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/PreparedStatement;->getBatchedGeneratedKeys(Ljava/sql/Statement;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 1555
    sub-int v12, v3, v5

    .line 1557
    if-eqz v8, :cond_f

    .line 1558
    :try_start_9
    invoke-virtual {v8}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1559
    const/4 v4, 0x0

    .line 1564
    :goto_8
    if-lez v12, :cond_10

    .line 1565
    :try_start_a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v12}, Lcom/mysql/jdbc/PreparedStatement;->prepareBatchedInsertSQL(Lcom/mysql/jdbc/MySQLConnection;I)Lcom/mysql/jdbc/PreparedStatement;

    move-result-object v4

    .line 1567
    if-eqz v7, :cond_4

    .line 1568
    iput-object v4, v7, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    .line 1571
    :cond_4
    const/4 v8, 0x1

    move v11, v8

    .line 1573
    :goto_9
    if-ge v5, v3, :cond_7

    .line 1574
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    add-int/lit8 v8, v5, 0x1

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11, v5}, Lcom/mysql/jdbc/PreparedStatement;->setOneBatchedParameterSet(Ljava/sql/PreparedStatement;ILjava/lang/Object;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-result v5

    move v11, v5

    move v5, v8

    goto :goto_9

    .line 1549
    :catch_1
    move-exception v2

    .line 1550
    add-int/lit8 v4, v5, -0x1

    :try_start_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14, v6, v2}, Lcom/mysql/jdbc/PreparedStatement;->handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    move-result-object v2

    goto :goto_7

    .line 1557
    :catchall_0
    move-exception v2

    move-object v3, v5

    :goto_a
    if-eqz v4, :cond_5

    .line 1558
    :try_start_c
    invoke-virtual {v4}, Lcom/mysql/jdbc/PreparedStatement;->close()V

    .line 1557
    :cond_5
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1605
    :catchall_1
    move-exception v2

    move-object v7, v3

    :goto_b
    if-eqz v7, :cond_6

    .line 1606
    :try_start_d
    invoke-virtual {v7}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1607
    invoke-interface/range {v16 .. v16}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->purge()I

    .line 1610
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    .line 1605
    throw v2

    .line 1612
    :catchall_2
    move-exception v2

    monitor-exit v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw v2

    .line 1578
    :cond_7
    :try_start_e
    invoke-virtual {v4}, Lcom/mysql/jdbc/PreparedStatement;->executeLargeUpdate()J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5
    .catch Ljava/sql/SQLException; {:try_start_e .. :try_end_e} :catch_2

    move-result-wide v11

    add-long v8, v9, v11

    .line 1583
    :goto_c
    :try_start_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBatchedGeneratedKeys(Ljava/sql/Statement;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move-wide/from16 v19, v8

    move-object v8, v4

    move-wide/from16 v4, v19

    .line 1586
    :goto_d
    if-eqz v2, :cond_9

    .line 1587
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v2, v6, v3}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 1600
    :catchall_3
    move-exception v2

    move-object v3, v8

    :goto_e
    if-eqz v3, :cond_8

    .line 1601
    :try_start_11
    invoke-virtual {v3}, Lcom/mysql/jdbc/PreparedStatement;->close()V

    .line 1600
    :cond_8
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 1605
    :catchall_4
    move-exception v2

    goto :goto_b

    .line 1579
    :catch_2
    move-exception v2

    .line 1580
    add-int/lit8 v5, v5, -0x1

    :try_start_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12, v6, v2}, Lcom/mysql/jdbc/PreparedStatement;->handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    move-result-object v2

    move-wide v8, v9

    goto :goto_c

    .line 1590
    :cond_9
    const/4 v2, 0x1

    if-le v3, v2, :cond_b

    .line 1591
    const-wide/16 v9, 0x0

    cmp-long v2, v4, v9

    if-lez v2, :cond_a

    const-wide/16 v4, -0x2

    .line 1592
    :goto_f
    const/4 v2, 0x0

    :goto_10
    if-ge v2, v3, :cond_c

    .line 1593
    :try_start_13
    aput-wide v4, v6, v2

    .line 1592
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1591
    :cond_a
    const-wide/16 v4, 0x0

    goto :goto_f

    .line 1596
    :cond_b
    const/4 v2, 0x0

    aput-wide v4, v6, v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 1600
    :cond_c
    if-eqz v8, :cond_d

    .line 1601
    :try_start_14
    invoke-virtual {v8}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 1605
    :cond_d
    if-eqz v7, :cond_e

    .line 1606
    :try_start_15
    invoke-virtual {v7}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1607
    invoke-interface/range {v16 .. v16}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    .line 1610
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    .line 1598
    monitor-exit v15
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    move-object v2, v6

    goto/16 :goto_0

    .line 1600
    :catchall_5
    move-exception v2

    move-object v3, v4

    goto :goto_e

    .line 1557
    :catchall_6
    move-exception v2

    move-object v3, v5

    move-object v4, v8

    goto/16 :goto_a

    :catchall_7
    move-exception v2

    move-object v3, v4

    move-object v4, v8

    goto/16 :goto_a

    :catchall_8
    move-exception v2

    move-object v3, v7

    move-object v4, v8

    goto/16 :goto_a

    :cond_f
    move-object v4, v8

    goto/16 :goto_8

    :cond_10
    move-object v8, v4

    move-wide v4, v9

    goto :goto_d

    :cond_11
    move-object/from16 v19, v2

    move v2, v11

    move-wide v11, v9

    move-object/from16 v9, v19

    goto/16 :goto_6

    :cond_12
    move-object v7, v5

    goto/16 :goto_2

    :cond_13
    move v14, v2

    goto/16 :goto_1
.end method

.method protected executeInternal(ILcom/mysql/jdbc/Buffer;ZZ[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 13
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
    .line 1837
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 1840
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 1842
    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement;->numberOfExecutions:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mysql/jdbc/PreparedStatement;->numberOfExecutions:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1846
    const/4 v3, 0x0

    .line 1849
    :try_start_1
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement;->timeoutInMillis:I

    if-eqz v1, :cond_9

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1850
    new-instance v2, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {v2, p0, p0}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1851
    :try_start_2
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v1

    iget v3, p0, Lcom/mysql/jdbc/PreparedStatement;->timeoutInMillis:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v11, v2

    .line 1854
    :goto_0
    if-nez p6, :cond_0

    .line 1855
    :try_start_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->statementBegins()V

    .line 1858
    :cond_0
    const/4 v2, 0x0

    iget v5, p0, Lcom/mysql/jdbc/PreparedStatement;->resultSetType:I

    iget v6, p0, Lcom/mysql/jdbc/PreparedStatement;->resultSetConcurrency:I

    iget-object v8, p0, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move/from16 v7, p3

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-interface/range {v0 .. v10}, Lcom/mysql/jdbc/MySQLConnection;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1861
    if-eqz v11, :cond_8

    .line 1862
    invoke-virtual {v11}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1864
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    .line 1866
    iget-object v2, v11, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    if-eqz v2, :cond_3

    .line 1867
    iget-object v1, v11, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1889
    :catchall_0
    move-exception v1

    move-object v2, v11

    :goto_1
    if-nez p6, :cond_1

    .line 1890
    :try_start_4
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1893
    :cond_1
    if-eqz v2, :cond_2

    .line 1894
    invoke-virtual {v2}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1895
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1889
    :cond_2
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1900
    :catch_0
    move-exception v0

    .line 1901
    :try_start_5
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1904
    throw v0

    .line 1906
    :catchall_1
    move-exception v0

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 1870
    :cond_3
    const/4 v2, 0x0

    .line 1873
    :goto_2
    :try_start_6
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->cancelTimeoutMutex:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1874
    :try_start_7
    iget-boolean v4, p0, Lcom/mysql/jdbc/PreparedStatement;->wasCancelled:Z

    if-eqz v4, :cond_5

    .line 1877
    iget-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement;->wasCancelledByTimeout:Z

    if-eqz v1, :cond_4

    .line 1878
    new-instance v1, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    invoke-direct {v1}, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;-><init>()V

    .line 1883
    :goto_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    .line 1885
    throw v1

    .line 1887
    :catchall_2
    move-exception v1

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1889
    :catchall_3
    move-exception v1

    goto :goto_1

    .line 1880
    :cond_4
    :try_start_9
    new-instance v1, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    invoke-direct {v1}, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;-><init>()V

    goto :goto_3

    .line 1887
    :cond_5
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1889
    if-nez p6, :cond_6

    .line 1890
    :try_start_a
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1893
    :cond_6
    if-eqz v2, :cond_7

    .line 1894
    invoke-virtual {v2}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1895
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_0

    .line 1899
    :cond_7
    :try_start_b
    monitor-exit v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    return-object v1

    .line 1889
    :catchall_4
    move-exception v1

    move-object v2, v3

    goto :goto_1

    :cond_8
    move-object v2, v11

    goto :goto_2

    :cond_9
    move-object v11, v3

    goto/16 :goto_0
.end method

.method public executeLargeUpdate()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5104
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/PreparedStatement;->executeUpdateInternal(ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected executePreparedBatchAsMultiStatement(I)[J
    .locals 18
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1290
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v2

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 1292
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/PreparedStatement;->batchedValuesClause:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mysql/jdbc/PreparedStatement;->batchedValuesClause:Ljava/lang/String;

    .line 1296
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 1298
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getAllowMultiQueries()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v14

    .line 1299
    const/4 v5, 0x0

    .line 1302
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->clearWarnings()V

    .line 1304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 1306
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v2, :cond_1

    .line 1307
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mysql/jdbc/PreparedStatement;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 1310
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/PreparedStatement;->computeBatchSize(I)I

    move-result v2

    .line 1312
    if-ge v4, v2, :cond_17

    move v11, v4

    .line 1316
    :goto_0
    const/4 v3, 0x0

    .line 1318
    const/4 v10, 0x1

    .line 1320
    const/4 v9, 0x0

    .line 1321
    const/4 v8, 0x0

    .line 1322
    new-array v15, v4, [J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1323
    const/4 v7, 0x0

    .line 1326
    if-nez v14, :cond_2

    .line 1327
    :try_start_2
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->enableMultiQueries()V

    .line 1330
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v2, :cond_5

    .line 1331
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/mysql/jdbc/PreparedStatement;->generateMultiStatementForBatch(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    invoke-interface {v13, v2, v6}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/Wrapper;

    const-class v6, Ljava/sql/PreparedStatement;

    invoke-interface {v2, v6}, Lcom/mysql/jdbc/Wrapper;->unwrap(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/sql/PreparedStatement;

    move-object v3, v2

    .line 1338
    :goto_1
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    const/4 v2, 0x5

    const/4 v6, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v13, v2, v6, v0}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1339
    new-instance v6, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    move-object v0, v3

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    move-object v2, v0

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v2}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1340
    :try_start_3
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v2

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v6, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object v5, v6

    .line 1343
    :cond_3
    if-ge v4, v11, :cond_6

    move v2, v4

    .line 1349
    :goto_2
    mul-int v16, v2, v11

    .line 1351
    const/4 v2, 0x0

    move-object v6, v7

    move v7, v9

    move v9, v8

    move v8, v2

    move v2, v10

    :goto_3
    move/from16 v0, v16

    if-ge v8, v0, :cond_7

    .line 1352
    if-eqz v8, :cond_4

    :try_start_4
    rem-int v10, v8, v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-nez v10, :cond_4

    .line 1354
    :try_start_5
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1359
    :goto_4
    :try_start_6
    move-object v0, v3

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    move-object v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9, v15}, Lcom/mysql/jdbc/PreparedStatement;->processMultiCountsAndKeys(Lcom/mysql/jdbc/StatementImpl;I[J)I

    move-result v9

    .line 1361
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->clearParameters()V

    .line 1362
    const/4 v2, 0x1

    .line 1365
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    move-object/from16 v17, v0

    add-int/lit8 v10, v7, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v7}, Lcom/mysql/jdbc/PreparedStatement;->setOneBatchedParameterSet(Ljava/sql/PreparedStatement;ILjava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-result v7

    .line 1351
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v2, v7

    move v7, v10

    goto :goto_3

    .line 1334
    :cond_5
    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/mysql/jdbc/PreparedStatement;->generateMultiStatementForBatch(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/Wrapper;

    const-class v6, Ljava/sql/PreparedStatement;

    invoke-interface {v2, v6}, Lcom/mysql/jdbc/Wrapper;->unwrap(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/sql/PreparedStatement;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v3, v2

    goto/16 :goto_1

    .line 1346
    :cond_6
    :try_start_8
    div-int v2, v4, v11

    goto :goto_2

    .line 1355
    :catch_0
    move-exception v2

    .line 1356
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11, v15, v2}, Lcom/mysql/jdbc/PreparedStatement;->handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-result-object v6

    goto :goto_4

    .line 1369
    :cond_7
    :try_start_9
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_1

    .line 1374
    :goto_5
    :try_start_a
    move-object v0, v3

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    move-object v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9, v15}, Lcom/mysql/jdbc/PreparedStatement;->processMultiCountsAndKeys(Lcom/mysql/jdbc/StatementImpl;I[J)I

    move-result v9

    .line 1376
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->clearParameters()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 1378
    sub-int v10, v4, v7

    .line 1380
    if-eqz v3, :cond_8

    .line 1381
    :try_start_b
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1382
    const/4 v3, 0x0

    .line 1387
    :cond_8
    if-lez v10, :cond_16

    .line 1389
    :try_start_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v2, :cond_d

    .line 1390
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/mysql/jdbc/PreparedStatement;->generateMultiStatementForBatch(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-interface {v13, v2, v8}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;

    move-result-object v3

    .line 1395
    :goto_6
    if-eqz v5, :cond_9

    .line 1396
    move-object v0, v3

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    move-object v2, v0

    iput-object v2, v5, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    .line 1399
    :cond_9
    const/4 v2, 0x1

    move v8, v2

    move v2, v7

    .line 1401
    :goto_7
    if-ge v2, v4, :cond_e

    .line 1402
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    add-int/lit8 v7, v2, 0x1

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v2}, Lcom/mysql/jdbc/PreparedStatement;->setOneBatchedParameterSet(Ljava/sql/PreparedStatement;ILjava/lang/Object;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-result v2

    move v8, v2

    move v2, v7

    goto :goto_7

    .line 1370
    :catch_1
    move-exception v2

    .line 1371
    add-int/lit8 v6, v7, -0x1

    :try_start_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11, v15, v2}, Lcom/mysql/jdbc/PreparedStatement;->handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    move-result-object v6

    goto :goto_5

    .line 1380
    :catchall_0
    move-exception v2

    move-object v4, v5

    :goto_8
    if-eqz v3, :cond_a

    .line 1381
    :try_start_e
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    .line 1380
    :cond_a
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1439
    :catchall_1
    move-exception v2

    move-object v5, v4

    :goto_9
    if-eqz v5, :cond_b

    .line 1440
    :try_start_f
    invoke-virtual {v5}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1441
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->purge()I

    .line 1444
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    .line 1446
    if-nez v14, :cond_c

    .line 1447
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mysql/jdbc/MysqlIO;->disableMultiQueries()V

    .line 1450
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->clearBatch()V

    .line 1439
    throw v2

    .line 1452
    :catchall_2
    move-exception v2

    monitor-exit v12
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    throw v2

    .line 1392
    :cond_d
    :try_start_10
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/mysql/jdbc/PreparedStatement;->generateMultiStatementForBatch(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    move-result-object v3

    goto :goto_6

    .line 1406
    :cond_e
    :try_start_11
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3
    .catch Ljava/sql/SQLException; {:try_start_11 .. :try_end_11} :catch_2

    move-object v4, v6

    .line 1411
    :goto_a
    :try_start_12
    move-object v0, v3

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    move-object v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9, v15}, Lcom/mysql/jdbc/PreparedStatement;->processMultiCountsAndKeys(Lcom/mysql/jdbc/StatementImpl;I[J)I

    .line 1413
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->clearParameters()V

    move-object v2, v4

    .line 1416
    :goto_b
    if-eqz v5, :cond_11

    .line 1417
    iget-object v4, v5, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    if-eqz v4, :cond_10

    .line 1418
    iget-object v2, v5, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 1434
    :catchall_3
    move-exception v2

    if-eqz v3, :cond_f

    .line 1435
    :try_start_13
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    .line 1434
    :cond_f
    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 1439
    :catchall_4
    move-exception v2

    goto :goto_9

    .line 1407
    :catch_2
    move-exception v4

    .line 1408
    add-int/lit8 v2, v2, -0x1

    :try_start_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10, v15, v4}, Lcom/mysql/jdbc/PreparedStatement;->handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v4

    goto :goto_a

    .line 1421
    :cond_10
    invoke-virtual {v5}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1423
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Timer;->purge()I

    .line 1425
    const/4 v5, 0x0

    .line 1428
    :cond_11
    if-eqz v2, :cond_12

    .line 1429
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v15, v4}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 1434
    :cond_12
    if-eqz v3, :cond_13

    .line 1435
    :try_start_15
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 1439
    :cond_13
    if-eqz v5, :cond_14

    .line 1440
    :try_start_16
    invoke-virtual {v5}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1441
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    .line 1444
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    .line 1446
    if-nez v14, :cond_15

    .line 1447
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->disableMultiQueries()V

    .line 1450
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->clearBatch()V

    .line 1432
    monitor-exit v12
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    return-object v15

    .line 1380
    :catchall_5
    move-exception v2

    move-object v4, v6

    goto/16 :goto_8

    :catchall_6
    move-exception v2

    move-object v4, v5

    goto/16 :goto_8

    :cond_16
    move-object v2, v6

    goto :goto_b

    :cond_17
    move v11, v2

    goto/16 :goto_0
.end method

.method public executeQuery()Ljava/sql/ResultSet;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1919
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 1921
    :try_start_0
    iget-object v10, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 1923
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    iget-char v1, p0, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/PreparedStatement;->checkForDml(Ljava/lang/String;C)V

    .line 1925
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 1927
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    .line 1929
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->implicitlyCloseAllOpenResults()V

    .line 1931
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearWarnings()V

    .line 1933
    iget-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->doPingInstead:Z

    if-eqz v0, :cond_0

    .line 1934
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->doPingInstead()V

    .line 1936
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v9

    .line 1982
    :goto_0
    return-object v0

    .line 1939
    :cond_0
    invoke-virtual {p0, v10}, Lcom/mysql/jdbc/PreparedStatement;->setupStreamingTimeout(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1941
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->fillSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v2

    .line 1945
    invoke-interface {v10}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1946
    invoke-interface {v10}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v0

    .line 1947
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    invoke-interface {v10, v1}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    move-object v8, v0

    .line 1954
    :goto_1
    invoke-interface {v10}, Lcom/mysql/jdbc/MySQLConnection;->getCacheResultSetMetadata()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1955
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-interface {v10, v0}, Lcom/mysql/jdbc/MySQLConnection;->getCachedMetaData(Ljava/lang/String;)Lcom/mysql/jdbc/CachedResultSetMetaData;

    move-result-object v0

    move-object v7, v0

    .line 1960
    :goto_2
    if-eqz v7, :cond_1

    .line 1961
    iget-object v5, v7, Lcom/mysql/jdbc/CachedResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    .line 1964
    :cond_1
    iget v0, p0, Lcom/mysql/jdbc/PreparedStatement;->maxRows:I

    invoke-interface {v10, v0}, Lcom/mysql/jdbc/MySQLConnection;->setSessionMaxRows(I)V

    .line 1966
    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement;->maxRows:I

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->createStreamingResultSet()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/PreparedStatement;->executeInternal(ILcom/mysql/jdbc/Buffer;ZZ[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1968
    if-eqz v8, :cond_2

    .line 1969
    invoke-interface {v10, v8}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    .line 1972
    :cond_2
    if-eqz v7, :cond_4

    .line 1973
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v10, v0, v7, v1}, Lcom/mysql/jdbc/MySQLConnection;->initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    .line 1980
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateID()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mysql/jdbc/PreparedStatement;->lastInsertId:J

    .line 1982
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v9

    goto :goto_0

    .line 1983
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1975
    :cond_4
    :try_start_1
    invoke-interface {v10}, Lcom/mysql/jdbc/MySQLConnection;->getCacheResultSetMetadata()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1976
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v10, v0, v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_5
    move-object v7, v5

    goto :goto_2

    :cond_6
    move-object v8, v5

    goto :goto_1
.end method

.method public executeUpdate()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1998
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->executeLargeUpdate()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt(J)I

    move-result v0

    return v0
.end method

.method protected executeUpdateInternal(ZZ)J
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2007
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 2008
    if-eqz p1, :cond_0

    .line 2009
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearWarnings()V

    .line 2010
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 2013
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    move-object v0, p0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/PreparedStatement;->executeUpdateInternal([[B[Ljava/io/InputStream;[Z[I[ZZ)J

    move-result-wide v0

    monitor-exit v7

    return-wide v0

    .line 2014
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected executeUpdateInternal([[B[Ljava/io/InputStream;[Z[I[ZZ)J
    .locals 11
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
    .line 2039
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 2041
    :try_start_0
    iget-object v10, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 2043
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreparedStatement.34"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PreparedStatement.35"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2103
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2048
    :cond_0
    :try_start_1
    iget-char v0, p0, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    const/16 v1, 0x53

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->isSelectQuery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2049
    const-string v0, "PreparedStatement.37"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "01S03"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2052
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    .line 2054
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->implicitlyCloseAllOpenResults()V

    .line 2058
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/PreparedStatement;->fillSendPacket([[B[Ljava/io/InputStream;[Z[I)Lcom/mysql/jdbc/Buffer;

    move-result-object v2

    .line 2060
    const/4 v0, 0x0

    .line 2062
    invoke-interface {v10}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2063
    invoke-interface {v10}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v0

    .line 2064
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    invoke-interface {v10, v1}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    move-object v8, v0

    .line 2070
    :goto_0
    const/4 v0, -0x1

    invoke-interface {v10, v0}, Lcom/mysql/jdbc/MySQLConnection;->setSessionMaxRows(I)V

    .line 2072
    const/4 v0, 0x0

    .line 2074
    iget-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v1, :cond_6

    .line 2075
    invoke-interface {v10}, Lcom/mysql/jdbc/MySQLConnection;->isReadInfoMsgEnabled()Z

    move-result v0

    .line 2076
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V

    move v7, v0

    .line 2079
    :goto_1
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/PreparedStatement;->executeInternal(ILcom/mysql/jdbc/Buffer;ZZ[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 2081
    iget-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v1, :cond_2

    .line 2082
    invoke-interface {v10, v7}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V

    .line 2083
    iget-char v1, p0, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setFirstCharOfQuery(C)V

    .line 2086
    :cond_2
    if-eqz v8, :cond_3

    .line 2087
    invoke-interface {v10, v8}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    .line 2090
    :cond_3
    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 2092
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateCount()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mysql/jdbc/PreparedStatement;->updateCount:J

    .line 2094
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->containsOnDuplicateKeyUpdateInSQL()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement;->compensateForOnDuplicateKeyUpdate:Z

    if-eqz v1, :cond_5

    .line 2095
    iget-wide v1, p0, Lcom/mysql/jdbc/PreparedStatement;->updateCount:J

    const-wide/16 v3, 0x2

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    iget-wide v1, p0, Lcom/mysql/jdbc/PreparedStatement;->updateCount:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    .line 2096
    :cond_4
    const-wide/16 v1, 0x1

    iput-wide v1, p0, Lcom/mysql/jdbc/PreparedStatement;->updateCount:J

    .line 2100
    :cond_5
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateID()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mysql/jdbc/PreparedStatement;->lastInsertId:J

    .line 2102
    iget-wide v0, p0, Lcom/mysql/jdbc/PreparedStatement;->updateCount:J

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-wide v0

    :cond_6
    move v7, v0

    goto :goto_1

    :cond_7
    move-object v8, v0

    goto :goto_0
.end method

.method protected fillSendPacket()Lcom/mysql/jdbc/Buffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2120
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2121
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->fillSendPacket([[B[Ljava/io/InputStream;[Z[I)Lcom/mysql/jdbc/Buffer;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected fillSendPacket([[B[Ljava/io/InputStream;[Z[I)Lcom/mysql/jdbc/Buffer;
    .locals 10
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
    const/4 v6, 0x0

    .line 2144
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 2145
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getSharedSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v8

    .line 2147
    invoke-virtual {v8}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 2149
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2151
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v9

    .line 2158
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getStatementComment()Ljava/lang/String;

    move-result-object v0

    .line 2160
    const/4 v1, 0x0

    .line 2162
    if-eqz v0, :cond_7

    .line 2163
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    if-eqz v1, :cond_1

    .line 2164
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 2170
    :goto_0
    array-length v1, v0

    add-int/2addr v1, v6

    .line 2171
    add-int/lit8 v1, v1, 0x6

    :goto_1
    move v2, v6

    .line 2174
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 2175
    aget-boolean v3, p3, v2

    if-eqz v3, :cond_0

    if-eqz v9, :cond_0

    .line 2176
    aget v3, p4, v2

    add-int/2addr v1, v3

    .line 2174
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2166
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v0

    goto :goto_0

    .line 2180
    :cond_2
    if-eqz v1, :cond_3

    .line 2181
    invoke-virtual {v8, v1}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 2184
    :cond_3
    if-eqz v0, :cond_4

    .line 2185
    sget-object v1, Lcom/mysql/jdbc/Constants;->SLASH_STAR_SPACE_AS_BYTES:[B

    invoke-virtual {v8, v1}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 2186
    invoke-virtual {v8, v0}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 2187
    sget-object v0, Lcom/mysql/jdbc/Constants;->SPACE_STAR_SLASH_SPACE_AS_BYTES:[B

    invoke-virtual {v8, v0}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 2190
    :cond_4
    :goto_3
    array-length v0, p1

    if-ge v6, v0, :cond_6

    .line 2191
    aget-object v0, p1, v6

    aget-object v1, p2, v6

    invoke-direct {p0, v0, v1, v6}, Lcom/mysql/jdbc/PreparedStatement;->checkAllParametersSet([BLjava/io/InputStream;I)V

    .line 2193
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    aget-object v0, v0, v6

    invoke-virtual {v8, v0}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 2195
    aget-boolean v0, p3, v6

    if-eqz v0, :cond_5

    .line 2196
    aget-object v2, p2, v6

    const/4 v3, 0x1

    aget v4, p4, v6

    move-object v0, p0

    move-object v1, v8

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/PreparedStatement;->streamToBytes(Lcom/mysql/jdbc/Buffer;Ljava/io/InputStream;ZIZ)V

    .line 2190
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2198
    :cond_5
    aget-object v0, p1, v6

    invoke-virtual {v8, v0}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    goto :goto_4

    .line 2205
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2202
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    array-length v1, p1

    aget-object v0, v0, v1

    invoke-virtual {v8, v0}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 2204
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v8

    :cond_7
    move-object v0, v1

    move v1, v6

    goto :goto_1
.end method

.method public getBytesRepresentation(I)[B
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x27

    .line 2260
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2261
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 2262
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    aget v3, v3, p1

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v4

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->streamToBytes(Ljava/io/InputStream;ZIZ)[B

    move-result-object v0

    monitor-exit v2

    .line 2279
    :goto_0
    return-object v0

    .line 2266
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    aget-object v1, v0, p1

    .line 2268
    if-nez v1, :cond_1

    .line 2269
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_0

    .line 2280
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2272
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    aget-byte v0, v1, v0

    if-ne v0, v3, :cond_2

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v1, v0

    if-ne v0, v3, :cond_2

    .line 2273
    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [B

    .line 2274
    const/4 v3, 0x1

    const/4 v4, 0x0

    array-length v5, v1

    add-int/lit8 v5, v5, -0x2

    invoke-static {v1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2276
    monitor-exit v2

    goto :goto_0

    .line 2279
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method protected getBytesRepresentationForBatch(II)[B
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x27

    .line 2291
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2292
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2293
    instance-of v1, v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2295
    :try_start_1
    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :try_start_2
    monitor-exit v2

    .line 2319
    :goto_0
    return-object v0

    .line 2297
    :catch_0
    move-exception v0

    .line 2298
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PreparedStatement.32"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "PreparedStatement.33"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2320
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2302
    :cond_0
    :try_start_3
    check-cast v0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;

    .line 2303
    iget-object v1, v0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isStream:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_1

    .line 2304
    iget-object v1, v0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStreams:[Ljava/io/InputStream;

    aget-object v1, v1, p1

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->streamLengths:[I

    aget v0, v0, p1

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v4

    invoke-direct {p0, v1, v3, v0, v4}, Lcom/mysql/jdbc/PreparedStatement;->streamToBytes(Ljava/io/InputStream;ZIZ)[B

    move-result-object v0

    monitor-exit v2

    goto :goto_0

    .line 2307
    :cond_1
    iget-object v0, v0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    aget-object v1, v0, p1

    .line 2308
    if-nez v1, :cond_2

    .line 2309
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_0

    .line 2312
    :cond_2
    const/4 v0, 0x0

    aget-byte v0, v1, v0

    if-ne v0, v3, :cond_3

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v1, v0

    if-ne v0, v3, :cond_3

    .line 2313
    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [B

    .line 2314
    const/4 v3, 0x1

    const/4 v4, 0x0

    array-length v5, v1

    add-int/lit8 v5, v5, -0x2

    invoke-static {v1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2316
    monitor-exit v2

    goto :goto_0

    .line 2319
    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method public getDateTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1812
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1813
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLocationOfOnDuplicateKeyUpdate()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget v0, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    return v0
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2497
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v2

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2505
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->isSelectQuery()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2506
    monitor-exit v4

    .line 2563
    :goto_0
    return-object v0

    .line 2512
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->pstmtResultMetaData:Ljava/sql/ResultSetMetaData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_6

    .line 2514
    :try_start_1
    new-instance v3, Lcom/mysql/jdbc/PreparedStatement;

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    iget-object v7, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    invoke-direct {v3, v2, v5, v6, v7}, Lcom/mysql/jdbc/PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2516
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {v3, v2}, Lcom/mysql/jdbc/PreparedStatement;->setMaxRows(I)V

    .line 2518
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    array-length v2, v2

    .line 2520
    :goto_1
    if-gt v1, v2, :cond_1

    .line 2521
    const-string v5, ""

    invoke-virtual {v3, v1, v5}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2520
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2524
    :cond_1
    invoke-virtual {v3}, Lcom/mysql/jdbc/PreparedStatement;->execute()Z

    move-result v1

    .line 2526
    if-eqz v1, :cond_4

    .line 2527
    invoke-virtual {v3}, Lcom/mysql/jdbc/PreparedStatement;->getResultSet()Ljava/sql/ResultSet;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    .line 2529
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->pstmtResultMetaData:Ljava/sql/ResultSetMetaData;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2537
    :goto_2
    if-eqz v2, :cond_2

    .line 2539
    :try_start_4
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2547
    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    .line 2549
    :try_start_5
    invoke-virtual {v3}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2557
    :cond_3
    :goto_4
    if-eqz v0, :cond_6

    .line 2558
    :try_start_6
    throw v0

    .line 2564
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 2531
    :cond_4
    :try_start_7
    new-instance v1, Lcom/mysql/jdbc/ResultSetMetaData;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/mysql/jdbc/Field;

    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getUseOldAliasMetadataBehavior()Z

    move-result v5

    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v6

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/mysql/jdbc/ResultSetMetaData;-><init>([Lcom/mysql/jdbc/Field;ZZLcom/mysql/jdbc/ExceptionInterceptor;)V

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->pstmtResultMetaData:Ljava/sql/ResultSetMetaData;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v2, v0

    goto :goto_2

    .line 2535
    :cond_5
    :try_start_8
    throw v1

    .line 2563
    :cond_6
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->pstmtResultMetaData:Ljava/sql/ResultSetMetaData;

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 2535
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 2537
    :goto_5
    if-eqz v2, :cond_7

    .line 2539
    :try_start_9
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_0

    .line 2547
    :cond_7
    :goto_6
    if-eqz v3, :cond_8

    .line 2549
    :try_start_a
    invoke-virtual {v3}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_1

    .line 2557
    :cond_8
    :goto_7
    if-eqz v0, :cond_5

    .line 2558
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2540
    :catch_0
    move-exception v0

    goto :goto_6

    .line 2550
    :catch_1
    move-exception v0

    goto :goto_7

    .line 2540
    :catch_2
    move-exception v0

    goto :goto_3

    .line 2550
    :catch_3
    move-exception v0

    goto :goto_4

    .line 2535
    :catchall_2
    move-exception v1

    move-object v2, v0

    goto :goto_5

    :catchall_3
    move-exception v1

    goto :goto_5
.end method

.method public getNonRewrittenSql()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2243
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2244
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    const-string v2, " of: "

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2246
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 2247
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 2250
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 2251
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getParameterBindings()Lcom/mysql/jdbc/ParameterBindings;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4868
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4869
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;

    invoke-direct {v0, p0}, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;-><init>(Lcom/mysql/jdbc/PreparedStatement;)V

    monitor-exit v1

    return-object v0

    .line 4870
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getParameterIndexOffset()I
    .locals 1

    .prologue
    .line 4623
    const/4 v0, 0x0

    return v0
.end method

.method public getParameterMetaData()Ljava/sql/ParameterMetaData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2577
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2578
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    if-nez v0, :cond_0

    .line 2579
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getGenerateSimpleParameterMetadata()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2580
    new-instance v0, Lcom/mysql/jdbc/MysqlParameterMetadata;

    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    invoke-direct {v0, v2}, Lcom/mysql/jdbc/MysqlParameterMetadata;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    .line 2586
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    monitor-exit v1

    return-object v0

    .line 2582
    :cond_1
    new-instance v0, Lcom/mysql/jdbc/MysqlParameterMetadata;

    const/4 v2, 0x0

    iget v3, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/mysql/jdbc/MysqlParameterMetadata;-><init>([Lcom/mysql/jdbc/Field;ILcom/mysql/jdbc/ExceptionInterceptor;)V

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    goto :goto_0

    .line 2587
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getParseInfo()Lcom/mysql/jdbc/PreparedStatement$ParseInfo;
    .locals 1

    .prologue
    .line 2591
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    return-object v0
.end method

.method public getPreparedSql()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5049
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5050
    :try_start_1
    iget v0, p0, Lcom/mysql/jdbc/PreparedStatement;->rewrittenBatchSize:I

    if-nez v0, :cond_0

    .line 5051
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5055
    :goto_0
    return-object v0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->getSqlForBatch(Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 5059
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 5060
    :catch_0
    move-exception v0

    .line 5061
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 5056
    :catch_1
    move-exception v0

    .line 5057
    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public getRewrittenBatchSize()I
    .locals 1

    .prologue
    .line 2239
    iget v0, p0, Lcom/mysql/jdbc/PreparedStatement;->rewrittenBatchSize:I

    return v0
.end method

.method public getUpdateCount()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5067
    invoke-super {p0}, Lcom/mysql/jdbc/StatementImpl;->getUpdateCount()I

    move-result v0

    .line 5069
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->containsOnDuplicateKeyUpdateInSQL()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement;->compensateForOnDuplicateKeyUpdate:Z

    if-eqz v1, :cond_1

    .line 5070
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 5071
    :cond_0
    const/4 v0, 0x1

    .line 5075
    :cond_1
    return v0
.end method

.method protected getValuesClause()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-object v0, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->valuesClause:Ljava/lang/String;

    return-object v0
.end method

.method isNull(I)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2645
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2646
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    aget-boolean v0, v0, p1

    monitor-exit v1

    return v0

    .line 2647
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected isSelectQuery()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2568
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 2569
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    const-string v1, "\'\""

    const-string v2, "\'\""

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/StringUtils;->stripComments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SELECT"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    monitor-exit v7

    return v0

    .line 2570
    :catchall_0
    move-exception v0

    monitor-exit v7
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
    .line 2220
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2221
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/PreparedStatement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rewritten batch of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    invoke-virtual {v4, p2}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->getParseInfoForBatch(I)Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    move-result-object v4

    invoke-direct {v0, p1, v2, v3, v4}, Lcom/mysql/jdbc/PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)V

    .line 2223
    iget-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    .line 2224
    iput p2, v0, Lcom/mysql/jdbc/PreparedStatement;->rewrittenBatchSize:I

    .line 2226
    monitor-exit v1

    return-object v0

    .line 2227
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected realClose(ZZ)V
    .locals 19
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2691
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 2693
    if-nez v1, :cond_0

    .line 2727
    :goto_0
    return-void

    .line 2697
    :cond_0
    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17

    .line 2701
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mysql/jdbc/PreparedStatement;->isClosed:Z

    if-eqz v1, :cond_1

    .line 2702
    monitor-exit v17

    goto :goto_0

    .line 2726
    :catchall_0
    move-exception v1

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2705
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mysql/jdbc/PreparedStatement;->useUsageAdvisor:Z

    if-eqz v1, :cond_2

    .line 2706
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mysql/jdbc/PreparedStatement;->numberOfExecutions:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    .line 2707
    const-string v1, "PreparedStatement.43"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/PreparedStatement;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-object/from16 v18, v0

    new-instance v1, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v2, 0x0

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/mysql/jdbc/PreparedStatement;->connectionId:J

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getId()I

    move-result v7

    const/4 v8, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    sget-object v13, Lcom/mysql/jdbc/Constants;->MILLIS_I18N:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mysql/jdbc/PreparedStatement;->pointOfOrigin:Ljava/lang/String;

    invoke-direct/range {v1 .. v16}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 2714
    :cond_2
    invoke-super/range {p0 .. p2}, Lcom/mysql/jdbc/StatementImpl;->realClose(ZZ)V

    .line 2716
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mysql/jdbc/PreparedStatement;->dbmd:Ljava/sql/DatabaseMetaData;

    .line 2717
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    .line 2718
    const/4 v1, 0x0

    check-cast v1, [[B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    .line 2719
    const/4 v1, 0x0

    check-cast v1, [[B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    .line 2720
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    .line 2721
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    .line 2722
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    .line 2723
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    .line 2724
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    .line 2725
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    .line 2726
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
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
    .line 2742
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public setAsciiStream(ILjava/io/InputStream;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4627
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;I)V

    .line 4628
    return-void
.end method

.method public setAsciiStream(ILjava/io/InputStream;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2767
    if-nez p2, :cond_0

    .line 2768
    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 2772
    :goto_0
    return-void

    .line 2770
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    goto :goto_0
.end method

.method public setAsciiStream(ILjava/io/InputStream;J)V
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
    .line 4631
    long-to-int v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;I)V

    .line 4632
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x7d5

    aput v2, v0, v1

    .line 4633
    return-void
.end method

.method public setBigDecimal(ILjava/math/BigDecimal;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 2787
    if-nez p2, :cond_0

    .line 2788
    invoke-virtual {p0, p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 2794
    :goto_0
    return-void

    .line 2790
    :cond_0
    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->consistentToString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->fixDecimalExponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 2792
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    aput v3, v0, v1

    goto :goto_0
.end method

.method public setBinaryStream(ILjava/io/InputStream;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4636
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 4637
    return-void
.end method

.method public setBinaryStream(ILjava/io/InputStream;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 2816
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2817
    if-nez p2, :cond_0

    .line 2818
    const/4 v0, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 2838
    :goto_0
    monitor-exit v1

    .line 2839
    return-void

    .line 2820
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v0

    .line 2822
    if-lt p1, v3, :cond_1

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    array-length v2, v2

    if-le p1, v2, :cond_2

    .line 2823
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreparedStatement.2"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "PreparedStatement.3"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "PreparedStatement.4"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2838
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2827
    :cond_2
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    if-ne p1, v3, :cond_3

    .line 2828
    :try_start_1
    const-string v0, "Can\'t set IN parameter for return value of stored function call."

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2832
    :cond_3
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    add-int/lit8 v3, p1, -0x1

    add-int/2addr v3, v0

    aput-object p2, v2, v3

    .line 2833
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    add-int/lit8 v3, p1, -0x1

    add-int/2addr v3, v0

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 2834
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    add-int/lit8 v3, p1, -0x1

    add-int/2addr v3, v0

    aput p3, v2, v3

    .line 2835
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    add-int/lit8 v3, p1, -0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    .line 2836
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x7d4

    aput v3, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setBinaryStream(ILjava/io/InputStream;J)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4640
    long-to-int v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 4641
    return-void
.end method

.method public setBlob(ILjava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4644
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;)V

    .line 4645
    return-void
.end method

.method public setBlob(ILjava/io/InputStream;J)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2842
    long-to-int v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 2843
    return-void
.end method

.method public setBlob(ILjava/sql/Blob;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x7d4

    const/16 v5, 0x27

    .line 2857
    if-nez p2, :cond_0

    .line 2858
    invoke-virtual {p0, p1, v6}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 2870
    :goto_0
    return-void

    .line 2860
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2862
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2863
    const-wide/16 v1, 0x1

    invoke-interface {p2}, Ljava/sql/Blob;->length()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {p2, v1, v2, v3}, Ljava/sql/Blob;->getBytes(JI)[B

    move-result-object v1

    invoke-interface {p2}, Ljava/sql/Blob;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {p0, v1, v0, v2}, Lcom/mysql/jdbc/PreparedStatement;->escapeblockFast([BLjava/io/ByteArrayOutputStream;I)V

    .line 2864
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2866
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V

    .line 2868
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    aput v6, v0, v1

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
    .line 2885
    iget-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->useTrueBoolean:Z

    if-eqz v0, :cond_1

    .line 2886
    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 2892
    :goto_1
    return-void

    .line 2886
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 2888
    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "\'t\'"

    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 2890
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x10

    aput v2, v0, v1

    goto :goto_1

    .line 2888
    :cond_2
    const-string v0, "\'f\'"

    goto :goto_2
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
    .line 2907
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 2909
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, -0x6

    aput v2, v0, v1

    .line 2910
    return-void
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
    const/4 v0, 0x1

    .line 2926
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[BZZ)V

    .line 2928
    if-eqz p2, :cond_0

    .line 2929
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, -0x2

    aput v2, v0, v1

    .line 2931
    :cond_0
    return-void
.end method

.method protected setBytes(I[BZZ)V
    .locals 9
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
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 2934
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2935
    if-nez p2, :cond_0

    .line 2936
    const/4 v0, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 3051
    :goto_0
    monitor-exit v3

    .line 3052
    :goto_1
    return-void

    .line 2938
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2941
    :try_start_1
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p4, :cond_3

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/mysql/jdbc/CharsetMapping;->isMultibyteCharset(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2946
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, p2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2947
    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2948
    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2950
    :goto_2
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 2951
    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    div-int/lit8 v2, v2, 0x10

    .line 2952
    aget-byte v4, p2, v0

    and-int/lit16 v4, v4, 0xff

    rem-int/lit8 v4, v4, 0x10

    .line 2954
    sget-object v5, Lcom/mysql/jdbc/PreparedStatement;->HEX_DIGITS:[B

    aget-byte v2, v5, v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2955
    sget-object v2, Lcom/mysql/jdbc/PreparedStatement;->HEX_DIGITS:[B

    aget-byte v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2950
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2958
    :cond_2
    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2960
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2962
    :try_start_2
    monitor-exit v3

    goto :goto_1

    .line 3051
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2964
    :catch_0
    move-exception v0

    .line 2965
    :try_start_3
    throw v0

    .line 2966
    :catch_1
    move-exception v0

    .line 2967
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 2968
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2969
    throw v1

    .line 2973
    :cond_3
    array-length v4, p2

    .line 2975
    const/4 v1, 0x2

    .line 2977
    if-eqz p3, :cond_6

    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2979
    :goto_3
    if-eqz v2, :cond_4

    .line 2980
    const/16 v1, 0x9

    .line 2983
    :cond_4
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    add-int/2addr v1, v4

    invoke-direct {v5, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2985
    if-eqz v2, :cond_5

    .line 2986
    const/16 v1, 0x5f

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2987
    const/16 v1, 0x62

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2988
    const/16 v1, 0x69

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2989
    const/16 v1, 0x6e

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2990
    const/16 v1, 0x61

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2991
    const/16 v1, 0x72

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2992
    const/16 v1, 0x79

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2994
    :cond_5
    const/16 v1, 0x27

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2996
    :goto_4
    if-ge v0, v4, :cond_7

    .line 2997
    aget-byte v1, p2, v0

    .line 2999
    sparse-switch v1, :sswitch_data_0

    .line 3043
    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2996
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v2, v0

    .line 2977
    goto :goto_3

    .line 3001
    :sswitch_0
    const/16 v1, 0x5c

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3002
    const/16 v1, 0x30

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    .line 3007
    :sswitch_1
    const/16 v1, 0x5c

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3008
    const/16 v1, 0x6e

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    .line 3013
    :sswitch_2
    const/16 v1, 0x5c

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3014
    const/16 v1, 0x72

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    .line 3019
    :sswitch_3
    const/16 v1, 0x5c

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3020
    const/16 v1, 0x5c

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    .line 3025
    :sswitch_4
    const/16 v1, 0x5c

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3026
    const/16 v1, 0x27

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    .line 3031
    :sswitch_5
    const/16 v1, 0x5c

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3032
    const/16 v1, 0x22

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    .line 3037
    :sswitch_6
    const/16 v1, 0x5c

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3038
    const/16 v1, 0x5a

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    .line 3047
    :cond_7
    const/16 v0, 0x27

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3049
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 2999
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x1a -> :sswitch_6
        0x22 -> :sswitch_5
        0x27 -> :sswitch_4
        0x5c -> :sswitch_3
    .end sparse-switch
.end method

.method protected setBytesNoEscape(I[B)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x27

    const/4 v3, 0x0

    .line 3067
    array-length v0, p2

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 3068
    aput-byte v4, v0, v3

    .line 3069
    const/4 v1, 0x1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3070
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    aput-byte v4, v0, v1

    .line 3072
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V

    .line 3073
    return-void
.end method

.method protected setBytesNoEscapeNoQuotes(I[B)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3076
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V

    .line 3077
    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4648
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setCharacterStream(ILjava/io/Reader;I)V

    .line 4649
    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;I)V
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
    const/4 v6, -0x1

    .line 3101
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3103
    if-nez p2, :cond_0

    .line 3104
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3154
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3155
    return-void

    .line 3109
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v0

    .line 3111
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getClobCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    .line 3113
    if-eqz v0, :cond_2

    if-eq p3, v6, :cond_2

    .line 3114
    new-array v0, p3, [C

    .line 3116
    invoke-static {p2, v0, p3}, Lcom/mysql/jdbc/PreparedStatement;->readFully(Ljava/io/Reader;[CI)I

    move-result v3

    .line 3118
    if-nez v2, :cond_1

    .line 3119
    new-instance v2, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 3149
    :goto_1
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x7d5

    aput v3, v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3151
    :catch_0
    move-exception v0

    .line 3152
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 3122
    :cond_1
    :try_start_4
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v4, v2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 3123
    :catch_1
    move-exception v0

    .line 3124
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported character encoding "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3129
    :cond_2
    const/16 v0, 0x1000

    new-array v0, v0, [C

    .line 3131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3133
    :goto_2
    invoke-virtual {p2, v0}, Ljava/io/Reader;->read([C)I

    move-result v4

    if-eq v4, v6, :cond_3

    .line 3134
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3137
    :cond_3
    if-nez v2, :cond_4

    .line 3138
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 3141
    :cond_4
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 3142
    :catch_2
    move-exception v0

    .line 3143
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported character encoding "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
.end method

.method public setCharacterStream(ILjava/io/Reader;J)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4652
    long-to-int v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setCharacterStream(ILjava/io/Reader;I)V

    .line 4654
    return-void
.end method

.method public setClob(ILjava/io/Reader;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4657
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setCharacterStream(ILjava/io/Reader;)V

    .line 4659
    return-void
.end method

.method public setClob(ILjava/io/Reader;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4662
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/PreparedStatement;->setCharacterStream(ILjava/io/Reader;J)V

    .line 4663
    return-void
.end method

.method public setClob(ILjava/sql/Clob;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3169
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3170
    if-nez p2, :cond_0

    .line 3171
    const/16 v0, 0x7d5

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 3189
    :goto_0
    monitor-exit v1

    .line 3190
    return-void

    .line 3174
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getClobCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    .line 3176
    if-nez v0, :cond_1

    .line 3177
    const-wide/16 v2, 0x1

    invoke-interface {p2}, Ljava/sql/Clob;->length()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-interface {p2, v2, v3, v0}, Ljava/sql/Clob;->getSubString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 3187
    :goto_1
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x7d5

    aput v3, v0, v2

    goto :goto_0

    .line 3189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3180
    :cond_1
    const-wide/16 v2, 0x1

    :try_start_1
    invoke-interface {p2}, Ljava/sql/Clob;->length()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-interface {p2, v2, v3, v4}, Ljava/sql/Clob;->getSubString(JI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3181
    :catch_0
    move-exception v2

    .line 3182
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported character encoding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
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
    .line 3205
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setDate(ILjava/sql/Date;Ljava/util/Calendar;)V

    .line 3206
    return-void
.end method

.method public setDate(ILjava/sql/Date;Ljava/util/Calendar;)V
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
    const/16 v0, 0x5b

    .line 3223
    if-nez p2, :cond_0

    .line 3224
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 3243
    :goto_0
    return-void

    .line 3226
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->useLegacyDatetimeCode:Z

    if-nez v0, :cond_1

    .line 3227
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->newSetDateInternal(ILjava/sql/Date;Ljava/util/Calendar;)V

    goto :goto_0

    .line 3229
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3230
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->ddf:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_2

    .line 3231
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "\'\'yyyy-MM-dd\'\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->ddf:Ljava/text/SimpleDateFormat;

    .line 3233
    :cond_2
    if-eqz p3, :cond_3

    .line 3234
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->ddf:Ljava/text/SimpleDateFormat;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3237
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->ddf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 3239
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x5b

    aput v3, v0, v2

    .line 3240
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 3258
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3259
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

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

    .line 3260
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

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3268
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3265
    :cond_1
    :try_start_1
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->fixDecimalExponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 3267
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x8

    aput v3, v0, v2

    .line 3268
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3269
    return-void
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
    .line 3284
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->fixDecimalExponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 3286
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 3287
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
    .line 3302
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 3304
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x4

    aput v2, v0, v1

    .line 3305
    return-void
.end method

.method protected final setInternal(ILjava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3340
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 3344
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    if-eqz v0, :cond_0

    .line 3345
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    invoke-virtual {v0, p2}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 3351
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V

    .line 3352
    monitor-exit v6

    .line 3353
    return-void

    .line 3347
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v0

    goto :goto_0

    .line 3352
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final setInternal(I[B)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3308
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3310
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v0

    .line 3312
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->checkBounds(II)V

    .line 3314
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    add-int/lit8 v3, p1, -0x1

    add-int/2addr v3, v0

    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    .line 3315
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    add-int/lit8 v3, p1, -0x1

    add-int/2addr v3, v0

    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    .line 3316
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    add-int/lit8 v3, p1, -0x1

    add-int/2addr v3, v0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 3317
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    add-int/lit8 v3, p1, -0x1

    add-int/2addr v0, v3

    aput-object p2, v2, v0

    .line 3318
    monitor-exit v1

    .line 3319
    return-void

    .line 3318
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 3368
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 3370
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, -0x5

    aput v2, v0, v1

    .line 3371
    return-void
.end method

.method public setNCharacterStream(ILjava/io/Reader;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4666
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mysql/jdbc/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    .line 4667
    return-void
.end method

.method public setNCharacterStream(ILjava/io/Reader;J)V
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
    const/4 v5, -0x1

    .line 4803
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4805
    if-nez p2, :cond_0

    .line 4806
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4839
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4840
    return-void

    .line 4812
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v0

    .line 4816
    if-eqz v0, :cond_1

    const-wide/16 v2, -0x1

    cmp-long v0, p3, v2

    if-eqz v0, :cond_1

    .line 4817
    long-to-int v0, p3

    new-array v0, v0, [C

    .line 4819
    long-to-int v2, p3

    invoke-static {p2, v0, v2}, Lcom/mysql/jdbc/PreparedStatement;->readFully(Ljava/io/Reader;[CI)I

    move-result v2

    .line 4820
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->setNString(ILjava/lang/String;)V

    .line 4834
    :goto_1
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x7db

    aput v3, v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 4836
    :catch_0
    move-exception v0

    .line 4837
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4839
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 4823
    :cond_1
    const/16 v0, 0x1000

    :try_start_4
    new-array v0, v0, [C

    .line 4825
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4827
    :goto_2
    invoke-virtual {p2, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-eq v3, v5, :cond_2

    .line 4828
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4831
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNString(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method public setNClob(ILjava/io/Reader;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4843
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;)V

    .line 4844
    return-void
.end method

.method public setNClob(ILjava/io/Reader;J)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4860
    if-nez p2, :cond_0

    .line 4861
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 4865
    :goto_0
    return-void

    .line 4863
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    goto :goto_0
.end method

.method public setNString(ILjava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4684
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 4685
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    const-string v1, "utf8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4686
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 4687
    monitor-exit v6

    .line 4779
    :goto_0
    return-void

    .line 4691
    :cond_1
    if-nez p2, :cond_2

    .line 4692
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 4778
    :goto_1
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4694
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 4698
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v3, v0

    const-wide v7, 0x3ff199999999999aL

    mul-double/2addr v3, v7

    const-wide/high16 v7, 0x4010

    add-double/2addr v3, v7

    double-to-int v0, v3

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4699
    const-string v0, "_utf8"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4700
    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4706
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_4

    .line 4707
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 4709
    sparse-switch v3, :sswitch_data_0

    .line 4756
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4706
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4711
    :sswitch_0
    const/16 v3, 0x5c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4712
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 4717
    :sswitch_1
    const/16 v3, 0x5c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4718
    const/16 v3, 0x6e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 4723
    :sswitch_2
    const/16 v3, 0x5c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4724
    const/16 v3, 0x72

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 4729
    :sswitch_3
    const/16 v3, 0x5c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4730
    const/16 v3, 0x5c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 4735
    :sswitch_4
    const/16 v3, 0x5c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4736
    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 4741
    :sswitch_5
    iget-boolean v3, p0, Lcom/mysql/jdbc/PreparedStatement;->usingAnsiMode:Z

    if-eqz v3, :cond_3

    .line 4742
    const/16 v3, 0x5c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4745
    :cond_3
    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 4750
    :sswitch_6
    const/16 v3, 0x5c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4751
    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 4760
    :cond_4
    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4762
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4766
    iget-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    if-nez v1, :cond_5

    .line 4767
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const-string v2, "UTF-8"

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v1

    const-string v2, "UTF-8"

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v0

    .line 4774
    :goto_4
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V

    .line 4776
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, -0x9

    aput v2, v0, v1

    goto/16 :goto_1

    .line 4771
    :cond_5
    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_4

    .line 4709
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x1a -> :sswitch_6
        0x22 -> :sswitch_5
        0x27 -> :sswitch_4
        0x5c -> :sswitch_3
    .end sparse-switch
.end method

.method public setNull(II)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3389
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3390
    :try_start_0
    const-string v0, "null"

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 3391
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 3393
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    aput v3, v0, v2

    .line 3394
    monitor-exit v1

    .line 3395
    return-void

    .line 3394
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 3415
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 3417
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 3418
    return-void
.end method

.method public setObject(ILjava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3524
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3525
    if-nez p2, :cond_0

    .line 3526
    const/16 v0, 0x457

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 3568
    :goto_0
    monitor-exit v1

    .line 3569
    return-void

    .line 3528
    :cond_0
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 3529
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInt(II)V

    goto :goto_0

    .line 3568
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3530
    :cond_1
    :try_start_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3531
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_0

    .line 3532
    :cond_2
    instance-of v0, p2, Ljava/math/BigDecimal;

    if-eqz v0, :cond_3

    .line 3533
    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    goto :goto_0

    .line 3534
    :cond_3
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_4

    .line 3535
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setShort(IS)V

    goto :goto_0

    .line 3536
    :cond_4
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 3537
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInt(II)V

    goto :goto_0

    .line 3538
    :cond_5
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 3539
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/mysql/jdbc/PreparedStatement;->setLong(IJ)V

    goto :goto_0

    .line 3540
    :cond_6
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 3541
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setFloat(IF)V

    goto :goto_0

    .line 3542
    :cond_7
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_8

    .line 3543
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/mysql/jdbc/PreparedStatement;->setDouble(ID)V

    goto :goto_0

    .line 3544
    :cond_8
    instance-of v0, p2, [B

    if-eqz v0, :cond_9

    .line 3545
    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V

    goto :goto_0

    .line 3546
    :cond_9
    instance-of v0, p2, Ljava/sql/Date;

    if-eqz v0, :cond_a

    .line 3547
    check-cast p2, Ljava/sql/Date;

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setDate(ILjava/sql/Date;)V

    goto/16 :goto_0

    .line 3548
    :cond_a
    instance-of v0, p2, Ljava/sql/Time;

    if-eqz v0, :cond_b

    .line 3549
    check-cast p2, Ljava/sql/Time;

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setTime(ILjava/sql/Time;)V

    goto/16 :goto_0

    .line 3550
    :cond_b
    instance-of v0, p2, Ljava/sql/Timestamp;

    if-eqz v0, :cond_c

    .line 3551
    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    goto/16 :goto_0

    .line 3552
    :cond_c
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 3553
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setBoolean(IZ)V

    goto/16 :goto_0

    .line 3554
    :cond_d
    instance-of v0, p2, Ljava/io/InputStream;

    if-eqz v0, :cond_e

    .line 3555
    check-cast p2, Ljava/io/InputStream;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    goto/16 :goto_0

    .line 3556
    :cond_e
    instance-of v0, p2, Ljava/sql/Blob;

    if-eqz v0, :cond_f

    .line 3557
    check-cast p2, Ljava/sql/Blob;

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBlob(ILjava/sql/Blob;)V

    goto/16 :goto_0

    .line 3558
    :cond_f
    instance-of v0, p2, Ljava/sql/Clob;

    if-eqz v0, :cond_10

    .line 3559
    check-cast p2, Ljava/sql/Clob;

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setClob(ILjava/sql/Clob;)V

    goto/16 :goto_0

    .line 3560
    :cond_10
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getTreatUtilDateAsTimestamp()Z

    move-result v0

    if-eqz v0, :cond_11

    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_11

    .line 3561
    new-instance v0, Ljava/sql/Timestamp;

    check-cast p2, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    goto/16 :goto_0

    .line 3562
    :cond_11
    instance-of v0, p2, Ljava/math/BigInteger;

    if-eqz v0, :cond_12

    .line 3563
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3565
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setSerializableObject(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setObject(ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3579
    instance-of v0, p2, Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 3580
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mysql/jdbc/PreparedStatement;->setObject(ILjava/lang/Object;II)V

    .line 3584
    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    .line 3582
    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mysql/jdbc/PreparedStatement;->setObject(ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public setObject(ILjava/lang/Object;II)V
    .locals 8
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
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3614
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 3615
    if-nez p2, :cond_0

    .line 3616
    const/16 v1, 0x457

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 3771
    :goto_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3772
    return-void

    .line 3622
    :cond_0
    sparse-switch p3, :sswitch_data_0

    .line 3753
    :try_start_1
    const-string v1, "PreparedStatement.16"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3756
    :catch_0
    move-exception v1

    .line 3757
    :try_start_2
    instance-of v2, v1, Ljava/sql/SQLException;

    if-eqz v2, :cond_10

    .line 3758
    check-cast v1, Ljava/sql/SQLException;

    throw v1

    .line 3771
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3625
    :sswitch_0
    :try_start_3
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 3626
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBoolean(IZ)V

    goto :goto_0

    .line 3629
    :cond_1
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 3630
    const-string v4, "true"

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v4, "0"

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move v3, v2

    :cond_3
    invoke-virtual {p0, p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->setBoolean(IZ)V

    goto :goto_0

    .line 3633
    :cond_4
    instance-of v1, p2, Ljava/lang/Number;

    if-eqz v1, :cond_6

    .line 3634
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 3636
    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBoolean(IZ)V

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_1

    .line 3640
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No conversion from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to Types.BOOLEAN possible."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 3655
    :sswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/PreparedStatement;->setNumericObject(ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 3662
    :sswitch_2
    instance-of v1, p2, Ljava/math/BigDecimal;

    if-eqz v1, :cond_7

    .line 3663
    move-object v0, p2

    check-cast v0, Ljava/math/BigDecimal;

    move-object v1, v0

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->consistentToString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->fixDecimalExponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3665
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3672
    :sswitch_3
    instance-of v1, p2, Ljava/sql/Clob;

    if-eqz v1, :cond_8

    .line 3673
    move-object v0, p2

    check-cast v0, Ljava/sql/Clob;

    move-object v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setClob(ILjava/sql/Clob;)V

    goto/16 :goto_0

    .line 3675
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3685
    :sswitch_4
    instance-of v1, p2, [B

    if-eqz v1, :cond_9

    .line 3686
    move-object v0, p2

    check-cast v0, [B

    move-object v1, v0

    check-cast v1, [B

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V

    goto/16 :goto_0

    .line 3687
    :cond_9
    instance-of v1, p2, Ljava/sql/Blob;

    if-eqz v1, :cond_a

    .line 3688
    move-object v0, p2

    check-cast v0, Ljava/sql/Blob;

    move-object v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBlob(ILjava/sql/Blob;)V

    goto/16 :goto_0

    .line 3690
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v5

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V

    goto/16 :goto_0

    .line 3701
    :sswitch_5
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 3702
    new-instance v2, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v2, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 3703
    new-instance v3, Ljava/text/SimpleDateFormat;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/mysql/jdbc/PreparedStatement;->getDateTimePattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3704
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {v3, v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 3709
    :goto_2
    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3712
    :pswitch_1
    instance-of v2, v1, Ljava/sql/Date;

    if-eqz v2, :cond_c

    .line 3713
    check-cast v1, Ljava/sql/Date;

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setDate(ILjava/sql/Date;)V

    goto/16 :goto_0

    .line 3706
    :cond_b
    move-object v0, p2

    check-cast v0, Ljava/util/Date;

    move-object v1, v0

    goto :goto_2

    .line 3715
    :cond_c
    new-instance v2, Ljava/sql/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setDate(ILjava/sql/Date;)V

    goto/16 :goto_0

    .line 3722
    :pswitch_2
    instance-of v2, v1, Ljava/sql/Timestamp;

    if-eqz v2, :cond_d

    .line 3723
    check-cast v1, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    goto/16 :goto_0

    .line 3725
    :cond_d
    new-instance v2, Ljava/sql/Timestamp;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    goto/16 :goto_0

    .line 3735
    :sswitch_6
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 3736
    new-instance v2, Ljava/text/SimpleDateFormat;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/mysql/jdbc/PreparedStatement;->getDateTimePattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3737
    new-instance v3, Ljava/sql/Time;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v3, v1, v2}, Ljava/sql/Time;-><init>(J)V

    invoke-virtual {p0, p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->setTime(ILjava/sql/Time;)V

    goto/16 :goto_0

    .line 3738
    :cond_e
    instance-of v1, p2, Ljava/sql/Timestamp;

    if-eqz v1, :cond_f

    .line 3739
    move-object v0, p2

    check-cast v0, Ljava/sql/Timestamp;

    move-object v1, v0

    .line 3740
    new-instance v2, Ljava/sql/Time;

    invoke-virtual {v1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Time;-><init>(J)V

    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setTime(ILjava/sql/Time;)V

    goto/16 :goto_0

    .line 3742
    :cond_f
    move-object v0, p2

    check-cast v0, Ljava/sql/Time;

    move-object v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setTime(ILjava/sql/Time;)V

    goto/16 :goto_0

    .line 3748
    :sswitch_7
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setSerializableObject(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 3761
    :cond_10
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PreparedStatement.17"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PreparedStatement.18"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PreparedStatement.19"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 3766
    invoke-virtual {v2, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3768
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3622
    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_1
        -0x6 -> :sswitch_1
        -0x5 -> :sswitch_1
        -0x4 -> :sswitch_4
        -0x3 -> :sswitch_4
        -0x2 -> :sswitch_4
        -0x1 -> :sswitch_2
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0xc -> :sswitch_2
        0x10 -> :sswitch_0
        0x5b -> :sswitch_5
        0x5c -> :sswitch_6
        0x5d -> :sswitch_5
        0x457 -> :sswitch_7
        0x7d4 -> :sswitch_4
        0x7d5 -> :sswitch_3
    .end sparse-switch

    .line 3709
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
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

    .line 3775
    check-cast p3, Lcom/mysql/jdbc/PreparedStatement$BatchParams;

    .line 3777
    iget-object v4, p3, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isNull:[Z

    .line 3778
    iget-object v5, p3, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isStream:[Z

    move v1, v2

    .line 3780
    :goto_0
    array-length v0, v4

    if-ge v1, v0, :cond_2

    .line 3781
    aget-boolean v0, v4, v1

    if-eqz v0, :cond_0

    .line 3782
    add-int/lit8 v0, p2, 0x1

    invoke-interface {p1, p2, v2}, Ljava/sql/PreparedStatement;->setNull(II)V

    move p2, v0

    .line 3780
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3784
    :cond_0
    aget-boolean v0, v5, v1

    if-eqz v0, :cond_1

    .line 3785
    add-int/lit8 v0, p2, 0x1

    iget-object v3, p3, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStreams:[Ljava/io/InputStream;

    aget-object v3, v3, v1

    iget-object v6, p3, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->streamLengths:[I

    aget v6, v6, v1

    invoke-interface {p1, p2, v3, v6}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    move p2, v0

    goto :goto_1

    :cond_1
    move-object v0, p1

    .line 3787
    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v3, p2, 0x1

    iget-object v6, p3, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    aget-object v6, v6, v1

    invoke-virtual {v0, p2, v6}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    move p2, v3

    goto :goto_1

    .line 3792
    :cond_2
    return p2
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
    .line 3808
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected setRetrieveGeneratedKeys(Z)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2231
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2232
    :try_start_0
    iput-boolean p1, p0, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    .line 2233
    monitor-exit v1

    .line 2234
    return-void

    .line 2233
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    .line 3856
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 3858
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x5

    aput v2, v0, v1

    .line 3859
    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/16 v10, 0x5c

    .line 3875
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v2

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 3877
    if-nez p2, :cond_0

    .line 3878
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 4031
    :goto_0
    monitor-exit v8

    .line 4032
    :goto_1
    return-void

    .line 3880
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 3882
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 3884
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3887
    invoke-direct {p0, p2, v2}, Lcom/mysql/jdbc/PreparedStatement;->isEscapeNeededForString(Ljava/lang/String;I)Z

    move-result v0

    .line 3889
    if-nez v0, :cond_2

    .line 3892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3893
    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3894
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3895
    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3897
    iget-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    if-nez v1, :cond_1

    .line 3898
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v0

    .line 3905
    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V

    .line 3920
    :goto_3
    monitor-exit v8

    goto :goto_1

    .line 4031
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3902
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_2

    .line 3909
    :cond_2
    iget-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    if-nez v0, :cond_3

    .line 3910
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v0

    .line 3917
    :goto_4
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V

    goto :goto_3

    .line 3914
    :cond_3
    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_4

    .line 3926
    :cond_4
    iget-boolean v3, p0, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    if-nez v3, :cond_5

    invoke-direct {p0, p2, v2}, Lcom/mysql/jdbc/PreparedStatement;->isEscapeNeededForString(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3929
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v4, v0

    const-wide v6, 0x3ff199999999999aL

    mul-double/2addr v4, v6

    double-to-int v0, v4

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3931
    const/16 v0, 0x27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 3937
    :goto_5
    if-ge v0, v2, :cond_8

    .line 3938
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 3940
    sparse-switch v4, :sswitch_data_0

    .line 4003
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3937
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3942
    :sswitch_0
    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3943
    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 3948
    :sswitch_1
    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3949
    const/16 v4, 0x6e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 3954
    :sswitch_2
    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3955
    const/16 v4, 0x72

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 3960
    :sswitch_3
    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3961
    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 3966
    :sswitch_4
    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3967
    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 3972
    :sswitch_5
    iget-boolean v4, p0, Lcom/mysql/jdbc/PreparedStatement;->usingAnsiMode:Z

    if-eqz v4, :cond_6

    .line 3973
    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3976
    :cond_6
    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 3981
    :sswitch_6
    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3982
    const/16 v4, 0x5a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 3989
    :sswitch_7
    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    if-eqz v5, :cond_7

    .line 3990
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v5

    .line 3991
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 3992
    invoke-virtual {v5, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 3993
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 3994
    iget-object v7, p0, Lcom/mysql/jdbc/PreparedStatement;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    const/4 v9, 0x1

    invoke-virtual {v7, v5, v6, v9}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 3995
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    if-ne v5, v10, :cond_7

    .line 3996
    const/16 v5, 0x5c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3999
    :cond_7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 4007
    :cond_8
    const/16 v0, 0x27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4009
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4014
    :goto_7
    iget-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    if-nez v2, :cond_a

    .line 4015
    if-eqz v1, :cond_9

    .line 4016
    const/16 v1, 0x27

    const/16 v2, 0x27

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v6

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/mysql/jdbc/StringUtils;->getBytesWrapped(Ljava/lang/String;CCLcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v0

    .line 4027
    :goto_8
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V

    .line 4029
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0xc

    aput v2, v0, v1

    goto/16 :goto_0

    .line 4019
    :cond_9
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v0

    goto :goto_8

    .line 4024
    :cond_a
    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_8

    :cond_b
    move v1, v0

    move-object v0, p2

    goto :goto_7

    .line 3940
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x1a -> :sswitch_6
        0x22 -> :sswitch_5
        0x27 -> :sswitch_4
        0x5c -> :sswitch_3
        0xa5 -> :sswitch_7
        0x20a9 -> :sswitch_7
    .end sparse-switch
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
    .line 4115
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 4116
    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/PreparedStatement;->setTimeInternal(ILjava/sql/Time;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V

    .line 4117
    monitor-exit v6

    .line 4118
    return-void

    .line 4117
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
    .line 4097
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 4098
    :try_start_0
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/PreparedStatement;->setTimeInternal(ILjava/sql/Time;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V

    .line 4099
    monitor-exit v6

    .line 4100
    return-void

    .line 4099
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
    .line 4188
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 4189
    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/PreparedStatement;->setTimestampInternal(ILjava/sql/Timestamp;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V

    .line 4190
    monitor-exit v6

    .line 4191
    return-void

    .line 4190
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
    .line 4170
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 4171
    :try_start_0
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/PreparedStatement;->setTimestampInternal(ILjava/sql/Timestamp;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V

    .line 4172
    monitor-exit v6

    .line 4173
    return-void

    .line 4172
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 4428
    if-eqz p2, :cond_0

    .line 4429
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 4431
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x46

    aput v2, v0, v1

    .line 4435
    :goto_0
    return-void

    .line 4433
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

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
    .line 4415
    if-nez p2, :cond_0

    .line 4416
    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 4422
    :goto_0
    return-void

    .line 4418
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 4420
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x7d5

    aput v2, v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4604
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4605
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4608
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->asSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4613
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4609
    :catch_0
    move-exception v0

    .line 4610
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
