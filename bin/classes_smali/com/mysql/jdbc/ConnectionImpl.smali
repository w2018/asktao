.class public Lcom/mysql/jdbc/ConnectionImpl;
.super Lcom/mysql/jdbc/ConnectionPropertiesImpl;
.source "ConnectionImpl.java"

# interfaces
.implements Lcom/mysql/jdbc/MySQLConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/ConnectionImpl$NetworkTimeoutSetter;,
        Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;,
        Lcom/mysql/jdbc/ConnectionImpl$ExceptionInterceptorChain;
    }
.end annotation


# static fields
.field private static final ABORT_PERM:Ljava/sql/SQLPermission; = null

.field private static final CHARSET_CONVERTER_NOT_AVAILABLE_MARKER:Ljava/lang/Object; = null

.field protected static final DEFAULT_LOGGER_CLASS:Ljava/lang/String; = "com.mysql.jdbc.log.StandardLogger"

.field private static final DEFAULT_RESULT_SET_CONCURRENCY:I = 0x3ef

.field private static final DEFAULT_RESULT_SET_TYPE:I = 0x3eb

.field private static final HISTOGRAM_BUCKETS:I = 0x14

.field private static final JDBC_4_CONNECTION_CTOR:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field public static final JDBC_LOCAL_CHARACTER_SET_RESULTS:Ljava/lang/String; = "jdbc.local.character_set_results"

.field private static final LOGGER_INSTANCE_NAME:Ljava/lang/String; = "MySQL"

.field private static final NULL_LOGGER:Lcom/mysql/jdbc/log/Log; = null

.field private static final SERVER_VERSION_STRING_VAR_NAME:Ljava/lang/String; = "server_version_string"

.field private static final SET_NETWORK_TIMEOUT_PERM:Ljava/sql/SQLPermission; = null

.field public static charsetMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation
.end field

.field private static final customCharsetToMblenMapByUrl:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final customIndexToCharsetMapByUrl:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mapTransIsolationNameToValue:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final random:Ljava/util/Random; = null

.field protected static roundRobinStatsMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x27eed4e755fd1762L


# instance fields
.field private autoCommit:Z

.field private autoIncrementIncrement:I

.field private cachedPreparedStatementParams:Lcom/mysql/jdbc/CacheAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mysql/jdbc/CacheAdapter",
            "<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/PreparedStatement$ParseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private transient cancelTimer:Ljava/util/Timer;

.field private characterSetMetadata:Ljava/lang/String;

.field private characterSetResultsOnServer:Ljava/lang/String;

.field private final charsetConverterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private connectionCreationTimeMillis:J

.field private connectionId:J

.field private connectionLifecycleInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mysql/jdbc/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private database:Ljava/lang/String;

.field private dbmd:Ljava/sql/DatabaseMetaData;

.field private defaultTimeZone:Ljava/util/TimeZone;

.field private errorMessageEncoding:Ljava/lang/String;

.field private eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field private forceClosedReason:Ljava/lang/Throwable;

.field private hasIsolationLevels:Z

.field private hasQuotedIdentifiers:Z

.field private hasTriedMasterFlag:Z

.field private host:Ljava/lang/String;

.field private hostPortPair:Ljava/lang/String;

.field public indexToCustomMysqlCharset:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient io:Lcom/mysql/jdbc/MysqlIO;

.field private isClientTzUTC:Z

.field private isClosed:Z

.field private isInGlobalTx:Z

.field private isRunningOnJDK13:Z

.field private isServerTzUTC:Z

.field private isolationLevel:I

.field private lastQueryFinishedTime:J

.field private transient log:Lcom/mysql/jdbc/log/Log;

.field private longestQueryTimeMs:J

.field private lowerCaseTableNames:Z

.field private maximumNumberTablesAccessed:J

.field private metricsLastReportedMs:J

.field private minimumNumberTablesAccessed:J

.field private myURL:Ljava/lang/String;

.field private mysqlCharsetToCustomMblen:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private needsPing:Z

.field private netBufferLength:I

.field private noBackslashEscapes:Z

.field private numTablesMetricsHistBreakpoints:[J

.field private numTablesMetricsHistCounts:[I

.field private numberOfPreparedExecutes:J

.field private numberOfPrepares:J

.field private numberOfQueriesIssued:J

.field private numberOfResultSetsCreated:J

.field private oldHistBreakpoints:[J

.field private oldHistCounts:[I

.field private final openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/mysql/jdbc/Statement;",
            ">;"
        }
    .end annotation
.end field

.field private origDatabaseToConnectTo:Ljava/lang/String;

.field private origHostToConnectTo:Ljava/lang/String;

.field private origPortToConnectTo:I

.field private parsedCallableStatementCache:Lcom/mysql/jdbc/util/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mysql/jdbc/util/LRUCache",
            "<",
            "Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;",
            "Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private parserKnowsUnicode:Z

.field private password:Ljava/lang/String;

.field private perfMetricsHistBreakpoints:[J

.field private perfMetricsHistCounts:[I

.field private pointOfOrigin:Ljava/lang/String;

.field private port:I

.field protected props:Ljava/util/Properties;

.field private proxy:Lcom/mysql/jdbc/MySQLConnection;

.field private queryTimeCount:J

.field private queryTimeMean:D

.field private queryTimeSum:D

.field private queryTimeSumSquares:D

.field private readInfoMsg:Z

.field private readOnly:Z

.field private realProxy:Ljava/lang/reflect/InvocationHandler;

.field private requiresEscapingEncoder:Z

.field protected resultSetMetadataCache:Lcom/mysql/jdbc/util/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mysql/jdbc/util/LRUCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/CachedResultSetMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private serverConfigCache:Lcom/mysql/jdbc/CacheAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mysql/jdbc/CacheAdapter",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private serverSideStatementCache:Lcom/mysql/jdbc/util/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mysql/jdbc/util/LRUCache",
            "<",
            "Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;",
            "Lcom/mysql/jdbc/ServerPreparedStatement;",
            ">;"
        }
    .end annotation
.end field

.field private serverSideStatementCheckCache:Lcom/mysql/jdbc/util/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mysql/jdbc/util/LRUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private serverTimezoneTZ:Ljava/util/TimeZone;

.field private serverVariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sessionCalendar:Ljava/util/Calendar;

.field private sessionMaxRows:I

.field private shortestQueryTimeMs:J

.field private statementComment:Ljava/lang/String;

.field private statementInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mysql/jdbc/StatementInterceptorV2;",
            ">;"
        }
    .end annotation
.end field

.field private storesLowerCaseTableName:Z

.field private totalQueryTimeMs:D

.field private transactionsSupported:Z

.field private typeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private useAnsiQuotes:Z

.field private usePlatformCharsetConverters:Z

.field private useServerPreparedStmts:Z

.field private user:Ljava/lang/String;

.field private utcCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 84
    new-instance v0, Ljava/sql/SQLPermission;

    const-string v1, "setNetworkTimeout"

    invoke-direct {v0, v1}, Ljava/sql/SQLPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mysql/jdbc/ConnectionImpl;->SET_NETWORK_TIMEOUT_PERM:Ljava/sql/SQLPermission;

    .line 86
    new-instance v0, Ljava/sql/SQLPermission;

    const-string v1, "abort"

    invoke-direct {v0, v1}, Ljava/sql/SQLPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mysql/jdbc/ConnectionImpl;->ABORT_PERM:Ljava/sql/SQLPermission;

    .line 243
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/ConnectionImpl;->CHARSET_CONVERTER_NOT_AVAILABLE_MARKER:Ljava/lang/Object;

    .line 263
    sput-object v7, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    .line 266
    new-instance v0, Lcom/mysql/jdbc/log/NullLogger;

    const-string v1, "MySQL"

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/log/NullLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mysql/jdbc/ConnectionImpl;->NULL_LOGGER:Lcom/mysql/jdbc/log/Log;

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/ConnectionImpl;->customIndexToCharsetMapByUrl:Ljava/util/Map;

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/ConnectionImpl;->customCharsetToMblenMapByUrl:Ljava/util/Map;

    .line 298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    .line 299
    sget-object v0, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    const-string v1, "READ-UNCOMMITED"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    const-string v1, "READ-UNCOMMITTED"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    const-string v1, "READ-COMMITTED"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    const-string v1, "REPEATABLE-READ"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    const-string v1, "SERIALIZABLE"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    :try_start_0
    const-string v0, "com.mysql.jdbc.JDBC4Connection"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/util/Properties;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/ConnectionImpl;->JDBC_4_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 390
    :goto_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/ConnectionImpl;->random:Ljava/util/Random;

    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 311
    :catch_1
    move-exception v0

    .line 312
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 313
    :catch_2
    move-exception v0

    .line 314
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 317
    :cond_0
    sput-object v7, Lcom/mysql/jdbc/ConnectionImpl;->JDBC_4_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 9

    .prologue
    const-wide v7, 0x7fffffffffffffffL

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 659
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;-><init>()V

    .line 98
    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->proxy:Lcom/mysql/jdbc/MySQLConnection;

    .line 99
    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->realProxy:Ljava/lang/reflect/InvocationHandler;

    .line 419
    iput-boolean v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    .line 427
    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetMetadata:Ljava/lang/String;

    .line 433
    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetResultsOnServer:Ljava/lang/String;

    .line 440
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/mysql/jdbc/CharsetMapping;->getNumberOfCharsetsConfigured()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->charsetConverterMap:Ljava/util/Map;

    .line 443
    iput-wide v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionCreationTimeMillis:J

    .line 449
    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    .line 452
    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->dbmd:Ljava/sql/DatabaseMetaData;

    .line 463
    iput-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    .line 466
    iput-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasQuotedIdentifiers:Z

    .line 469
    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    .line 471
    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->indexToCustomMysqlCharset:Ljava/util/Map;

    .line 473
    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->mysqlCharsetToCustomMblen:Ljava/util/Map;

    .line 476
    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    .line 478
    iput-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClientTzUTC:Z

    .line 481
    iput-boolean v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    .line 484
    iput-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->isInGlobalTx:Z

    .line 487
    iput-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->isRunningOnJDK13:Z

    .line 490
    const/4 v0, 0x2

    iput v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    .line 492
    iput-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->isServerTzUTC:Z

    .line 495
    iput-wide v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->lastQueryFinishedTime:J

    .line 498
    sget-object v0, Lcom/mysql/jdbc/ConnectionImpl;->NULL_LOGGER:Lcom/mysql/jdbc/log/Log;

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->log:Lcom/mysql/jdbc/log/Log;

    .line 504
    iput-wide v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    .line 507
    iput-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->lowerCaseTableNames:Z

    .line 512
    iput-wide v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->maximumNumberTablesAccessed:J

    .line 515
    const/4 v0, -0x1

    iput v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    .line 520
    iput-wide v7, p0, Lcom/mysql/jdbc/ConnectionImpl;->minimumNumberTablesAccessed:J

    .line 523
    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->myURL:Ljava/lang/String;

    .line 526
    iput-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 528
    const/16 v0, 0x4000

    iput v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->netBufferLength:I

    .line 530
    iput-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->noBackslashEscapes:Z

    .line 532
    iput-wide v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPreparedExecutes:J

    .line 534
    iput-wide v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPrepares:J

    .line 536
    iput-wide v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfQueriesIssued:J

    .line 538
    iput-wide v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfResultSetsCreated:J

    .line 544
    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->oldHistBreakpoints:[J

    .line 546
    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->oldHistCounts:[I

    .line 552
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 556
    iput-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->parserKnowsUnicode:Z

    .line 559
    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    .line 569
    const/16 v0, 0xcea

    iput v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->port:I

    .line 572
    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    .line 575
    iput-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->readInfoMsg:Z

    .line 578
    iput-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->readOnly:Z

    .line 584
    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverTimezoneTZ:Ljava/util/TimeZone;

    .line 587
    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    .line 589
    iput-wide v7, p0, Lcom/mysql/jdbc/ConnectionImpl;->shortestQueryTimeMs:J

    .line 591
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->totalQueryTimeMs:D

    .line 594
    iput-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->transactionsSupported:Z

    .line 603
    iput-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->useAnsiQuotes:Z

    .line 606
    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    .line 612
    iput-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->useServerPreparedStmts:Z

    .line 628
    const-string v0, "Cp1252"

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->errorMessageEncoding:Ljava/lang/String;

    .line 635
    iput-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasTriedMasterFlag:Z

    .line 641
    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementComment:Ljava/lang/String;

    .line 3835
    iput v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoIncrementIncrement:I

    .line 660
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V
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
    const/4 v7, -0x1

    const/4 v0, 0x1

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 680
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;-><init>()V

    .line 98
    iput-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->proxy:Lcom/mysql/jdbc/MySQLConnection;

    .line 99
    iput-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->realProxy:Ljava/lang/reflect/InvocationHandler;

    .line 419
    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    .line 427
    iput-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetMetadata:Ljava/lang/String;

    .line 433
    iput-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetResultsOnServer:Ljava/lang/String;

    .line 440
    new-instance v2, Ljava/util/HashMap;

    invoke-static {}, Lcom/mysql/jdbc/CharsetMapping;->getNumberOfCharsetsConfigured()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->charsetConverterMap:Ljava/util/Map;

    .line 443
    iput-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionCreationTimeMillis:J

    .line 449
    iput-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    .line 452
    iput-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->dbmd:Ljava/sql/DatabaseMetaData;

    .line 463
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    .line 466
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasQuotedIdentifiers:Z

    .line 469
    iput-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    .line 471
    iput-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->indexToCustomMysqlCharset:Ljava/util/Map;

    .line 473
    iput-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->mysqlCharsetToCustomMblen:Ljava/util/Map;

    .line 476
    iput-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    .line 478
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClientTzUTC:Z

    .line 481
    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    .line 484
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isInGlobalTx:Z

    .line 487
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isRunningOnJDK13:Z

    .line 490
    const/4 v2, 0x2

    iput v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    .line 492
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isServerTzUTC:Z

    .line 495
    iput-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->lastQueryFinishedTime:J

    .line 498
    sget-object v2, Lcom/mysql/jdbc/ConnectionImpl;->NULL_LOGGER:Lcom/mysql/jdbc/log/Log;

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->log:Lcom/mysql/jdbc/log/Log;

    .line 504
    iput-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    .line 507
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->lowerCaseTableNames:Z

    .line 512
    iput-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->maximumNumberTablesAccessed:J

    .line 515
    iput v7, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    .line 520
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->minimumNumberTablesAccessed:J

    .line 523
    iput-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->myURL:Ljava/lang/String;

    .line 526
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 528
    const/16 v2, 0x4000

    iput v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->netBufferLength:I

    .line 530
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->noBackslashEscapes:Z

    .line 532
    iput-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPreparedExecutes:J

    .line 534
    iput-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPrepares:J

    .line 536
    iput-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfQueriesIssued:J

    .line 538
    iput-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfResultSetsCreated:J

    .line 544
    iput-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->oldHistBreakpoints:[J

    .line 546
    iput-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->oldHistCounts:[I

    .line 552
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 556
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->parserKnowsUnicode:Z

    .line 559
    iput-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    .line 569
    const/16 v2, 0xcea

    iput v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->port:I

    .line 572
    iput-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    .line 575
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->readInfoMsg:Z

    .line 578
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->readOnly:Z

    .line 584
    iput-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverTimezoneTZ:Ljava/util/TimeZone;

    .line 587
    iput-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    .line 589
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->shortestQueryTimeMs:J

    .line 591
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->totalQueryTimeMs:D

    .line 594
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->transactionsSupported:Z

    .line 603
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->useAnsiQuotes:Z

    .line 606
    iput-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    .line 612
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->useServerPreparedStmts:Z

    .line 628
    const-string v2, "Cp1252"

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->errorMessageEncoding:Ljava/lang/String;

    .line 635
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasTriedMasterFlag:Z

    .line 641
    iput-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementComment:Ljava/lang/String;

    .line 3835
    iput v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoIncrementIncrement:I

    .line 682
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionCreationTimeMillis:J

    .line 684
    if-nez p4, :cond_0

    .line 685
    const-string p4, ""

    .line 691
    :cond_0
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->origHostToConnectTo:Ljava/lang/String;

    .line 692
    iput p2, p0, Lcom/mysql/jdbc/ConnectionImpl;->origPortToConnectTo:I

    .line 693
    iput-object p4, p0, Lcom/mysql/jdbc/ConnectionImpl;->origDatabaseToConnectTo:Ljava/lang/String;

    .line 696
    :try_start_0
    const-class v2, Ljava/sql/Blob;

    const-string v3, "truncate"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 698
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->isRunningOnJDK13:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    :goto_0
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionCalendar:Ljava/util/Calendar;

    .line 704
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->utcCalendar:Ljava/util/Calendar;

    .line 705
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->utcCalendar:Ljava/util/Calendar;

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 714
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLogger()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MySQL"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/log/LogFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Lcom/mysql/jdbc/log/Log;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->log:Lcom/mysql/jdbc/log/Log;

    .line 716
    invoke-static {p1}, Lcom/mysql/jdbc/NonRegisteringDriver;->isHostPropertiesList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 717
    invoke-static {p1}, Lcom/mysql/jdbc/NonRegisteringDriver;->expandHostKeyValues(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v2

    .line 719
    invoke-virtual {v2}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v3

    .line 721
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 722
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 723
    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 725
    invoke-virtual {p3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 699
    :catch_0
    move-exception v2

    .line 700
    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isRunningOnJDK13:Z

    goto :goto_0

    .line 729
    :cond_1
    if-nez p1, :cond_6

    .line 730
    const-string v2, "localhost"

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    .line 731
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->hostPortPair:Ljava/lang/String;

    .line 743
    :cond_2
    :goto_2
    iput p2, p0, Lcom/mysql/jdbc/ConnectionImpl;->port:I

    .line 745
    iput-object p4, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    .line 746
    iput-object p5, p0, Lcom/mysql/jdbc/ConnectionImpl;->myURL:Ljava/lang/String;

    .line 747
    const-string v2, "user"

    invoke-virtual {p3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    .line 748
    const-string v2, "password"

    invoke-virtual {p3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    .line 750
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 751
    :cond_3
    const-string v2, ""

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    .line 754
    :cond_4
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 755
    const-string v2, ""

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    .line 758
    :cond_5
    iput-object p3, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    .line 760
    invoke-direct {p0, p3}, Lcom/mysql/jdbc/ConnectionImpl;->initializeDriverProperties(Ljava/util/Properties;)V

    .line 763
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheDefaultTimezone()Z

    move-result v2

    invoke-static {v2}, Lcom/mysql/jdbc/TimeUtil;->getDefaultTimeZone(Z)Ljava/util/TimeZone;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->defaultTimeZone:Ljava/util/TimeZone;

    .line 765
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    if-nez v2, :cond_8

    :goto_3
    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClientTzUTC:Z

    .line 767
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseUsageAdvisor()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 768
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->pointOfOrigin:Ljava/lang/String;

    .line 774
    :goto_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->getMetaData(ZZ)Ljava/sql/DatabaseMetaData;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->dbmd:Ljava/sql/DatabaseMetaData;

    .line 775
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->initializeSafeStatementInterceptors()V

    .line 776
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->createNewIO(Z)V

    .line 777
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->unSafeStatementInterceptors()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 811
    invoke-static {p0}, Lcom/mysql/jdbc/NonRegisteringDriver;->trackConnection(Lcom/mysql/jdbc/Connection;)V

    .line 812
    return-void

    .line 733
    :cond_6
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    .line 735
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v7, :cond_7

    .line 736
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->hostPortPair:Ljava/lang/String;

    goto/16 :goto_2

    .line 738
    :cond_7
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->hostPortPair:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    move v0, v1

    .line 765
    goto :goto_3

    .line 770
    :cond_9
    const-string v0, ""

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->pointOfOrigin:Ljava/lang/String;

    goto :goto_4

    .line 778
    :catch_1
    move-exception v0

    .line 779
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->cleanup(Ljava/lang/Throwable;)V

    .line 782
    throw v0

    .line 783
    :catch_2
    move-exception v0

    .line 784
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->cleanup(Ljava/lang/Throwable;)V

    .line 786
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 788
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParanoid()Z

    move-result v2

    if-nez v2, :cond_a

    .line 789
    const-string v2, "Cannot connect to MySQL server on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    iget v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 793
    const-string v2, ".\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    const-string v2, "Make sure that there is a MySQL server "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    const-string v2, "running on the machine/port you are trying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    const-string v2, "to connect to and that the machine this software is running on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    const-string v2, "is able to connect to this host/port (i.e. not firewalled). "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    const-string v2, "Also make sure that the server has not been started with the --skip-networking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    const-string v2, "flag.\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "08S01"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 806
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 808
    throw v1

    .line 801
    :cond_a
    const-string v2, "Unable to connect to database."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method static synthetic access$000(Lcom/mysql/jdbc/ConnectionImpl;)Lcom/mysql/jdbc/CacheAdapter;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverConfigCache:Lcom/mysql/jdbc/CacheAdapter;

    return-object v0
.end method

.method private addToHistogram([I[JJIJJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 862
    if-nez p1, :cond_1

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p6

    move-wide v4, p8

    .line 863
    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ConnectionImpl;->createInitialHistogram([JJJ)V

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 866
    aget-wide v1, p2, v0

    cmp-long v1, v1, p3

    if-ltz v1, :cond_2

    .line 867
    aget v1, p1, v0

    add-int/2addr v1, p5

    aput v1, p1, v0

    goto :goto_0

    .line 865
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private addToPerformanceHistogram(JI)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 876
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkAndCreatePerformanceHistogram()V

    .line 878
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->shortestQueryTimeMs:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    const-wide/16 v6, 0x0

    :goto_0
    iget-wide v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v9}, Lcom/mysql/jdbc/ConnectionImpl;->addToHistogram([I[JJIJJ)V

    .line 880
    return-void

    .line 878
    :cond_0
    iget-wide v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->shortestQueryTimeMs:J

    goto :goto_0
.end method

.method private addToTablesAccessedHistogram(JI)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 883
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkAndCreateTablesAccessedHistogram()V

    .line 885
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->minimumNumberTablesAccessed:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    const-wide/16 v6, 0x0

    :goto_0
    iget-wide v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->maximumNumberTablesAccessed:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v9}, Lcom/mysql/jdbc/ConnectionImpl;->addToHistogram([I[JJIJJ)V

    .line 887
    return-void

    .line 885
    :cond_0
    iget-wide v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->minimumNumberTablesAccessed:J

    goto :goto_0
.end method

.method protected static appendMessageToException(Ljava/sql/SQLException;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 322
    invoke-virtual {p0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-virtual {p0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-virtual {p0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v2

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 327
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v2, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;ILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 342
    :try_start_0
    const-string v1, "java.lang.StackTraceElement"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 343
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 345
    const-class v2, Ljava/lang/Throwable;

    const-string v3, "getStackTrace"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 347
    const-class v3, Ljava/lang/Throwable;

    const-string v4, "setStackTrace"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 349
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 350
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 351
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :cond_0
    :goto_0
    return-object v0

    .line 357
    :catch_0
    move-exception v1

    goto :goto_0

    .line 355
    :catch_1
    move-exception v1

    goto :goto_0

    .line 353
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private buildCollationMapping()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x71c

    const/4 v2, 0x0

    .line 900
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheServerConfiguration()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 901
    sget-object v3, Lcom/mysql/jdbc/ConnectionImpl;->customIndexToCharsetMapByUrl:Ljava/util/Map;

    monitor-enter v3

    .line 902
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/ConnectionImpl;->customIndexToCharsetMapByUrl:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 903
    sget-object v1, Lcom/mysql/jdbc/ConnectionImpl;->customCharsetToMblenMapByUrl:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 904
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 907
    :goto_0
    if-nez v1, :cond_d

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDetectCustomCollations()Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 913
    :try_start_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 914
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 916
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement()Ljava/sql/Statement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_8

    move-result-object v3

    .line 919
    :try_start_2
    const-string v0, "SHOW COLLATION"

    invoke-interface {v3, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_9

    move-result-object v1

    .line 920
    :cond_0
    :goto_1
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 921
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 922
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 925
    const/16 v6, 0x800

    if-ge v0, v6, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lcom/mysql/jdbc/CharsetMapping;->getMysqlCharsetNameForCollationIndex(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 927
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    :cond_2
    sget-object v0, Lcom/mysql/jdbc/CharsetMapping;->CHARSET_NAME_TO_CHARSET:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 932
    const/4 v0, 0x0

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 935
    :catch_0
    move-exception v0

    .line 936
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v2

    if-ne v2, v7, :cond_3

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 937
    :cond_3
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 965
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 966
    :goto_3
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 972
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_4
    if-eqz v1, :cond_4

    .line 974
    :try_start_6
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_4

    .line 980
    :cond_4
    :goto_5
    if-eqz v3, :cond_5

    .line 982
    :try_start_7
    invoke-interface {v3}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_5

    .line 972
    :cond_5
    :goto_6
    throw v0

    .line 904
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    .line 942
    :cond_6
    :try_start_9
    invoke-interface {v4}, Ljava/util/Map;->size()I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3

    move-result v0

    if-lez v0, :cond_9

    .line 944
    :try_start_a
    const-string v0, "SHOW CHARACTER SET"

    invoke-interface {v3, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    .line 945
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 946
    const-string v0, "Charset"

    invoke-interface {v1, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 947
    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 948
    const-string v2, "Maxlen"

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_7

    .line 951
    :catch_2
    move-exception v0

    .line 952
    :try_start_b
    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v2

    if-ne v2, v7, :cond_8

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 953
    :cond_8
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3

    .line 967
    :catch_3
    move-exception v0

    .line 968
    :goto_8
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "S1009"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 969
    invoke-virtual {v2, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 970
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 972
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 958
    :cond_9
    :try_start_d
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheServerConfiguration()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 959
    sget-object v2, Lcom/mysql/jdbc/ConnectionImpl;->customIndexToCharsetMapByUrl:Ljava/util/Map;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/sql/SQLException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_3

    .line 960
    :try_start_e
    sget-object v0, Lcom/mysql/jdbc/ConnectionImpl;->customIndexToCharsetMapByUrl:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getURL()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    sget-object v0, Lcom/mysql/jdbc/ConnectionImpl;->customCharsetToMblenMapByUrl:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getURL()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 972
    :cond_a
    if-eqz v1, :cond_b

    .line 974
    :try_start_f
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_f
    .catch Ljava/sql/SQLException; {:try_start_f .. :try_end_f} :catch_6

    .line 980
    :cond_b
    :goto_9
    if-eqz v3, :cond_c

    .line 982
    :try_start_10
    invoke-interface {v3}, Ljava/sql/Statement;->close()V
    :try_end_10
    .catch Ljava/sql/SQLException; {:try_start_10 .. :try_end_10} :catch_7

    :cond_c
    :goto_a
    move-object v0, v4

    move-object v1, v5

    .line 990
    :cond_d
    if-eqz v1, :cond_e

    .line 991
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->indexToCustomMysqlCharset:Ljava/util/Map;

    .line 993
    :cond_e
    if-eqz v0, :cond_f

    .line 994
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->mysqlCharsetToCustomMblen:Ljava/util/Map;

    .line 996
    :cond_f
    return-void

    .line 962
    :catchall_3
    move-exception v0

    :try_start_11
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2
    .catch Ljava/sql/SQLException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_3

    .line 975
    :catch_4
    move-exception v1

    goto/16 :goto_5

    .line 983
    :catch_5
    move-exception v1

    goto/16 :goto_6

    .line 975
    :catch_6
    move-exception v0

    goto :goto_9

    .line 983
    :catch_7
    move-exception v0

    goto :goto_a

    .line 972
    :catchall_4
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_4

    :catchall_5
    move-exception v0

    move-object v1, v2

    goto/16 :goto_4

    .line 967
    :catch_8
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_8

    :catch_9
    move-exception v0

    move-object v1, v2

    goto :goto_8

    .line 965
    :catch_a
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    .line 935
    :catch_b
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2

    :cond_10
    move-object v0, v2

    move-object v1, v2

    goto/16 :goto_0
.end method

.method private canHandleAsServerPreparedStatement(Ljava/lang/String;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 999
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1000
    :cond_0
    const/4 v0, 0x1

    .line 1025
    :goto_0
    return v0

    .line 1003
    :cond_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->useServerPreparedStmts:Z

    if-nez v0, :cond_2

    .line 1004
    const/4 v0, 0x0

    goto :goto_0

    .line 1007
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCachePreparedStatements()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1008
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCheckCache:Lcom/mysql/jdbc/util/LRUCache;

    monitor-enter v2

    .line 1009
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCheckCache:Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1011
    if-eqz v0, :cond_3

    .line 1012
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v2

    goto :goto_0

    .line 1022
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1015
    :cond_3
    :try_start_1
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->canHandleAsServerPreparedStatementNoCache(Ljava/lang/String;)Z

    move-result v0

    .line 1017
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPreparedStatementCacheSqlLimit()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 1018
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCheckCache:Lcom/mysql/jdbc/util/LRUCache;

    if-eqz v0, :cond_5

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v3, p1, v1}, Lcom/mysql/jdbc/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    :cond_4
    monitor-exit v2

    goto :goto_0

    .line 1018
    :cond_5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1025
    :cond_6
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->canHandleAsServerPreparedStatementNoCache(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private canHandleAsServerPreparedStatementNoCache(Ljava/lang/String;)Z
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x3f

    const/4 v2, 0x7

    const/4 v1, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1031
    const-string v0, "CALL"

    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndNonAlphaNumeric(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1099
    :cond_0
    :goto_0
    return v8

    .line 1037
    :cond_1
    invoke-virtual {p0, v1, v8, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "SELECT"

    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndNonAlphaNumeric(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DELETE"

    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndNonAlphaNumeric(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "INSERT"

    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndNonAlphaNumeric(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UPDATE"

    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndNonAlphaNumeric(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "REPLACE"

    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndNonAlphaNumeric(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1048
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 1049
    add-int/lit8 v11, v10, -0x7

    .line 1050
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->noBackslashEscapes:Z

    if-nez v0, :cond_4

    move v6, v7

    .line 1051
    :goto_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->useAnsiQuotes:Z

    if-eqz v0, :cond_5

    const-string v3, "\""

    :goto_2
    move v9, v8

    move v0, v8

    .line 1054
    :goto_3
    if-ge v0, v11, :cond_3

    .line 1055
    const-string v2, "LIMIT "

    if-eqz v6, :cond_6

    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    :goto_4
    move-object v1, p1

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    .line 1058
    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 1084
    :cond_3
    if-nez v9, :cond_a

    :goto_5
    move v8, v7

    .line 1085
    goto :goto_0

    :cond_4
    move v6, v8

    .line 1050
    goto :goto_1

    .line 1051
    :cond_5
    const-string v3, "\'"

    goto :goto_2

    .line 1055
    :cond_6
    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    goto :goto_4

    .line 1062
    :cond_7
    add-int/lit8 v0, v0, 0x7

    move v1, v0

    .line 1064
    :goto_6
    if-ge v1, v10, :cond_d

    .line 1065
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1071
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_8

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_8

    if-eq v0, v12, :cond_8

    move v0, v9

    :goto_7
    move v9, v0

    move v0, v1

    .line 1082
    goto :goto_3

    .line 1075
    :cond_8
    if-ne v0, v12, :cond_9

    move v0, v7

    .line 1077
    goto :goto_7

    .line 1080
    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 1081
    goto :goto_6

    :cond_a
    move v7, v8

    .line 1084
    goto :goto_5

    .line 1085
    :cond_b
    const-string v0, "XA "

    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1087
    const-string v0, "CREATE TABLE"

    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1089
    const-string v0, "DO"

    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1091
    const-string v0, "SET"

    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1093
    const-string v0, "SHOW WARNINGS"

    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    invoke-virtual {p0, v1, v2, v0}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1095
    :cond_c
    const-string v0, "/* ping */"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v8, v7

    goto/16 :goto_0

    :cond_d
    move v0, v9

    goto :goto_7
.end method

.method private characterSetNamesMatches(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 1153
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set_client"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set_connection"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkAndCreatePerformanceHistogram()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 1158
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    if-nez v0, :cond_0

    .line 1159
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    if-nez v0, :cond_1

    .line 1163
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    .line 1165
    :cond_1
    return-void
.end method

.method private checkAndCreateTablesAccessedHistogram()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 1168
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    if-nez v0, :cond_0

    .line 1169
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    .line 1172
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    if-nez v0, :cond_1

    .line 1173
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    .line 1175
    :cond_1
    return-void
.end method

.method private checkServerEncoding()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1201
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseUnicode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1271
    :cond_0
    :goto_0
    return-void

    .line 1206
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v2, "character_set"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1208
    if-nez v0, :cond_6

    .line 1210
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v2, "character_set_server"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1215
    :goto_1
    if-eqz v2, :cond_5

    .line 1217
    :try_start_0
    invoke-static {v2}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1228
    :goto_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseUnicode()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 1229
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v1

    .line 1231
    if-eqz v1, :cond_2

    .line 1232
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->setUseUnicode(Z)V

    .line 1233
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    goto :goto_0

    .line 1218
    :catch_0
    move-exception v0

    .line 1219
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1009"

    invoke-static {v2, v3, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 1220
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1221
    throw v1

    .line 1242
    :cond_2
    if-eqz v2, :cond_0

    .line 1243
    if-nez v0, :cond_3

    .line 1245
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1246
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1247
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    aput-char v3, v1, v4

    .line 1248
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    .line 1252
    :cond_3
    if-nez v0, :cond_4

    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown character encoding on server \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', use \'characterEncoding=\' property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to provide correct mapping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "01S00"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1262
    :cond_4
    :try_start_1
    const-string v1, "abc"

    invoke-static {v1, v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 1263
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    .line 1264
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->setUseUnicode(Z)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1265
    :catch_1
    move-exception v0

    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The driver can not map the character encoding \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' that your server is using "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "to a character encoding your JVM understands. You can specify this mapping manually by adding \"useUnicode=true\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "as well as \"characterEncoding=[an_encoding_your_jvm_understands]\" to your JDBC URL."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0S100"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_5
    move-object v0, v1

    goto/16 :goto_2

    :cond_6
    move-object v2, v0

    goto/16 :goto_1
.end method

.method private checkTransactionIsolationLevel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "transaction_isolation"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1281
    if-nez v0, :cond_0

    .line 1282
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "tx_isolation"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1285
    :cond_0
    if-eqz v0, :cond_1

    .line 1286
    sget-object v1, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1288
    if-eqz v0, :cond_1

    .line 1289
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    .line 1292
    :cond_1
    return-void
.end method

.method private cleanup(Ljava/lang/Throwable;)V
    .locals 3
    .parameter

    .prologue
    .line 1326
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v0, :cond_0

    .line 1327
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1328
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1337
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    .line 1338
    return-void

    .line 1330
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/mysql/jdbc/ConnectionImpl;->realClose(ZZZLjava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1333
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private closeAllOpenStatements()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1474
    const/4 v1, 0x0

    .line 1476
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/Statement;

    .line 1478
    :try_start_0
    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/mysql/jdbc/StatementImpl;->realClose(ZZ)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_1
    move-object v1, v0

    .line 1481
    goto :goto_0

    .line 1484
    :cond_0
    if-eqz v1, :cond_1

    .line 1485
    throw v1

    .line 1487
    :cond_1
    return-void

    .line 1479
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private closeStatement(Ljava/sql/Statement;)V
    .locals 1
    .parameter

    .prologue
    .line 1490
    if-eqz p1, :cond_0

    .line 1492
    :try_start_0
    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1499
    :cond_0
    :goto_0
    return-void

    .line 1493
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private configureCharsetProperties()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1570
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1573
    :try_start_0
    const-string v0, "abc"

    .line 1574
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1601
    :cond_0
    :goto_0
    return-void

    .line 1575
    :catch_0
    move-exception v0

    .line 1577
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 1580
    :try_start_1
    invoke-static {v0}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1587
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Java does not support the MySQL character encoding \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "01S00"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1581
    :catch_1
    move-exception v0

    .line 1582
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 1583
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1584
    throw v1

    .line 1593
    :cond_1
    :try_start_2
    const-string v0, "abc"

    .line 1594
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1595
    :catch_2
    move-exception v0

    .line 1596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported character encoding \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "01S00"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private configureClientCharacterSet(Z)Z
    .locals 18
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1617
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v3

    .line 1618
    const/4 v2, 0x0

    .line 1621
    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1622
    const/4 v14, 0x1

    .line 1624
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->setUseUnicode(Z)V

    .line 1626
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->configureCharsetProperties()V

    .line 1627
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v13

    .line 1633
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    const-string v3, "com.mysql.jdbc.faultInjection.serverCharsetIndex"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    const-string v4, "com.mysql.jdbc.faultInjection.serverCharsetIndex"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    .line 1637
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget v2, v2, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForCollationIndex(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    .line 1639
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 1640
    :cond_1
    if-eqz v13, :cond_10

    .line 1642
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    .line 1652
    :cond_2
    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "ISO8859_1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1653
    const-string v2, "Cp1252"

    .line 1655
    :cond_3
    const-string v3, "UnicodeBig"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "UTF-16"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "UTF-16LE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "UTF-32"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1657
    :cond_4
    const-string v2, "UTF-8"

    .line 1660
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1680
    :goto_0
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    .line 1682
    const-string v2, "ISO8859_1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    .line 1688
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseUnicode()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1689
    if-eqz v13, :cond_1a

    .line 1694
    const-string v2, "UTF-8"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "UTF8"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1697
    :cond_7
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v3

    .line 1698
    if-eqz v3, :cond_12

    sget-object v2, Lcom/mysql/jdbc/CharsetMapping;->UTF8MB4_INDEXES:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget v4, v4, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    move v15, v2

    .line 1700
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseOldUTF8Behavior()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1701
    if-nez p1, :cond_8

    const-string v2, "utf8"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->characterSetNamesMatches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v3, :cond_9

    const-string v2, "utf8mb4"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->characterSetNamesMatches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1702
    :cond_8
    const/4 v3, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SET NAMES "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v15, :cond_13

    const-string v2, "utf8mb4"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v7, 0x3eb

    const/16 v8, 0x3ef

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v12}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1704
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v4, "character_set_client"

    if-eqz v15, :cond_14

    const-string v2, "utf8mb4"

    :goto_3
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v4, "character_set_connection"

    if-eqz v15, :cond_15

    const-string v2, "utf8mb4"

    :goto_4
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1714
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    .line 1782
    :cond_a
    :goto_6
    const/4 v2, 0x0

    .line 1783
    const/4 v3, 0x0

    .line 1785
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    if-eqz v4, :cond_32

    .line 1786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v3, "character_set_results"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1788
    if-eqz v2, :cond_b

    const-string v3, "NULL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_21

    :cond_b
    const/4 v3, 0x1

    :goto_7
    move-object/from16 v16, v2

    .line 1791
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCharacterSetResults()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-nez v2, :cond_24

    .line 1796
    if-nez v3, :cond_23

    .line 1798
    const/4 v3, 0x0

    :try_start_3
    const-string v4, "SET character_set_results = NULL"

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v7, 0x3eb

    const/16 v8, 0x3ef

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v12}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1805
    :cond_c
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v3, "jdbc.local.character_set_results"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    :cond_d
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionCollation()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1869
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SET collation_connection = "

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionCollation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1870
    const-string v3, "SET collation_connection = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionCollation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1873
    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v7, 0x3eb

    const/16 v8, 0x3ef

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v12}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_7

    :cond_e
    move v2, v14

    .line 1888
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    .line 1896
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    .line 1897
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 1898
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1900
    const-string v6, "¥"

    invoke-virtual {v4, v6}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    .line 1901
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 1902
    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 1903
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_30

    .line 1904
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->requiresEscapingEncoder:Z
    :try_end_6
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_6 .. :try_end_6} :catch_8

    .line 1934
    :cond_f
    :goto_b
    return v2

    .line 1644
    :cond_10
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown initial character set index \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget v3, v3, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' received from server. Initial client character set can be forced via the \'characterEncoding\' property."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1000"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1662
    :catch_0
    move-exception v2

    .line 1663
    if-eqz v13, :cond_11

    .line 1665
    :try_start_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 1888
    :catchall_0
    move-exception v2

    move-object v3, v13

    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    throw v2

    .line 1667
    :cond_11
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown initial character set index \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget v3, v3, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' received from server. Initial client character set can be forced via the \'characterEncoding\' property."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1000"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 1672
    :catch_1
    move-exception v2

    .line 1673
    throw v2

    .line 1674
    :catch_2
    move-exception v2

    .line 1675
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "S1009"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    .line 1676
    invoke-virtual {v3, v2}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1677
    throw v3

    .line 1698
    :cond_12
    const/4 v2, 0x0

    move v15, v2

    goto/16 :goto_1

    .line 1702
    :cond_13
    const-string v2, "utf8"

    goto/16 :goto_2

    .line 1704
    :cond_14
    const-string v2, "utf8"

    goto/16 :goto_3

    .line 1705
    :cond_15
    const-string v2, "utf8"

    goto/16 :goto_4

    .line 1708
    :cond_16
    const/4 v3, 0x0

    const-string v4, "SET NAMES latin1"

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v7, 0x3eb

    const/16 v8, 0x3ef

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v12}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v3, "character_set_client"

    const-string v4, "latin1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v3, "character_set_connection"

    const-string v4, "latin1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1716
    :cond_17
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v13, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/mysql/jdbc/CharsetMapping;->getMysqlCharsetForJavaEncoding(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Ljava/lang/String;

    move-result-object v15

    .line 1727
    if-eqz v15, :cond_19

    .line 1729
    if-nez p1, :cond_18

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mysql/jdbc/ConnectionImpl;->characterSetNamesMatches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1730
    :cond_18
    const/4 v3, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SET NAMES "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v7, 0x3eb

    const/16 v8, 0x3ef

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v12}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v3, "character_set_client"

    invoke-interface {v2, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v3, "character_set_connection"

    invoke-interface {v2, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1739
    :cond_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1741
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1743
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getServerCharset()Ljava/lang/String;

    move-result-object v3

    .line 1745
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseOldUTF8Behavior()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1746
    const-string v3, "latin1"

    .line 1749
    :cond_1b
    const/4 v2, 0x0

    .line 1750
    const-string v4, "ucs2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string v4, "utf16"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string v4, "utf16le"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string v4, "utf32"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1752
    :cond_1c
    const-string v3, "utf8"

    .line 1753
    const/4 v2, 0x1

    .line 1754
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCharacterSetResults()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1d

    .line 1755
    const-string v4, "UTF-8"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/ConnectionImpl;->setCharacterSetResults(Ljava/lang/String;)V

    :cond_1d
    move-object v15, v3

    .line 1759
    if-nez p1, :cond_1e

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mysql/jdbc/ConnectionImpl;->characterSetNamesMatches(Ljava/lang/String;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v3

    if-eqz v3, :cond_1e

    if-eqz v2, :cond_1f

    .line 1761
    :cond_1e
    const/4 v3, 0x0

    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SET NAMES "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v7, 0x3eb

    const/16 v8, 0x3ef

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v12}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v3, "character_set_client"

    invoke-interface {v2, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v3, "character_set_connection"

    invoke-interface {v2, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_3

    .line 1772
    :cond_1f
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_6

    .line 1765
    :catch_3
    move-exception v2

    .line 1766
    invoke-virtual {v2}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v3

    const/16 v4, 0x71c

    if-ne v3, v4, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1767
    :cond_20
    throw v2

    .line 1788
    :cond_21
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 1800
    :catch_4
    move-exception v2

    .line 1801
    invoke-virtual {v2}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v3

    const/16 v4, 0x71c

    if-ne v3, v4, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1802
    :cond_22
    throw v2

    .line 1807
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v3, "jdbc.local.character_set_results"

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 1811
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseOldUTF8Behavior()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v2

    if-eqz v2, :cond_25

    .line 1813
    const/4 v3, 0x0

    :try_start_c
    const-string v4, "SET NAMES latin1"

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v7, 0x3eb

    const/16 v8, 0x3ef

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v12}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v3, "character_set_client"

    const-string v4, "latin1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v3, "character_set_connection"

    const-string v4, "latin1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_5

    .line 1823
    :cond_25
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCharacterSetResults()Ljava/lang/String;

    move-result-object v17

    .line 1826
    const-string v2, "UTF-8"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "UTF8"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1827
    :cond_26
    const-string v2, "utf8"

    move-object v15, v2

    .line 1838
    :goto_d
    if-nez v15, :cond_2a

    .line 1839
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " given for characterSetResults to a supported MySQL encoding."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 1817
    :catch_5
    move-exception v2

    .line 1818
    invoke-virtual {v2}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v3

    const/16 v4, 0x71c

    if-ne v3, v4, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1819
    :cond_27
    throw v2

    .line 1828
    :cond_28
    const-string v2, "null"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1829
    const-string v2, "NULL"

    move-object v15, v2

    goto :goto_d

    .line 1831
    :cond_29
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/mysql/jdbc/CharsetMapping;->getMysqlCharsetForJavaEncoding(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_d

    .line 1843
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v3, "character_set_results"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1844
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SET character_set_results = "

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1845
    const-string v3, "SET character_set_results = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1848
    const/4 v3, 0x0

    :try_start_e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v7, 0x3eb

    const/16 v8, 0x3ef

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v12}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_e .. :try_end_e} :catch_6

    .line 1856
    :cond_2b
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v3, "jdbc.local.character_set_results"

    invoke-interface {v2, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1859
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1860
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mysql/jdbc/ConnectionImpl;->errorMessageEncoding:Ljava/lang/String;

    goto/16 :goto_9

    .line 1850
    :catch_6
    move-exception v2

    .line 1851
    invoke-virtual {v2}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v3

    const/16 v4, 0x71c

    if-ne v3, v4, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1852
    :cond_2c
    throw v2

    .line 1864
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v3, "jdbc.local.character_set_results"

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 1874
    :catch_7
    move-exception v2

    .line 1875
    invoke-virtual {v2}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v3

    const/16 v4, 0x71c

    if-ne v3, v4, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1876
    :cond_2e
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1882
    :cond_2f
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-result-object v13

    goto/16 :goto_a

    .line 1906
    :cond_30
    :try_start_11
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 1907
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1909
    const-string v6, "₩"

    invoke-virtual {v4, v6}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    .line 1910
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 1911
    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 1912
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_f

    .line 1913
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->requiresEscapingEncoder:Z
    :try_end_11
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_b

    .line 1916
    :catch_8
    move-exception v3

    .line 1919
    :try_start_12
    const-string v3, "¥"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 1920
    const/4 v4, 0x0

    aget-byte v3, v3, v4

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_31

    .line 1921
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->requiresEscapingEncoder:Z
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_12} :catch_9

    goto/16 :goto_b

    .line 1928
    :catch_9
    move-exception v2

    .line 1929
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to use encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "S1000"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v3, v4, v2, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 1923
    :cond_31
    :try_start_13
    const-string v3, "₩"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 1924
    const/4 v4, 0x0

    aget-byte v3, v3, v4

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_f

    .line 1925
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->requiresEscapingEncoder:Z
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_13} :catch_9

    goto/16 :goto_b

    .line 1888
    :catchall_1
    move-exception v2

    goto/16 :goto_c

    :cond_32
    move-object/from16 v16, v2

    goto/16 :goto_8
.end method

.method private configureTimezone()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "timezone"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1947
    if-nez v0, :cond_0

    .line 1948
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "time_zone"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1950
    const-string v1, "SYSTEM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1951
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "system_time_zone"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1955
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getServerTimezone()Ljava/lang/String;

    move-result-object v1

    .line 1957
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseTimezone()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLegacyDatetimeCode()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_1
    if-eqz v0, :cond_6

    .line 1959
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->isEmptyOrWhitespaceOnly(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1961
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/TimeUtil;->getCanonicalTimezone(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1968
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 1969
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverTimezoneTZ:Ljava/util/TimeZone;

    .line 1974
    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverTimezoneTZ:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GMT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No timezone mapping entry for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1962
    :catch_0
    move-exception v0

    .line 1963
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1979
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverTimezoneTZ:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverTimezoneTZ:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isServerTzUTC:Z

    .line 1981
    :cond_4
    return-void

    .line 1979
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private connectOneTryOnly(ZLjava/util/Properties;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2221
    :try_start_0
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/ConnectionImpl;->coreConnect(Ljava/util/Properties;)V

    .line 2222
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getThreadId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionId:J

    .line 2223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    .line 2226
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAutoCommit()Z

    move-result v0

    .line 2227
    iget v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    .line 2228
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->isReadOnly(Z)Z

    move-result v2

    .line 2229
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCatalog()Ljava/lang/String;

    move-result-object v3

    .line 2231
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/mysql/jdbc/MysqlIO;->setStatementInterceptors(Ljava/util/List;)V

    .line 2234
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->initializePropsFromServer()V

    .line 2236
    if-eqz p1, :cond_1

    .line 2238
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->setAutoCommit(Z)V

    .line 2240
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    if-eqz v0, :cond_0

    .line 2241
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setTransactionIsolation(I)V

    .line 2244
    :cond_0
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->setCatalog(Ljava/lang/String;)V

    .line 2246
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->setReadOnly(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2254
    :cond_1
    return-void

    .line 2250
    :catch_0
    move-exception v1

    .line 2252
    instance-of v0, v1, Ljava/sql/SQLException;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Ljava/sql/SQLException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v0

    const/16 v2, 0x71c

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2257
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v0, :cond_3

    .line 2258
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 2263
    :cond_3
    instance-of v0, v1, Ljava/sql/SQLException;

    if-eqz v0, :cond_4

    .line 2264
    check-cast v1, Ljava/sql/SQLException;

    throw v1

    .line 2267
    :cond_4
    const-string v0, "Connection.UnableToConnect"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "08001"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 2269
    invoke-virtual {v0, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2271
    throw v0
.end method

.method private connectWithRetries(ZLjava/util/Properties;)V
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2026
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getInitialTimeout()I

    move-result v0

    int-to-double v3, v0

    .line 2027
    const/4 v2, 0x0

    .line 2029
    const/4 v1, 0x0

    .line 2031
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxReconnects()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 2033
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v2, :cond_0

    .line 2034
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 2037
    :cond_0
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/ConnectionImpl;->coreConnect(Ljava/util/Properties;)V

    .line 2038
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5}, Lcom/mysql/jdbc/ConnectionImpl;->pingInternal(ZI)V

    .line 2045
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2046
    :try_start_1
    iget-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v5}, Lcom/mysql/jdbc/MysqlIO;->getThreadId()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionId:J

    .line 2047
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    .line 2050
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAutoCommit()Z

    move-result v5

    .line 2051
    iget v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    .line 2052
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/mysql/jdbc/ConnectionImpl;->isReadOnly(Z)Z

    move-result v7

    .line 2053
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCatalog()Ljava/lang/String;

    move-result-object v8

    .line 2055
    iget-object v9, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget-object v10, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    invoke-virtual {v9, v10}, Lcom/mysql/jdbc/MysqlIO;->setStatementInterceptors(Ljava/util/List;)V

    .line 2056
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2059
    :try_start_2
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->initializePropsFromServer()V

    .line 2061
    if-eqz p1, :cond_2

    .line 2063
    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/ConnectionImpl;->setAutoCommit(Z)V

    .line 2065
    iget-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    if-eqz v2, :cond_1

    .line 2066
    invoke-virtual {p0, v6}, Lcom/mysql/jdbc/ConnectionImpl;->setTransactionIsolation(I)V

    .line 2069
    :cond_1
    invoke-virtual {p0, v8}, Lcom/mysql/jdbc/ConnectionImpl;->setCatalog(Ljava/lang/String;)V

    .line 2070
    invoke-virtual {p0, v7}, Lcom/mysql/jdbc/ConnectionImpl;->setReadOnly(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2073
    :cond_2
    const/4 v2, 0x1

    .line 2094
    :cond_3
    if-nez v2, :cond_5

    .line 2096
    const-string v0, "Connection.UnableToConnectWithRetries"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxReconnects()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "08001"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 2099
    invoke-virtual {v0, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2101
    throw v0

    .line 2056
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2076
    :catch_0
    move-exception v1

    .line 2078
    const/4 v2, 0x0

    .line 2085
    if-lez v0, :cond_4

    .line 2087
    double-to-long v5, v3

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    :try_start_5
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2031
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2104
    :cond_5
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParanoid()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getHighAvailability()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    .line 2106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    .line 2109
    :cond_6
    if-eqz p1, :cond_a

    .line 2113
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2119
    const/4 v1, 0x0

    .line 2121
    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2122
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/Statement;

    .line 2124
    instance-of v3, v0, Lcom/mysql/jdbc/ServerPreparedStatement;

    if-eqz v3, :cond_7

    .line 2125
    if-nez v1, :cond_8

    .line 2126
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 2129
    :cond_8
    invoke-virtual {v1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2133
    :cond_9
    if-eqz v1, :cond_a

    .line 2134
    :goto_3
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2135
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ServerPreparedStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->rePrepare()V

    goto :goto_3

    .line 2088
    :catch_1
    move-exception v5

    goto :goto_1

    .line 2139
    :cond_a
    return-void
.end method

.method private coreConnect(Ljava/util/Properties;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x5

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 2142
    const/16 v2, 0xcea

    .line 2143
    const-string v1, "localhost"

    .line 2145
    const-string v0, "PROTOCOL"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2147
    if-eqz v0, :cond_4

    .line 2150
    const-string v3, "tcp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2151
    const-string v0, "HOST"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->normalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2152
    const-string v0, "PORT"

    const-string v2, "3306"

    invoke-virtual {p1, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->parsePortNumber(Ljava/lang/String;)I

    move-result v2

    .line 2178
    :cond_0
    :goto_0
    iput v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->port:I

    .line 2179
    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    .line 2182
    const/4 v0, -0x1

    iput v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    .line 2185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    .line 2186
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v3, "character_set_server"

    const-string v4, "utf8"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2188
    new-instance v0, Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSocketFactoryClassName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v5

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSocketTimeout()I

    move-result v6

    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->largeRowSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    invoke-virtual {v3}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->getValueAsInt()I

    move-result v7

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/mysql/jdbc/MysqlIO;-><init>(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;II)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    .line 2190
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mysql/jdbc/MysqlIO;->doHandshake(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    invoke-virtual {p0, v9, v9, v8}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2193
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getEncodingForHandshake()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->errorMessageEncoding:Ljava/lang/String;

    .line 2195
    :cond_1
    return-void

    .line 2153
    :cond_2
    const-string v3, "pipe"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2154
    const-class v0, Lcom/mysql/jdbc/NamedPipeSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->setSocketFactoryClassName(Ljava/lang/String;)V

    .line 2156
    const-string v0, "PATH"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2158
    if-eqz v0, :cond_0

    .line 2159
    const-string v3, "namedPipePath"

    invoke-virtual {p1, v3, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 2163
    :cond_3
    const-string v0, "HOST"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->normalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2164
    const-string v0, "PORT"

    const-string v2, "3306"

    invoke-virtual {p1, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->parsePortNumber(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 2168
    :cond_4
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->hostPortPair:Ljava/lang/String;

    invoke-static {v0}, Lcom/mysql/jdbc/NonRegisteringDriver;->parseHostPortPair(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2169
    aget-object v1, v0, v8

    .line 2171
    invoke-direct {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->normalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2173
    aget-object v3, v0, v4

    if-eqz v3, :cond_0

    .line 2174
    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->parsePortNumber(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0
.end method

.method private createConfigCacheIfNeeded()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3631
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 3632
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverConfigCache:Lcom/mysql/jdbc/CacheAdapter;

    if-eqz v0, :cond_0

    .line 3633
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3691
    :goto_0
    return-void

    .line 3639
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getServerConfigCacheFactory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3642
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/CacheAdapterFactory;

    .line 3644
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->myURL:Ljava/lang/String;

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    iget-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/mysql/jdbc/CacheAdapterFactory;->getInstance(Lcom/mysql/jdbc/Connection;Ljava/lang/String;IILjava/util/Properties;)Lcom/mysql/jdbc/CacheAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverConfigCache:Lcom/mysql/jdbc/CacheAdapter;

    .line 3646
    new-instance v1, Lcom/mysql/jdbc/ConnectionImpl$4;

    invoke-direct {v1, p0}, Lcom/mysql/jdbc/ConnectionImpl$4;-><init>(Lcom/mysql/jdbc/ConnectionImpl;)V

    .line 3663
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    if-nez v0, :cond_1

    .line 3664
    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3690
    :goto_1
    :try_start_2
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3666
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    check-cast v0, Lcom/mysql/jdbc/ConnectionImpl$ExceptionInterceptorChain;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ConnectionImpl$ExceptionInterceptorChain;->addRingZero(Lcom/mysql/jdbc/ExceptionInterceptor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 3668
    :catch_0
    move-exception v0

    .line 3669
    :try_start_4
    const-string v1, "Connection.CantFindCacheFactory"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParseInfoCacheFactory()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "parseInfoCacheFactory"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 3672
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3674
    throw v1

    .line 3675
    :catch_1
    move-exception v0

    .line 3676
    const-string v1, "Connection.CantLoadCacheFactory"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParseInfoCacheFactory()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "parseInfoCacheFactory"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 3679
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3681
    throw v1

    .line 3682
    :catch_2
    move-exception v0

    .line 3683
    const-string v1, "Connection.CantLoadCacheFactory"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParseInfoCacheFactory()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "parseInfoCacheFactory"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 3686
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3688
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private createInitialHistogram([JJJ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/high16 v0, 0x3ff0

    .line 1985
    long-to-double v2, p4

    long-to-double v4, p2

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4034

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff4

    mul-double/2addr v2, v4

    .line 1987
    cmpg-double v4, v2, v0

    if-gez v4, :cond_1

    .line 1991
    :goto_0
    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    .line 1992
    aput-wide p2, p1, v2

    .line 1993
    long-to-double v3, p2

    add-double/2addr v3, v0

    double-to-long p2, v3

    .line 1991
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1995
    :cond_0
    return-void

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method private createPreparedStatementCaches()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2276
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 2277
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPreparedStatementCacheSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 2282
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParseInfoCacheFactory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2285
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/CacheAdapterFactory;

    .line 2287
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->myURL:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPreparedStatementCacheSize()I

    move-result v3

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPreparedStatementCacheSqlLimit()I

    move-result v4

    iget-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/mysql/jdbc/CacheAdapterFactory;->getInstance(Lcom/mysql/jdbc/Connection;Ljava/lang/String;IILjava/util/Properties;)Lcom/mysql/jdbc/CacheAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->cachedPreparedStatementParams:Lcom/mysql/jdbc/CacheAdapter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2313
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseServerPreparedStmts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2314
    new-instance v0, Lcom/mysql/jdbc/util/LRUCache;

    invoke-direct {v0, v7}, Lcom/mysql/jdbc/util/LRUCache;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCheckCache:Lcom/mysql/jdbc/util/LRUCache;

    .line 2316
    new-instance v0, Lcom/mysql/jdbc/ConnectionImpl$3;

    invoke-direct {v0, p0, v7}, Lcom/mysql/jdbc/ConnectionImpl$3;-><init>(Lcom/mysql/jdbc/ConnectionImpl;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    .line 2344
    :cond_0
    monitor-exit v6

    .line 2345
    return-void

    .line 2290
    :catch_0
    move-exception v0

    .line 2291
    const-string v1, "Connection.CantFindCacheFactory"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParseInfoCacheFactory()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "parseInfoCacheFactory"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 2294
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2296
    throw v1

    .line 2344
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2297
    :catch_1
    move-exception v0

    .line 2298
    :try_start_3
    const-string v1, "Connection.CantLoadCacheFactory"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParseInfoCacheFactory()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "parseInfoCacheFactory"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 2301
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2303
    throw v1

    .line 2304
    :catch_2
    move-exception v0

    .line 2305
    const-string v1, "Connection.CantLoadCacheFactory"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParseInfoCacheFactory()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "parseInfoCacheFactory"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 2308
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2310
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected static getInstance(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/jdbc/Connection;
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
    .line 382
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Lcom/mysql/jdbc/ConnectionImpl;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ConnectionImpl;-><init>(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mysql/jdbc/ConnectionImpl;->JDBC_4_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/Connection;

    goto :goto_0
.end method

.method private getMetaData(ZZ)Ljava/sql/DatabaseMetaData;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2891
    if-eqz p1, :cond_0

    .line 2892
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 2895
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/mysql/jdbc/DatabaseMetaData;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Z)Lcom/mysql/jdbc/DatabaseMetaData;

    move-result-object v0

    return-object v0
.end method

.method protected static declared-synchronized getNextRoundRobinHostIndex(Ljava/lang/String;Ljava/util/List;)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 399
    const-class v1, Lcom/mysql/jdbc/ConnectionImpl;

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 401
    sget-object v2, Lcom/mysql/jdbc/ConnectionImpl;->random:Ljava/util/Random;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 403
    monitor-exit v1

    return v0

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getProxy()Lcom/mysql/jdbc/MySQLConnection;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->proxy:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mysql/jdbc/ConnectionImpl;->proxy:Lcom/mysql/jdbc/MySQLConnection;

    :cond_0
    return-object p0
.end method

.method private getServerVariableAsInt(Ljava/lang/String;I)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3396
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 3401
    :goto_0
    return p2

    .line 3397
    :catch_0
    move-exception v0

    .line 3398
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v0

    const-string v1, "Connection.BadValueInServerVariables"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleAutoCommitDefaults()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3412
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getElideSetAutoCommits()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3413
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v3, "init_connect"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3414
    const/4 v3, 0x4

    const/4 v5, 0x2

    invoke-virtual {p0, v3, v1, v5}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3420
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement()Ljava/sql/Statement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 3421
    :try_start_1
    const-string v0, "SELECT @@session.autocommit"

    invoke-interface {v3, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v4

    .line 3422
    invoke-interface {v4}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3423
    const/4 v0, 0x1

    invoke-interface {v4, v0}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    .line 3424
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    move v1, v0

    .line 3427
    :goto_1
    if-eqz v4, :cond_0

    .line 3429
    :try_start_2
    invoke-interface {v4}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_3

    .line 3434
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 3436
    :try_start_3
    invoke-interface {v3}, Ljava/sql/Statement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_4

    .line 3452
    :cond_1
    :goto_3
    if-eqz v1, :cond_2

    .line 3454
    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->setAutoCommit(Z)V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3461
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 3424
    goto :goto_0

    .line 3427
    :catchall_0
    move-exception v0

    move-object v1, v4

    :goto_4
    if-eqz v4, :cond_4

    .line 3429
    :try_start_5
    invoke-interface {v4}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    .line 3434
    :cond_4
    :goto_5
    if-eqz v1, :cond_5

    .line 3436
    :try_start_6
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_2

    .line 3427
    :cond_5
    :goto_6
    throw v0

    .line 3446
    :cond_6
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/MysqlIO;->isSetNeededForAutoCommitMode(Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3448
    iput-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    goto :goto_3

    .line 3455
    :catch_0
    move-exception v0

    .line 3456
    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x71c

    if-ne v1, v2, :cond_7

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3457
    :cond_7
    throw v0

    .line 3430
    :catch_1
    move-exception v2

    goto :goto_5

    .line 3437
    :catch_2
    move-exception v1

    goto :goto_6

    .line 3430
    :catch_3
    move-exception v0

    goto :goto_2

    .line 3437
    :catch_4
    move-exception v0

    goto :goto_3

    .line 3427
    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_4

    :cond_8
    move v1, v2

    goto :goto_3

    :cond_9
    move v1, v2

    goto :goto_1
.end method

.method private initializeDriverProperties(Ljava/util/Properties;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3134
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->initializeProperties(Ljava/util/Properties;)V

    .line 3136
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptors()Ljava/lang/String;

    move-result-object v0

    .line 3138
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3139
    new-instance v1, Lcom/mysql/jdbc/ConnectionImpl$ExceptionInterceptorChain;

    invoke-direct {v1, p0, v0}, Lcom/mysql/jdbc/ConnectionImpl$ExceptionInterceptorChain;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 3142
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseJvmCharsetConverters()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->usePlatformCharsetConverters:Z

    .line 3144
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLogger()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MySQL"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/log/LogFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Lcom/mysql/jdbc/log/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->log:Lcom/mysql/jdbc/log/Log;

    .line 3146
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProfileSql()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseUsageAdvisor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3147
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->getInstance(Lcom/mysql/jdbc/MySQLConnection;)Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 3150
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCachePreparedStatements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3151
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->createPreparedStatementCaches()V

    .line 3154
    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getNoDatetimeStringSync()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseTimezone()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3155
    const-string v0, "Can\'t enable noDatetimeStringSync and useTimezone configuration properties at the same time"

    const-string v1, "01S00"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3159
    :cond_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheCallableStatements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3160
    new-instance v0, Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCallableStatementCacheSize()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/util/LRUCache;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->parsedCallableStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    .line 3163
    :cond_5
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAllowMultiQueries()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->setCacheResultSetMetadata(Z)V

    .line 3167
    :cond_6
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheResultSetMetadata()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3168
    new-instance v0, Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataCacheSize()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/util/LRUCache;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->resultSetMetadataCache:Lcom/mysql/jdbc/util/LRUCache;

    .line 3171
    :cond_7
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSocksProxyHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3172
    const-string v0, "com.mysql.jdbc.SocksProxySocketFactory"

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->setSocketFactoryClassName(Ljava/lang/String;)V

    .line 3174
    :cond_8
    return-void
.end method

.method private initializePropsFromServer()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, -0x1

    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3184
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionLifecycleInterceptors()Ljava/lang/String;

    move-result-object v0

    .line 3186
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    .line 3188
    if-eqz v0, :cond_0

    .line 3189
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    const-string v4, "Connection.badLifecycleInterceptor"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {p0, v1, v0, v4, v5}, Lcom/mysql/jdbc/Util;->loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    .line 3193
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->setSessionVariables()V

    .line 3199
    invoke-virtual {p0, v6, v2, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3200
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->setTransformedBitIsBoolean(Z)V

    .line 3203
    :cond_1
    invoke-virtual {p0, v6, v2, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->parserKnowsUnicode:Z

    .line 3208
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseServerPreparedStmts()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v6, v2, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3209
    iput-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->useServerPreparedStmts:Z

    .line 3211
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v3, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    invoke-virtual {p0, v0, v3, v8}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3212
    iput-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->useServerPreparedStmts:Z

    .line 3220
    :cond_2
    const/16 v0, 0x15

    const/16 v1, 0x16

    invoke-virtual {p0, v8, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3221
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->loadServerVariables()V

    .line 3223
    const/4 v0, 0x5

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v3, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3224
    const-string v0, "auto_increment_increment"

    invoke-direct {p0, v0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->getServerVariableAsInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoIncrementIncrement:I

    .line 3229
    :goto_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->buildCollationMapping()V

    .line 3233
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget v0, v0, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    if-nez v0, :cond_3

    .line 3234
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "collation_server"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3235
    if-eqz v0, :cond_a

    move v1, v2

    .line 3236
    :goto_1
    sget-object v4, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_COLLATION_NAME:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 3237
    sget-object v4, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_COLLATION_NAME:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3238
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iput v1, v0, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    .line 3248
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-static {v0}, Lcom/mysql/jdbc/LicenseConfiguration;->checkLicenseType(Ljava/util/Map;)V

    .line 3250
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "lower_case_table_names"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3252
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_4
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->lowerCaseTableNames:Z

    .line 3254
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_5
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->storesLowerCaseTableName:Z

    .line 3256
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->configureTimezone()V

    .line 3258
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "max_allowed_packet"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3259
    const-string v0, "max_allowed_packet"

    invoke-direct {p0, v0, v7}, Lcom/mysql/jdbc/ConnectionImpl;->getServerVariableAsInt(Ljava/lang/String;I)I

    move-result v0

    .line 3261
    if-eq v0, v7, :cond_d

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxAllowedPacket()I

    move-result v1

    if-lt v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxAllowedPacket()I

    move-result v1

    if-gtz v1, :cond_d

    .line 3262
    :cond_6
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->setMaxAllowedPacket(I)V

    .line 3267
    :cond_7
    :goto_5
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseServerPrepStmts()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3268
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getBlobSendChunkSize()I

    move-result v0

    .line 3271
    const/16 v1, 0x200b

    .line 3272
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxAllowedPacket()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, v1

    .line 3274
    if-gtz v0, :cond_e

    .line 3275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection setting too low for \'maxAllowedPacket\'. When \'useServerPrepStmts=true\', \'maxAllowedPacket\' must be higher than "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Check also \'max_allowed_packet\' in MySQL configuration files."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "01S00"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3226
    :cond_8
    iput v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoIncrementIncrement:I

    goto/16 :goto_0

    .line 3236
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 3244
    :cond_a
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    const/16 v1, 0x2d

    iput v1, v0, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    goto/16 :goto_2

    :cond_b
    move v1, v3

    .line 3252
    goto/16 :goto_3

    :cond_c
    move v0, v3

    .line 3254
    goto :goto_4

    .line 3263
    :cond_d
    if-ne v0, v7, :cond_7

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxAllowedPacket()I

    move-result v0

    if-ne v0, v7, :cond_7

    .line 3264
    const v0, 0xffff

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->setMaxAllowedPacket(I)V

    goto :goto_5

    .line 3282
    :cond_e
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->setBlobSendChunkSize(Ljava/lang/String;)V

    .line 3286
    :cond_f
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "net_buffer_length"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3287
    const-string v0, "net_buffer_length"

    const/16 v1, 0x4000

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->getServerVariableAsInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->netBufferLength:I

    .line 3290
    :cond_10
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkTransactionIsolationLevel()V

    .line 3292
    invoke-virtual {p0, v6, v2, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-nez v0, :cond_11

    .line 3293
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkServerEncoding()V

    .line 3296
    :cond_11
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->checkForCharsetMismatch()V

    .line 3298
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "sql_mode"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3299
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "sql_mode"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3300
    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->isStrictlyNumeric(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3302
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_17

    move v0, v2

    :goto_6
    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->useAnsiQuotes:Z

    .line 3310
    :cond_12
    :goto_7
    invoke-direct {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->configureClientCharacterSet(Z)Z

    .line 3313
    :try_start_0
    invoke-static {p0}, Lcom/mysql/jdbc/CharsetMapping;->getCharacterEncodingForErrorMessages(Lcom/mysql/jdbc/ConnectionImpl;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->errorMessageEncoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3322
    const/16 v0, 0x17

    const/16 v1, 0xf

    invoke-virtual {p0, v8, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3323
    iput-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->transactionsSupported:Z

    .line 3324
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->handleAutoCommitDefaults()V

    .line 3329
    :goto_8
    const/16 v0, 0x17

    const/16 v1, 0x24

    invoke-virtual {p0, v8, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3330
    iput-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    .line 3335
    :goto_9
    const/16 v0, 0x17

    const/4 v1, 0x6

    invoke-virtual {p0, v8, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasQuotedIdentifiers:Z

    .line 3337
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->resetMaxBuf()V

    .line 3343
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0, v6, v2, v3}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3344
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "jdbc.local.character_set_results"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3346
    if-eqz v0, :cond_13

    const-string v1, "NULL"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1e

    .line 3348
    :cond_13
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set_system"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3351
    if-eqz v0, :cond_1d

    .line 3352
    invoke-static {v0}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3357
    :goto_a
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetMetadata:Ljava/lang/String;

    .line 3370
    :goto_b
    invoke-virtual {p0, v6, v2, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0xa

    invoke-virtual {p0, v6, v2, v0}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAllowMultiQueries()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3371
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->isQueryCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3372
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->setAllowMultiQueries(Z)V

    .line 3376
    :cond_14
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v3, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalTransactionState()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getElideSetAutoCommits()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->isQueryCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x5

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v2, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-nez v0, :cond_16

    .line 3379
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->setUseLocalTransactionState(Z)V

    .line 3380
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->setElideSetAutoCommits(Z)V

    .line 3387
    :cond_16
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->setupServerForTruncationChecks()V

    .line 3388
    return-void

    :cond_17
    move v0, v3

    .line 3302
    goto/16 :goto_6

    .line 3303
    :cond_18
    if-eqz v0, :cond_12

    .line 3304
    const-string v1, "ANSI_QUOTES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v7, :cond_19

    move v1, v2

    :goto_c
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->useAnsiQuotes:Z

    .line 3305
    const-string v1, "NO_BACKSLASH_ESCAPES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v7, :cond_1a

    move v0, v2

    :goto_d
    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->noBackslashEscapes:Z

    goto/16 :goto_7

    :cond_19
    move v1, v3

    .line 3304
    goto :goto_c

    :cond_1a
    move v0, v3

    .line 3305
    goto :goto_d

    .line 3314
    :catch_0
    move-exception v0

    .line 3315
    throw v0

    .line 3316
    :catch_1
    move-exception v0

    .line 3317
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 3318
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3319
    throw v1

    .line 3326
    :cond_1b
    iput-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->transactionsSupported:Z

    goto/16 :goto_8

    .line 3332
    :cond_1c
    iput-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    goto/16 :goto_9

    .line 3354
    :cond_1d
    const-string v0, "UTF-8"

    goto/16 :goto_a

    .line 3359
    :cond_1e
    invoke-static {v0}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetResultsOnServer:Ljava/lang/String;

    .line 3360
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetResultsOnServer:Ljava/lang/String;

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetMetadata:Ljava/lang/String;

    goto/16 :goto_b

    .line 3363
    :cond_1f
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetMetadata:Ljava/lang/String;

    goto/16 :goto_b
.end method

.method private loadServerVariables()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3704
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheServerConfiguration()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3705
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->createConfigCacheIfNeeded()V

    .line 3707
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverConfigCache:Lcom/mysql/jdbc/CacheAdapter;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/CacheAdapter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 3709
    if-eqz v0, :cond_2

    .line 3710
    const-string v1, "server_version_string"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3712
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v3}, Lcom/mysql/jdbc/MysqlIO;->getServerVersion()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v3}, Lcom/mysql/jdbc/MysqlIO;->getServerVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3713
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    .line 3833
    :cond_0
    :goto_0
    return-void

    .line 3718
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverConfigCache:Lcom/mysql/jdbc/CacheAdapter;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/CacheAdapter;->invalidate(Ljava/lang/Object;)V

    .line 3726
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement()Ljava/sql/Statement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v3

    .line 3728
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->dbmd:Ljava/sql/DatabaseMetaData;

    invoke-interface {v0}, Ljava/sql/DatabaseMetaData;->getDriverVersion()Ljava/lang/String;

    move-result-object v0

    .line 3730
    if-eqz v0, :cond_7

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_7

    .line 3731
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, v5

    .line 3733
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 3734
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 3736
    const/16 v7, 0x2a

    if-ne v5, v7, :cond_3

    .line 3737
    const-string v5, "[star]"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3733
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3739
    :cond_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3816
    :catch_0
    move-exception v0

    move-object v1, v3

    .line 3817
    :goto_3
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3819
    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_4
    if-eqz v2, :cond_4

    .line 3821
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_4

    .line 3826
    :cond_4
    :goto_5
    if-eqz v3, :cond_5

    .line 3828
    :try_start_4
    invoke-interface {v3}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_5

    .line 3819
    :cond_5
    :goto_6
    throw v0

    .line 3743
    :cond_6
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3746
    :cond_7
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParanoid()Z

    move-result v1

    if-nez v1, :cond_8

    if-nez v0, :cond_c

    :cond_8
    const-string v0, ""

    .line 3748
    :goto_7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    .line 3750
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getJdbcCompliantTruncation()Z

    move-result v5

    .line 3751
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setJdbcCompliantTruncation(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    .line 3754
    const/4 v1, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_6
    invoke-virtual {p0, v1, v6, v7}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "SELECT"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3756
    const-string v1, "  @@session.auto_increment_increment AS auto_increment_increment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3757
    const-string v1, ", @@character_set_client AS character_set_client"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3758
    const-string v1, ", @@character_set_connection AS character_set_connection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3759
    const-string v1, ", @@character_set_results AS character_set_results"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3760
    const-string v1, ", @@character_set_server AS character_set_server"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3761
    const-string v1, ", @@collation_server AS collation_server"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3762
    const-string v1, ", @@init_connect AS init_connect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3763
    const-string v1, ", @@interactive_timeout AS interactive_timeout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3764
    const/4 v1, 0x5

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-virtual {p0, v1, v6, v7}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-nez v1, :cond_9

    .line 3765
    const-string v1, ", @@language AS language"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3767
    :cond_9
    const-string v1, ", @@license AS license"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3768
    const-string v1, ", @@lower_case_table_names AS lower_case_table_names"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3769
    const-string v1, ", @@max_allowed_packet AS max_allowed_packet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3770
    const-string v1, ", @@net_buffer_length AS net_buffer_length"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3771
    const-string v1, ", @@net_write_timeout AS net_write_timeout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3772
    const/16 v1, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {p0, v1, v6, v7}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-nez v1, :cond_a

    .line 3773
    const-string v1, ", @@query_cache_size AS query_cache_size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3774
    const-string v1, ", @@query_cache_type AS query_cache_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3776
    :cond_a
    const-string v1, ", @@sql_mode AS sql_mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3777
    const-string v1, ", @@system_time_zone AS system_time_zone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3778
    const-string v1, ", @@time_zone AS time_zone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3779
    const/16 v1, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {p0, v1, v6, v7}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x5

    const/4 v6, 0x7

    const/16 v7, 0x14

    invoke-virtual {p0, v1, v6, v7}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v1, v6, v7}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-nez v1, :cond_d

    .line 3780
    :cond_b
    const-string v1, ", @@transaction_isolation AS transaction_isolation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3784
    :goto_8
    const-string v1, ", @@wait_timeout AS wait_timeout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3786
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v1

    .line 3787
    :try_start_7
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3788
    invoke-interface {v1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v6

    move v0, v4

    .line 3789
    :goto_9
    invoke-interface {v6}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v4

    if-gt v0, v4, :cond_10

    .line 3790
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v0}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_2

    .line 3789
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 3746
    :cond_c
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/* "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " */"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v0

    goto/16 :goto_7

    .line 3782
    :cond_d
    :try_start_9
    const-string v1, ", @@tx_isolation AS transaction_isolation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_8

    .line 3802
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 3803
    :goto_a
    :try_start_a
    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v2

    const/16 v4, 0x71c

    if-ne v2, v4, :cond_e

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3804
    :cond_e
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 3807
    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_b
    :try_start_b
    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/ConnectionImpl;->setJdbcCompliantTruncation(Z)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_0

    .line 3819
    :catchall_2
    move-exception v0

    goto/16 :goto_4

    .line 3794
    :cond_f
    :try_start_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SHOW VARIABLES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_1

    move-result-object v1

    .line 3795
    :goto_c
    :try_start_d
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3796
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    invoke-interface {v1, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 3802
    :catch_2
    move-exception v0

    goto :goto_a

    .line 3800
    :cond_10
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_d .. :try_end_d} :catch_2

    .line 3807
    :try_start_e
    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/ConnectionImpl;->setJdbcCompliantTruncation(Z)V

    .line 3810
    :goto_d
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheServerConfiguration()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3811
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "server_version_string"

    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v4}, Lcom/mysql/jdbc/MysqlIO;->getServerVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3813
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverConfigCache:Lcom/mysql/jdbc/CacheAdapter;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getURL()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-interface {v0, v1, v4}, Lcom/mysql/jdbc/CacheAdapter;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/sql/SQLException; {:try_start_e .. :try_end_e} :catch_0

    .line 3819
    :cond_11
    if-eqz v2, :cond_12

    .line 3821
    :try_start_f
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_f
    .catch Ljava/sql/SQLException; {:try_start_f .. :try_end_f} :catch_6

    .line 3826
    :cond_12
    :goto_e
    if-eqz v3, :cond_0

    .line 3828
    :try_start_10
    invoke-interface {v3}, Ljava/sql/Statement;->close()V
    :try_end_10
    .catch Ljava/sql/SQLException; {:try_start_10 .. :try_end_10} :catch_3

    goto/16 :goto_0

    .line 3829
    :catch_3
    move-exception v0

    goto/16 :goto_0

    .line 3807
    :cond_13
    :try_start_11
    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/ConnectionImpl;->setJdbcCompliantTruncation(Z)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4
    .catch Ljava/sql/SQLException; {:try_start_11 .. :try_end_11} :catch_8

    move-object v2, v1

    .line 3808
    goto :goto_d

    .line 3822
    :catch_4
    move-exception v1

    goto/16 :goto_5

    .line 3829
    :catch_5
    move-exception v1

    goto/16 :goto_6

    .line 3822
    :catch_6
    move-exception v0

    goto :goto_e

    .line 3819
    :catchall_3
    move-exception v0

    move-object v3, v2

    goto/16 :goto_4

    :catchall_4
    move-exception v0

    move-object v2, v1

    goto/16 :goto_4

    .line 3816
    :catch_7
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :catch_8
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_3

    .line 3807
    :catchall_5
    move-exception v0

    goto/16 :goto_b
.end method

.method private normalizeHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2198
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/mysql/jdbc/StringUtils;->isEmptyOrWhitespaceOnly(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2199
    :cond_0
    const-string p1, "localhost"

    .line 2202
    :cond_1
    return-object p1
.end method

.method private static nullSafeCompare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 407
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 415
    :cond_0
    :goto_0
    return v0

    .line 411
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    move v0, v1

    .line 412
    goto :goto_0

    .line 415
    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private parseCallableStatement(Ljava/lang/String;)Lcom/mysql/jdbc/CallableStatement;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3877
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->serverSupportsConvertFn()Z

    move-result v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/EscapeProcessor;->escapeSQL(Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)Ljava/lang/Object;

    move-result-object v1

    .line 3882
    instance-of v0, v1, Lcom/mysql/jdbc/EscapeProcessorResult;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 3883
    check-cast v0, Lcom/mysql/jdbc/EscapeProcessorResult;

    iget-object v0, v0, Lcom/mysql/jdbc/EscapeProcessorResult;->escapedSql:Ljava/lang/String;

    .line 3884
    check-cast v1, Lcom/mysql/jdbc/EscapeProcessorResult;

    iget-boolean v1, v1, Lcom/mysql/jdbc/EscapeProcessorResult;->callingStoredFunction:Z

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 3890
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-static {v2, v1, v3, v0}, Lcom/mysql/jdbc/CallableStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mysql/jdbc/CallableStatement;

    move-result-object v0

    return-object v0

    .line 3886
    :cond_0
    check-cast v1, Ljava/lang/String;

    .line 3887
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parsePortNumber(Ljava/lang/String;)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2208
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2213
    return v0

    .line 2209
    :catch_0
    move-exception v0

    .line 2210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal connection port value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "01S00"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private repartitionHistogram([I[JJJ)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4329
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->oldHistCounts:[I

    if-nez v0, :cond_0

    .line 4330
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->oldHistCounts:[I

    .line 4331
    array-length v0, p2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->oldHistBreakpoints:[J

    .line 4334
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->oldHistCounts:[I

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4336
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->oldHistBreakpoints:[J

    const/4 v2, 0x0

    array-length v3, p2

    invoke-static {p2, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-wide/from16 v4, p5

    .line 4338
    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ConnectionImpl;->createInitialHistogram([JJJ)V

    .line 4340
    const/4 v0, 0x0

    move v10, v0

    :goto_0
    const/16 v0, 0x14

    if-ge v10, v0, :cond_1

    .line 4341
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->oldHistBreakpoints:[J

    aget-wide v3, v0, v10

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->oldHistCounts:[I

    aget v5, v0, v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/mysql/jdbc/ConnectionImpl;->addToHistogram([I[JJIJJ)V

    .line 4340
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    .line 4343
    :cond_1
    return-void
.end method

.method private repartitionPerformanceHistogram()V
    .locals 7

    .prologue
    .line 4346
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkAndCreatePerformanceHistogram()V

    .line 4348
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->shortestQueryTimeMs:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    const-wide/16 v3, 0x0

    :goto_0
    iget-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionImpl;->repartitionHistogram([I[JJJ)V

    .line 4350
    return-void

    .line 4348
    :cond_0
    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->shortestQueryTimeMs:J

    goto :goto_0
.end method

.method private repartitionTablesAccessedHistogram()V
    .locals 7

    .prologue
    .line 4353
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkAndCreateTablesAccessedHistogram()V

    .line 4355
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->minimumNumberTablesAccessed:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    const-wide/16 v3, 0x0

    :goto_0
    iget-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->maximumNumberTablesAccessed:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionImpl;->repartitionHistogram([I[JJJ)V

    .line 4357
    return-void

    .line 4355
    :cond_0
    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->minimumNumberTablesAccessed:J

    goto :goto_0
.end method

.method private reportMetrics()V
    .locals 15

    .prologue
    const/high16 v1, -0x8000

    const/16 v14, 0x14

    const/16 v13, 0x12

    const/16 v12, 0x13

    const/4 v2, 0x0

    .line 4360
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4361
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4363
    const-string v0, "** Performance Metrics Report **\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nLongest reported query: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nShortest reported query: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->shortestQueryTimeMs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nAverage query execution time: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->totalQueryTimeMs:D

    iget-wide v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfQueriesIssued:J

    long-to-double v6, v6

    div-double/2addr v3, v6

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nNumber of statements executed: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfQueriesIssued:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nNumber of result sets created: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfResultSetsCreated:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nNumber of statements prepared: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPrepares:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nNumber of prepared statement executions: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPreparedExecutes:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4372
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    if-eqz v0, :cond_6

    .line 4373
    const-string v0, "\n\n\tTiming Histogram:\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v2

    move v0, v1

    .line 4377
    :goto_0
    if-ge v3, v14, :cond_1

    .line 4378
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    aget v4, v4, v3

    if-le v4, v0, :cond_0

    .line 4379
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    aget v0, v0, v3

    .line 4377
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4383
    :cond_1
    if-nez v0, :cond_2

    .line 4384
    const/4 v0, 0x1

    :cond_2
    move v4, v2

    .line 4387
    :goto_1
    if-ge v4, v12, :cond_5

    .line 4389
    if-nez v4, :cond_3

    .line 4390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n\tless than "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    add-int/lit8 v7, v4, 0x1

    aget-wide v6, v6, v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ms: \t"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    aget v6, v6, v4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4396
    :goto_2
    const-string v3, "\t"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4398
    int-to-double v6, v14

    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    aget v3, v3, v4

    int-to-double v8, v3

    int-to-double v10, v0

    div-double/2addr v8, v10

    mul-double/2addr v6, v8

    double-to-int v6, v6

    move v3, v2

    .line 4400
    :goto_3
    if-ge v3, v6, :cond_4

    .line 4401
    const-string v7, "*"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4400
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4392
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n\tbetween "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    aget-wide v6, v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " and "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    add-int/lit8 v7, v4, 0x1

    aget-wide v6, v6, v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ms: \t"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    aget v6, v6, v4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4404
    :cond_4
    iget-wide v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    add-int/lit8 v8, v4, 0x1

    aget v3, v3, v8

    int-to-long v8, v3

    cmp-long v3, v6, v8

    if-gez v3, :cond_8

    .line 4409
    :cond_5
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    aget-wide v3, v0, v13

    iget-wide v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    cmp-long v0, v3, v6

    if-gez v0, :cond_6

    .line 4410
    const-string v0, "\n\tbetween "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4411
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    aget-wide v3, v0, v13

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4412
    const-string v0, " and "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4413
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    aget-wide v3, v0, v12

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4414
    const-string v0, " ms: \t"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4415
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    aget v0, v0, v12

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4419
    :cond_6
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    if-eqz v0, :cond_e

    .line 4420
    const-string v0, "\n\n\tTable Join Histogram:\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    move v1, v2

    .line 4424
    :goto_4
    if-ge v1, v14, :cond_9

    .line 4425
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    aget v3, v3, v1

    if-le v3, v0, :cond_7

    .line 4426
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    aget v0, v0, v1

    .line 4424
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4387
    :cond_8
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_1

    .line 4430
    :cond_9
    if-nez v0, :cond_a

    .line 4431
    const/4 v0, 0x1

    :cond_a
    move v3, v2

    .line 4434
    :goto_5
    if-ge v3, v12, :cond_d

    .line 4436
    if-nez v3, :cond_b

    .line 4437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n\t"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    add-int/lit8 v6, v3, 0x1

    aget-wide v6, v4, v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " tables or less: \t\t"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    aget v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4443
    :goto_6
    const-string v1, "\t"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4445
    int-to-double v6, v14

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    aget v1, v1, v3

    int-to-double v8, v1

    int-to-double v10, v0

    div-double/2addr v8, v10

    mul-double/2addr v6, v8

    double-to-int v4, v6

    move v1, v2

    .line 4447
    :goto_7
    if-ge v1, v4, :cond_c

    .line 4448
    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4447
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4439
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n\tbetween "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    aget-wide v6, v4, v3

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " and "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    add-int/lit8 v6, v3, 0x1

    aget-wide v6, v4, v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " tables: \t"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    aget v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 4451
    :cond_c
    iget-wide v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->maximumNumberTablesAccessed:J

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    add-int/lit8 v4, v3, 0x1

    aget-wide v8, v1, v4

    cmp-long v1, v6, v8

    if-gez v1, :cond_10

    .line 4456
    :cond_d
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    aget-wide v0, v0, v13

    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->maximumNumberTablesAccessed:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    .line 4457
    const-string v0, "\n\tbetween "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4458
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    aget-wide v0, v0, v13

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4459
    const-string v0, " and "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4460
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    aget-wide v0, v0, v12

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4461
    const-string v0, " tables: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4462
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    aget v0, v0, v12

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4466
    :cond_e
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->log:Lcom/mysql/jdbc/log/Log;

    invoke-interface {v0, v5}, Lcom/mysql/jdbc/log/Log;->logInfo(Ljava/lang/Object;)V

    .line 4468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->metricsLastReportedMs:J

    .line 4470
    :cond_f
    return-void

    .line 4434
    :cond_10
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_5
.end method

.method private rollbackNoChecks()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 4651
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalTransactionState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0, v7, v7}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4652
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->inTransactionOnServer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4658
    :goto_0
    return-void

    .line 4657
    :cond_0
    const-string v2, "rollback"

    const/4 v3, -0x1

    const/16 v5, 0x3eb

    const/16 v6, 0x3ef

    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    move-object v0, p0

    move-object v4, v1

    move-object v9, v1

    move v10, v7

    invoke-virtual/range {v0 .. v10}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    goto :goto_0
.end method

.method private setSavepoint(Lcom/mysql/jdbc/MysqlSavepoint;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4959
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4960
    const/4 v0, 0x4

    const/4 v1, 0x0

    const/16 v3, 0xe

    :try_start_0
    invoke-virtual {p0, v0, v1, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4961
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 4963
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SAVEPOINT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4964
    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4965
    invoke-virtual {p1}, Lcom/mysql/jdbc/MysqlSavepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4966
    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4968
    const/4 v1, 0x0

    .line 4971
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v1

    .line 4973
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4975
    :try_start_2
    invoke-direct {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->closeStatement(Ljava/sql/Statement;)V

    .line 4980
    monitor-exit v2

    .line 4981
    return-void

    .line 4975
    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->closeStatement(Ljava/sql/Statement;)V

    throw v0

    .line 4980
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 4978
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
.end method

.method private setSessionVariables()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 4997
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSessionVariables()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4998
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4999
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSessionVariables()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, "\"\'("

    const-string v3, "\"\')"

    const-string v4, "\"\'"

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5000
    const-string v1, ";"

    const-string v2, "\"\'("

    const-string v3, "\"\')"

    const-string v4, "\"\'"

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 5003
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5004
    const/4 v1, 0x0

    .line 5006
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement()Ljava/sql/Statement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5007
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "SET "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5008
    const-string v1, ""

    .line 5009
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5010
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 5011
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5012
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5013
    const-string v1, "SESSION "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5015
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5016
    const-string v0, ","

    :goto_2
    move-object v1, v0

    goto :goto_1

    .line 5019
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5021
    if-eqz v2, :cond_3

    .line 5022
    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    .line 5027
    :cond_3
    return-void

    .line 5021
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_4

    .line 5022
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 5021
    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method private setupServerForTruncationChecks()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 5111
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getJdbcCompliantTruncation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5112
    const/4 v0, 0x5

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v7, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5113
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v2, "sql_mode"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5115
    const-string v2, "STRICT_TRANS_TABLES"

    invoke-static {v0, v2}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_3

    const/4 v2, 0x1

    .line 5117
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    if-nez v2, :cond_4

    .line 5118
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "SET sql_mode=\'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5120
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 5121
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5122
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5125
    :cond_1
    const-string v0, "STRICT_TRANS_TABLES\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x3eb

    const/16 v6, 0x3ef

    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    move-object v0, p0

    move-object v4, v1

    move-object v9, v1

    move v10, v7

    invoke-virtual/range {v0 .. v10}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 5129
    invoke-virtual {p0, v7}, Lcom/mysql/jdbc/ConnectionImpl;->setJdbcCompliantTruncation(Z)V

    .line 5137
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v2, v7

    .line 5115
    goto :goto_0

    .line 5130
    :cond_4
    if-eqz v2, :cond_2

    .line 5132
    invoke-virtual {p0, v7}, Lcom/mysql/jdbc/ConnectionImpl;->setJdbcCompliantTruncation(Z)V

    goto :goto_1
.end method


# virtual methods
.method public abort(Ljava/util/concurrent/Executor;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5448
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 5450
    if-eqz v0, :cond_0

    .line 5451
    sget-object v1, Lcom/mysql/jdbc/ConnectionImpl;->ABORT_PERM:Ljava/sql/SQLPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 5454
    :cond_0
    if-nez p1, :cond_1

    .line 5455
    const-string v0, "Executor can not be null"

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 5458
    :cond_1
    new-instance v0, Lcom/mysql/jdbc/ConnectionImpl$11;

    invoke-direct {v0, p0}, Lcom/mysql/jdbc/ConnectionImpl$11;-><init>(Lcom/mysql/jdbc/ConnectionImpl;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5468
    return-void
.end method

.method public abortInternal()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v0, :cond_0

    .line 1307
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 1308
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->releaseResources()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1312
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    .line 1315
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    .line 1316
    return-void

    .line 1309
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public changeUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1116
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1117
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 1119
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1120
    :cond_0
    const-string p1, ""

    .line 1123
    :cond_1
    if-nez p2, :cond_2

    .line 1124
    const-string p2, ""

    .line 1128
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1131
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v2}, Lcom/mysql/jdbc/MysqlIO;->changeUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1138
    :try_start_2
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    .line 1139
    iput-object p2, p0, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    .line 1141
    const/4 v0, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1142
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->configureClientCharacterSet(Z)Z

    .line 1145
    :cond_3
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->setSessionVariables()V

    .line 1147
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->setupServerForTruncationChecks()V

    .line 1148
    monitor-exit v1

    .line 1149
    return-void

    .line 1132
    :catch_0
    move-exception v0

    .line 1133
    const/4 v2, 0x5

    const/4 v3, 0x6

    const/16 v4, 0xd

    invoke-virtual {p0, v2, v3, v4}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "28000"

    invoke-virtual {v0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1134
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->cleanup(Ljava/lang/Throwable;)V

    .line 1136
    :cond_4
    throw v0

    .line 1148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public checkClosed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1178
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    if-eqz v0, :cond_0

    .line 1179
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->throwConnectionClosedException()V

    .line 1181
    :cond_0
    return-void
.end method

.method public clearHasTriedMaster()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasTriedMasterFlag:Z

    .line 1343
    return-void
.end method

.method public clearWarnings()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1354
    return-void
.end method

.method public clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1361
    const/16 v0, 0x3eb

    const/16 v1, 0x3ef

    invoke-virtual {p0, p1, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public clientPrepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1368
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    move-object v0, v1

    .line 1370
    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    if-ne p2, v2, :cond_0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    .line 1372
    return-object v1

    .line 1370
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clientPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
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
    .line 1382
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;IIZ)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public clientPrepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
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
    .line 1438
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;IIZ)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public clientPrepareStatement(Ljava/lang/String;IIZ)Ljava/sql/PreparedStatement;
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
    .line 1387
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 1389
    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProcessEscapeCodesForPrepStmts()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->nativeSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1393
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCachePreparedStatements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1394
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->cachedPreparedStatementParams:Lcom/mysql/jdbc/CacheAdapter;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/CacheAdapter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    .line 1396
    if-nez v0, :cond_1

    .line 1397
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/jdbc/PreparedStatement;

    move-result-object v0

    .line 1399
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->cachedPreparedStatementParams:Lcom/mysql/jdbc/CacheAdapter;

    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->getParseInfo()Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/mysql/jdbc/CacheAdapter;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1407
    :goto_0
    invoke-virtual {v0, p2}, Lcom/mysql/jdbc/PreparedStatement;->setResultSetType(I)V

    .line 1408
    invoke-virtual {v0, p3}, Lcom/mysql/jdbc/PreparedStatement;->setResultSetConcurrency(I)V

    .line 1410
    return-object v0

    .line 1401
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-static {v1, p1, v2, v0}, Lcom/mysql/jdbc/PreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)Lcom/mysql/jdbc/PreparedStatement;

    move-result-object v0

    goto :goto_0

    .line 1404
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/jdbc/PreparedStatement;

    move-result-object v0

    goto :goto_0
.end method

.method public clientPrepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1418
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    .line 1420
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    .line 1422
    return-object v0

    .line 1420
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clientPrepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1429
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    .line 1431
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    .line 1433
    return-object v0

    .line 1431
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1454
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1455
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1456
    new-instance v0, Lcom/mysql/jdbc/ConnectionImpl$1;

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/mysql/jdbc/ConnectionImpl$1;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;)V

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionImpl$1;->doForAll()V

    .line 1464
    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/mysql/jdbc/ConnectionImpl;->realClose(ZZZLjava/lang/Throwable;)V

    .line 1465
    monitor-exit v1

    .line 1466
    return-void

    .line 1465
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public commit()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1515
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 1516
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1519
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1520
    new-instance v0, Lcom/mysql/jdbc/ConnectionImpl$2;

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mysql/jdbc/ConnectionImpl$2;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;)V

    .line 1530
    invoke-virtual {v0}, Lcom/mysql/jdbc/IterateBlock;->doForAll()V

    .line 1532
    invoke-virtual {v0}, Lcom/mysql/jdbc/IterateBlock;->fullIteration()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 1557
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 1533
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1560
    :goto_0
    return-void

    .line 1538
    :cond_0
    :try_start_3
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getRelaxAutoCommit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1539
    const-string v0, "Can\'t call commit when autocommit=true"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1549
    :catch_0
    move-exception v0

    .line 1550
    :try_start_4
    const-string v1, "08S01"

    invoke-virtual {v0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1551
    const-string v0, "Communications link failure during commit(). Transaction resolution unknown."

    const-string v1, "08007"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1557
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    throw v0

    .line 1559
    :catchall_1
    move-exception v0

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 1540
    :cond_1
    :try_start_6
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->transactionsSupported:Z

    if-eqz v0, :cond_3

    .line 1541
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalTransactionState()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1542
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->inTransactionOnServer()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 1557
    :try_start_7
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 1543
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 1547
    :cond_2
    const/4 v1, 0x0

    :try_start_8
    const-string v2, "commit"

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0x3eb

    const/16 v6, 0x3ef

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1557
    :cond_3
    :try_start_9
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 1559
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    .line 1555
    :cond_4
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public createNewIO(Z)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2008
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2013
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->exposeAsProperties(Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v0

    .line 2015
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getHighAvailability()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2016
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/ConnectionImpl;->connectOneTryOnly(ZLjava/util/Properties;)V

    .line 2018
    monitor-exit v1

    .line 2023
    :goto_0
    return-void

    .line 2021
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/ConnectionImpl;->connectWithRetries(ZLjava/util/Properties;)V

    .line 2022
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createStatement()Ljava/sql/Statement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2357
    const/16 v0, 0x3eb

    const/16 v1, 0x3ef

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->createStatement(II)Ljava/sql/Statement;

    move-result-object v0

    return-object v0
.end method

.method public createStatement(II)Ljava/sql/Statement;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2373
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 2375
    new-instance v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/StatementImpl;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    .line 2376
    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/StatementImpl;->setResultSetType(I)V

    .line 2377
    invoke-virtual {v0, p2}, Lcom/mysql/jdbc/StatementImpl;->setResultSetConcurrency(I)V

    .line 2379
    return-object v0
.end method

.method public createStatement(III)Ljava/sql/Statement;
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
    .line 2386
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPedantic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2387
    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 2388
    const-string v0, "HOLD_CUSRORS_OVER_COMMIT is only supported holdability level"

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2393
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ConnectionImpl;->createStatement(II)Ljava/sql/Statement;

    move-result-object v0

    return-object v0
.end method

.method public decachePreparedStatement(Lcom/mysql/jdbc/ServerPreparedStatement;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4280
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4281
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCachePreparedStatements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mysql/jdbc/ServerPreparedStatement;->isPoolable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4282
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4283
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    new-instance v3, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;

    iget-object v4, p1, Lcom/mysql/jdbc/ServerPreparedStatement;->currentCatalog:Ljava/lang/String;

    iget-object v5, p1, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/util/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4284
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4286
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4287
    return-void

    .line 4284
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 4286
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public dumpTestcaseQuery(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 2397
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2398
    return-void
.end method

.method public duplicate()Lcom/mysql/jdbc/Connection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2401
    new-instance v0, Lcom/mysql/jdbc/ConnectionImpl;

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->origHostToConnectTo:Ljava/lang/String;

    iget v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->origPortToConnectTo:I

    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->origDatabaseToConnectTo:Ljava/lang/String;

    iget-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->myURL:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ConnectionImpl;-><init>(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 11
    .parameter
    .parameter
    .parameter
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
    .line 2440
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    return-object v0
.end method

.method public execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 19
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 2445
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 2450
    const-wide/16 v4, 0x0

    .line 2452
    const/4 v6, 0x0

    .line 2454
    if-eqz p4, :cond_12

    .line 2455
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v6

    move/from16 v17, v6

    .line 2458
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v15, v4

    .line 2462
    :goto_1
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/mysql/jdbc/ConnectionImpl;->lastQueryFinishedTime:J

    .line 2464
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getHighAvailability()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAutoReconnectForPools()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    if-nez p10, :cond_1

    .line 2466
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/mysql/jdbc/ConnectionImpl;->pingInternal(ZI)V

    .line 2468
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2475
    :cond_1
    :goto_2
    if-nez p4, :cond_5

    .line 2476
    const/4 v7, 0x0

    .line 2478
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseUnicode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2479
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v7

    .line 2482
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v9, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v4 .. v14}, Lcom/mysql/jdbc/MysqlIO;->sqlQueryDirect(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/Buffer;IIIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 2529
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaintainTimeStats()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2530
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/mysql/jdbc/ConnectionImpl;->lastQueryFinishedTime:J

    .line 2533
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v15

    .line 2536
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/mysql/jdbc/ConnectionImpl;->registerQueryExecutionTime(J)V

    .line 2482
    :cond_4
    monitor-exit v18

    .line 2486
    :goto_3
    return-object v4

    .line 2469
    :catch_0
    move-exception v4

    .line 2470
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/ConnectionImpl;->createNewIO(Z)V

    goto :goto_2

    .line 2539
    :catchall_0
    move-exception v4

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 2486
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p1

    move-object/from16 v8, p4

    move/from16 v9, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v4 .. v14}, Lcom/mysql/jdbc/MysqlIO;->sqlQueryDirect(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/Buffer;IIIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v4

    .line 2529
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaintainTimeStats()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2530
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/mysql/jdbc/ConnectionImpl;->lastQueryFinishedTime:J

    .line 2533
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v15

    .line 2536
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/mysql/jdbc/ConnectionImpl;->registerQueryExecutionTime(J)V

    .line 2486
    :cond_7
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 2488
    :catch_1
    move-exception v4

    .line 2491
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDumpQueriesOnException()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2492
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/mysql/jdbc/ConnectionImpl;->extractSqlFromPacket(Ljava/lang/String;Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;

    move-result-object v5

    .line 2493
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x20

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2494
    const-string v7, "\n\nQuery being executed when exception was thrown:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2495
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2496
    const-string v5, "\n\n"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2498
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/mysql/jdbc/ConnectionImpl;->appendMessageToException(Ljava/sql/SQLException;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    .line 2501
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getHighAvailability()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2502
    const-string v5, "08S01"

    invoke-virtual {v4}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2504
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v5}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 2506
    :cond_9
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 2511
    :cond_a
    :goto_4
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2529
    :catchall_1
    move-exception v4

    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaintainTimeStats()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2530
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/mysql/jdbc/ConnectionImpl;->lastQueryFinishedTime:J

    .line 2533
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v15

    .line 2536
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/mysql/jdbc/ConnectionImpl;->registerQueryExecutionTime(J)V

    .line 2529
    :cond_c
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2507
    :cond_d
    :try_start_8
    const-string v5, "08S01"

    invoke-virtual {v4}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2508
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mysql/jdbc/ConnectionImpl;->cleanup(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 2512
    :catch_2
    move-exception v4

    .line 2513
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getHighAvailability()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2514
    instance-of v5, v4, Ljava/io/IOException;

    if-eqz v5, :cond_e

    .line 2516
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v5}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 2518
    :cond_e
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 2523
    :cond_f
    :goto_5
    const-string v5, "Connection.UnexpectedException"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "S1000"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v5

    .line 2525
    invoke-virtual {v5, v4}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2527
    throw v5

    .line 2519
    :cond_10
    instance-of v5, v4, Ljava/io/IOException;

    if-eqz v5, :cond_f

    .line 2520
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mysql/jdbc/ConnectionImpl;->cleanup(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    :cond_11
    move-wide v15, v4

    goto/16 :goto_1

    :cond_12
    move/from16 v17, v6

    goto/16 :goto_0
.end method

.method public extractSqlFromPacket(Ljava/lang/String;Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;
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
    const/4 v0, 0x0

    .line 2544
    const/4 v1, 0x0

    .line 2546
    if-eqz p1, :cond_0

    .line 2547
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxQuerySizeToLog()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 2548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxQuerySizeToLog()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2549
    const-string v2, "MysqlIO.25"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2550
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2556
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 2563
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxQuerySizeToLog()I

    move-result v1

    if-le p3, v1, :cond_1

    .line 2564
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxQuerySizeToLog()I

    move-result p3

    .line 2565
    const/4 v0, 0x1

    .line 2568
    :cond_1
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v1

    const/4 v2, 0x5

    add-int/lit8 v3, p3, -0x5

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/StringUtils;->toString([BII)Ljava/lang/String;

    move-result-object v1

    .line 2570
    if-eqz v0, :cond_3

    .line 2571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MysqlIO.25"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2575
    :goto_1
    return-object v0

    :cond_2
    move-object v1, p1

    .line 2552
    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public generateConnectionCommentBlock(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2
    .parameter

    .prologue
    .line 2580
    const-string v0, "/* conn id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2581
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2582
    const-string v0, " clock: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2584
    const-string v0, " */ "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2586
    return-object p1
.end method

.method public getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;
    .locals 0

    .prologue
    .line 129
    return-object p0
.end method

.method public getActiveStatementCount()I
    .locals 1

    .prologue
    .line 2590
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getAutoCommit()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2602
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2603
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    monitor-exit v1

    return v0

    .line 2604
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAutoIncrementIncrement()I
    .locals 1

    .prologue
    .line 3838
    iget v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoIncrementIncrement:I

    return v0
.end method

.method public getCachedMetaData(Ljava/lang/String;)Lcom/mysql/jdbc/CachedResultSetMetaData;
    .locals 2
    .parameter

    .prologue
    .line 5211
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->resultSetMetadataCache:Lcom/mysql/jdbc/util/LRUCache;

    if-eqz v0, :cond_0

    .line 5212
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->resultSetMetadataCache:Lcom/mysql/jdbc/util/LRUCache;

    monitor-enter v1

    .line 5213
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->resultSetMetadataCache:Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/CachedResultSetMetaData;

    monitor-exit v1

    .line 5217
    :goto_0
    return-object v0

    .line 5214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5217
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 2612
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDynamicCalendars()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2613
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2616
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSessionLockedCalendar()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0
.end method

.method public getCancelTimer()Ljava/util/Timer;
    .locals 4

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->cancelTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Ljava/util/Timer;

    const-string v2, "MySQL Statement Cancellation Timer"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->cancelTimer:Ljava/util/Timer;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->cancelTimer:Ljava/util/Timer;

    monitor-exit v1

    return-object v0

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCatalog()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2631
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2632
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 2633
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCharacterSetMetadata()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2640
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2641
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetMetadata:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 2642
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2654
    if-nez p1, :cond_0

    move-object v0, v1

    .line 2690
    :goto_0
    return-object v0

    .line 2658
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->usePlatformCharsetConverters:Z

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 2659
    goto :goto_0

    .line 2664
    :cond_1
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->charsetConverterMap:Ljava/util/Map;

    monitor-enter v2

    .line 2665
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->charsetConverterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2667
    sget-object v3, Lcom/mysql/jdbc/ConnectionImpl;->CHARSET_CONVERTER_NOT_AVAILABLE_MARKER:Ljava/lang/Object;

    if-ne v0, v3, :cond_2

    .line 2668
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 2671
    :cond_2
    check-cast v0, Lcom/mysql/jdbc/SingleByteCharsetConverter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2673
    if-nez v0, :cond_3

    .line 2675
    :try_start_1
    invoke-static {p1, p0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->getInstance(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v0

    .line 2677
    if-nez v0, :cond_4

    .line 2678
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->charsetConverterMap:Ljava/util/Map;

    sget-object v4, Lcom/mysql/jdbc/ConnectionImpl;->CHARSET_CONVERTER_NOT_AVAILABLE_MARKER:Ljava/lang/Object;

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2688
    :cond_3
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2680
    :cond_4
    :try_start_3
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->charsetConverterMap:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 2682
    :catch_0
    move-exception v0

    .line 2683
    :try_start_4
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->charsetConverterMap:Ljava/util/Map;

    sget-object v3, Lcom/mysql/jdbc/ConnectionImpl;->CHARSET_CONVERTER_NOT_AVAILABLE_MARKER:Ljava/lang/Object;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v1

    .line 2685
    goto :goto_1
.end method

.method public getCharsetNameForIndex(I)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2698
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->getEncodingForIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionMutex()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->realProxy:Ljava/lang/reflect/InvocationHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->realProxy:Ljava/lang/reflect/InvocationHandler;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 2758
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheDefaultTimezone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->defaultTimeZone:Ljava/util/TimeZone;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mysql/jdbc/TimeUtil;->getDefaultTimeZone(Z)Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0
.end method

.method public getEncodingForIndex(I)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2714
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseOldUTF8Behavior()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2715
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 2750
    :cond_0
    :goto_0
    return-object v0

    .line 2718
    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 2722
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->indexToCustomMysqlCharset:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 2723
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->indexToCustomMysqlCharset:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2724
    if-eqz v0, :cond_4

    .line 2725
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2729
    :goto_1
    if-nez v0, :cond_2

    .line 2730
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForCollationIndex(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2743
    :cond_2
    if-nez v0, :cond_0

    .line 2744
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2733
    :catch_0
    move-exception v0

    .line 2734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown character set index for field \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' received from server."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2736
    :catch_1
    move-exception v0

    .line 2737
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1009"

    invoke-static {v2, v3, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 2738
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2739
    throw v1

    .line 2747
    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public getErrorMessageEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2762
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->errorMessageEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;
    .locals 1

    .prologue
    .line 5354
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    return-object v0
.end method

.method public getHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2769
    const/4 v0, 0x2

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getHostPortPair()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->hostPortPair:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->hostPortPair:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIO()Lcom/mysql/jdbc/MysqlIO;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2805
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    if-eqz v0, :cond_1

    .line 2806
    :cond_0
    const-string v0, "Operation not allowed on closed connection"

    const-string v1, "08003"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2809
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 2773
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionId:J

    return-wide v0
.end method

.method public getIdleFor()J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 2785
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2786
    :try_start_0
    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->lastQueryFinishedTime:J

    cmp-long v3, v3, v0

    if-nez v3, :cond_0

    .line 2787
    monitor-exit v2

    .line 2793
    :goto_0
    return-wide v0

    .line 2790
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2791
    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->lastQueryFinishedTime:J

    sub-long/2addr v0, v3

    .line 2793
    monitor-exit v2

    goto :goto_0

    .line 2794
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLoadBalanceSafeProxy()Lcom/mysql/jdbc/MySQLConnection;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    return-object v0
.end method

.method public getLog()Lcom/mysql/jdbc/log/Log;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2821
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->log:Lcom/mysql/jdbc/log/Log;

    return-object v0
.end method

.method public getMaxBytesPerChar(Ljava/lang/Integer;Ljava/lang/String;)I
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2831
    const/4 v1, 0x1

    .line 2838
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->indexToCustomMysqlCharset:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 2839
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->indexToCustomMysqlCharset:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2842
    :goto_0
    if-nez v0, :cond_0

    .line 2843
    invoke-static {p1}, Lcom/mysql/jdbc/CharsetMapping;->getMysqlCharsetNameForCollationIndex(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 2847
    :cond_0
    if-nez v0, :cond_4

    .line 2848
    invoke-static {p2, p0}, Lcom/mysql/jdbc/CharsetMapping;->getMysqlCharsetForJavaEncoding(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 2853
    :goto_1
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->mysqlCharsetToCustomMblen:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 2854
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->mysqlCharsetToCustomMblen:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2858
    :goto_2
    if-nez v0, :cond_1

    .line 2859
    invoke-static {v3}, Lcom/mysql/jdbc/CharsetMapping;->getMblen(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2862
    :cond_1
    if-eqz v0, :cond_2

    .line 2863
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 2873
    :goto_3
    return v0

    .line 2865
    :catch_0
    move-exception v0

    .line 2866
    throw v0

    .line 2867
    :catch_1
    move-exception v0

    .line 2868
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "S1009"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 2869
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2870
    throw v1

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    move-object v0, v2

    goto :goto_2

    :cond_4
    move-object v3, v0

    goto :goto_1

    :cond_5
    move-object v0, v2

    goto :goto_0
.end method

.method public getMaxBytesPerChar(Ljava/lang/String;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2825
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxBytesPerChar(Ljava/lang/Integer;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMetaData()Ljava/sql/DatabaseMetaData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 2887
    invoke-direct {p0, v0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetaData(ZZ)Ljava/sql/DatabaseMetaData;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataSafeStatement()Ljava/sql/Statement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2899
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement(I)Ljava/sql/Statement;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataSafeStatement(I)Ljava/sql/Statement;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2903
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->createStatement()Ljava/sql/Statement;

    move-result-object v1

    .line 2905
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    move p1, v0

    :cond_0
    invoke-interface {v1, p1}, Ljava/sql/Statement;->setMaxRows(I)V

    .line 2907
    invoke-interface {v1, v0}, Ljava/sql/Statement;->setEscapeProcessing(Z)V

    .line 2909
    invoke-interface {v1}, Ljava/sql/Statement;->getFetchSize()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2910
    invoke-interface {v1, v0}, Ljava/sql/Statement;->setFetchSize(I)V

    .line 2913
    :cond_1
    return-object v1
.end method

.method public getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    return-object v0
.end method

.method public getNetBufferLength()I
    .locals 1

    .prologue
    .line 2920
    iget v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->netBufferLength:I

    return v0
.end method

.method public getNetworkTimeout()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5490
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5491
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 5492
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSocketTimeout()I

    move-result v0

    monitor-exit v1

    return v0

    .line 5493
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;
    .locals 1

    .prologue
    .line 5497
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    return-object v0
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 3097
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    return-object v0
.end method

.method public getRequiresEscapingEncoder()Z
    .locals 1

    .prologue
    .line 5358
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->requiresEscapingEncoder:Z

    return v0
.end method

.method public getSchema()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5410
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5411
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 5413
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 5414
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getServerCharacterEncoding()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2928
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getServerCharset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerCharset()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2937
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2938
    const/4 v0, 0x0

    .line 2939
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->indexToCustomMysqlCharset:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 2940
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->indexToCustomMysqlCharset:Ljava/util/Map;

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget v1, v1, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2942
    :cond_0
    if-nez v0, :cond_1

    .line 2943
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget v0, v0, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/CharsetMapping;->getMysqlCharsetNameForCollationIndex(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 2945
    :cond_1
    if-eqz v0, :cond_2

    .line 2947
    :goto_0
    return-object v0

    .line 2945
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set_server"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 2947
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getServerMajorVersion()I
    .locals 1

    .prologue
    .line 2951
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getServerMajorVersion()I

    move-result v0

    return v0
.end method

.method public getServerMinorVersion()I
    .locals 1

    .prologue
    .line 2955
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getServerMinorVersion()I

    move-result v0

    return v0
.end method

.method public getServerSubMinorVersion()I
    .locals 1

    .prologue
    .line 2959
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getServerSubMinorVersion()I

    move-result v0

    return v0
.end method

.method public getServerTimezoneTZ()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 2963
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverTimezoneTZ:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getServerVariable(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2967
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2968
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2971
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServerVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2975
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getServerVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionLockedCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 2980
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getSessionMaxRows()I
    .locals 2

    .prologue
    .line 5377
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5378
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    monitor-exit v1

    return v0

    .line 5379
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStatementComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5273
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementComment:Ljava/lang/String;

    return-object v0
.end method

.method public getStatementInterceptorsInstances()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mysql/jdbc/StatementInterceptorV2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 857
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public getTransactionIsolation()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2992
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2993
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalSessionState()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_8

    .line 2998
    :try_start_1
    iget v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement(I)Ljava/sql/Statement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    .line 2999
    const/16 v0, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x3

    :try_start_2
    invoke-virtual {p0, v0, v4, v5}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    const/4 v4, 0x7

    const/16 v5, 0x14

    invoke-virtual {p0, v0, v4, v5}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v4, v5}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const-string v0, "SELECT @@session.transaction_isolation"

    .line 3001
    :goto_0
    invoke-interface {v2, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    .line 3003
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3004
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3006
    if-eqz v4, :cond_4

    .line 3007
    sget-object v0, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3009
    if-eqz v0, :cond_4

    .line 3010
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    .line 3011
    iget v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3023
    if-eqz v1, :cond_1

    .line 3025
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 3033
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 3035
    :try_start_4
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 3011
    :cond_2
    :goto_2
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3045
    :goto_3
    return v0

    .line 2999
    :cond_3
    :try_start_6
    const-string v0, "SELECT @@session.tx_isolation"

    goto :goto_0

    .line 3015
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not map transaction isolation \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " to a valid JDBC level."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3023
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_5

    .line 3025
    :try_start_7
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 3033
    :cond_5
    :goto_5
    if-eqz v2, :cond_6

    .line 3035
    :try_start_8
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 3023
    :cond_6
    :goto_6
    :try_start_9
    throw v0

    .line 3046
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0

    .line 3019
    :cond_7
    :try_start_a
    const-string v0, "Could not retrieve transaction isolation level from server"

    const-string v4, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 3045
    :cond_8
    :try_start_b
    iget v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    .line 3026
    :catch_0
    move-exception v1

    goto :goto_5

    .line 3036
    :catch_1
    move-exception v1

    goto :goto_6

    .line 3026
    :catch_2
    move-exception v1

    goto :goto_1

    .line 3036
    :catch_3
    move-exception v1

    goto :goto_2

    .line 3023
    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_4
.end method

.method public getTypeMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3058
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3059
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->typeMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 3060
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->typeMap:Ljava/util/Map;

    .line 3063
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->typeMap:Ljava/util/Map;

    monitor-exit v1

    return-object v0

    .line 3064
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3068
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->myURL:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3072
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    return-object v0
.end method

.method public getUtcCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 3076
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->utcCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3089
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasSameProperties(Lcom/mysql/jdbc/Connection;)Z
    .locals 2
    .parameter

    .prologue
    .line 3093
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasTriedMaster()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3102
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasTriedMasterFlag:Z

    return v0
.end method

.method public incrementNumberOfPreparedExecutes()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 3106
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3107
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPreparedExecutes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPreparedExecutes:J

    .line 3110
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfQueriesIssued:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfQueriesIssued:J

    .line 3112
    :cond_0
    return-void
.end method

.method public incrementNumberOfPrepares()V
    .locals 4

    .prologue
    .line 3115
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3116
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPrepares:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPrepares:J

    .line 3118
    :cond_0
    return-void
.end method

.method public incrementNumberOfResultSetsCreated()V
    .locals 4

    .prologue
    .line 3121
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3122
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfResultSetsCreated:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfResultSetsCreated:J

    .line 3124
    :cond_0
    return-void
.end method

.method public initializeExtension(Lcom/mysql/jdbc/Extension;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5311
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    invoke-interface {p1, p0, v0}, Lcom/mysql/jdbc/Extension;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 5312
    return-void
.end method

.method public initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V
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
    .line 5239
    if-nez p2, :cond_2

    .line 5242
    new-instance v1, Lcom/mysql/jdbc/CachedResultSetMetaData;

    invoke-direct {v1}, Lcom/mysql/jdbc/CachedResultSetMetaData;-><init>()V

    .line 5245
    invoke-interface {p3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->buildIndexMapping()V

    .line 5246
    invoke-interface {p3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->initializeWithMetadata()V

    .line 5248
    instance-of v0, p3, Lcom/mysql/jdbc/UpdatableResultSet;

    if-eqz v0, :cond_0

    move-object v0, p3

    .line 5249
    check-cast v0, Lcom/mysql/jdbc/UpdatableResultSet;

    invoke-virtual {v0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkUpdatability()V

    .line 5252
    :cond_0
    invoke-interface {p3, v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->populateCachedMetaData(Lcom/mysql/jdbc/CachedResultSetMetaData;)V

    .line 5254
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->resultSetMetadataCache:Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5263
    :cond_1
    :goto_0
    return-void

    .line 5256
    :cond_2
    invoke-interface {p3, p2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->initializeFromCachedMetaData(Lcom/mysql/jdbc/CachedResultSetMetaData;)V

    .line 5257
    invoke-interface {p3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->initializeWithMetadata()V

    .line 5259
    instance-of v0, p3, Lcom/mysql/jdbc/UpdatableResultSet;

    if-eqz v0, :cond_1

    .line 5260
    check-cast p3, Lcom/mysql/jdbc/UpdatableResultSet;

    invoke-virtual {p3}, Lcom/mysql/jdbc/UpdatableResultSet;->checkUpdatability()V

    goto :goto_0
.end method

.method public initializeSafeStatementInterceptors()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 832
    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    .line 834
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getStatementInterceptors()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MysqlIo.BadStatementInterceptor"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {p0, v1, v2, v3, v4}, Lcom/mysql/jdbc/Util;->loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;

    move-result-object v2

    .line 837
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    move v1, v0

    .line 839
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 840
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/Extension;

    .line 843
    instance-of v3, v0, Lcom/mysql/jdbc/StatementInterceptor;

    if-eqz v3, :cond_1

    .line 844
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;->getV2PostProcessMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 845
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    new-instance v4, Lcom/mysql/jdbc/NoSubInterceptorWrapper;

    new-instance v5, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;

    check-cast v0, Lcom/mysql/jdbc/StatementInterceptor;

    invoke-direct {v5, v0}, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;-><init>(Lcom/mysql/jdbc/StatementInterceptor;)V

    invoke-direct {v4, v5}, Lcom/mysql/jdbc/NoSubInterceptorWrapper;-><init>(Lcom/mysql/jdbc/StatementInterceptorV2;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 847
    :cond_0
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    new-instance v4, Lcom/mysql/jdbc/NoSubInterceptorWrapper;

    new-instance v5, Lcom/mysql/jdbc/V1toV2StatementInterceptorAdapter;

    check-cast v0, Lcom/mysql/jdbc/StatementInterceptor;

    invoke-direct {v5, v0}, Lcom/mysql/jdbc/V1toV2StatementInterceptorAdapter;-><init>(Lcom/mysql/jdbc/StatementInterceptor;)V

    invoke-direct {v4, v5}, Lcom/mysql/jdbc/NoSubInterceptorWrapper;-><init>(Lcom/mysql/jdbc/StatementInterceptorV2;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 850
    :cond_1
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    new-instance v4, Lcom/mysql/jdbc/NoSubInterceptorWrapper;

    check-cast v0, Lcom/mysql/jdbc/StatementInterceptorV2;

    invoke-direct {v4, v0}, Lcom/mysql/jdbc/NoSubInterceptorWrapper;-><init>(Lcom/mysql/jdbc/StatementInterceptorV2;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 854
    :cond_2
    return-void
.end method

.method public isAbonormallyLongQuery(J)Z
    .locals 10
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 5299
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5300
    :try_start_0
    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeCount:J

    const-wide/16 v4, 0xf

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 5301
    monitor-exit v1

    .line 5306
    :goto_0
    return v0

    .line 5304
    :cond_0
    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeSumSquares:D

    iget-wide v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeSum:D

    iget-wide v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeSum:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeCount:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeCount:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 5306
    long-to-double v4, p1

    iget-wide v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeMean:D

    const-wide/high16 v8, 0x4014

    mul-double/2addr v2, v8

    add-double/2addr v2, v6

    cmpl-double v2, v4, v2

    if-lez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 5307
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isClientTzUTC()Z
    .locals 1

    .prologue
    .line 3464
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClientTzUTC:Z

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 3468
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    return v0
.end method

.method public isCursorFetchEnabled()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3472
    const/4 v1, 0x5

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseCursorFetch()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isInGlobalTx()Z
    .locals 1

    .prologue
    .line 3476
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isInGlobalTx:Z

    return v0
.end method

.method public isMasterConnection()Z
    .locals 1

    .prologue
    .line 3487
    const/4 v0, 0x0

    return v0
.end method

.method public isNoBackslashEscapesSet()Z
    .locals 1

    .prologue
    .line 3497
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->noBackslashEscapes:Z

    return v0
.end method

.method public isProxySet()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->proxy:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQueryCacheEnabled()Z
    .locals 3

    .prologue
    .line 3391
    const-string v1, "ON"

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v2, "query_cache_type"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "0"

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v2, "query_cache_size"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadInfoMsgEnabled()Z
    .locals 1

    .prologue
    .line 3501
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->readInfoMsg:Z

    return v0
.end method

.method public isReadOnly()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3514
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->isReadOnly(Z)Z

    move-result v0

    return v0
.end method

.method public isReadOnly(Z)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v4, 0x5

    const/4 v1, 0x0

    .line 3531
    if-eqz p1, :cond_b

    iget-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    if-nez v3, :cond_b

    const/4 v3, 0x6

    invoke-virtual {p0, v4, v3, v4}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalSessionState()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReadOnlyPropagatesToServer()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3537
    :try_start_0
    iget v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement(I)Ljava/sql/Statement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3539
    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x3

    :try_start_1
    invoke-virtual {p0, v4, v5, v6}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x5

    const/4 v5, 0x7

    const/16 v6, 0x14

    invoke-virtual {p0, v4, v5, v6}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    const-string v4, "select @@session.transaction_read_only"

    :goto_0
    invoke-interface {v3, v4}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v2

    .line 3541
    :try_start_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3542
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_8

    move-result v4

    if-eqz v4, :cond_4

    .line 3552
    :goto_1
    if-eqz v2, :cond_1

    .line 3554
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 3562
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 3564
    :try_start_4
    invoke-interface {v3}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 3574
    :cond_2
    :goto_3
    return v0

    .line 3539
    :cond_3
    :try_start_5
    const-string v4, "select @@session.tx_read_only"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_0

    :cond_4
    move v0, v1

    .line 3542
    goto :goto_1

    .line 3544
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 3545
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v3

    const/16 v4, 0x71c

    if-ne v3, v4, :cond_5

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3546
    :cond_5
    const-string v3, "Could not retrieve transaction read-only status from server"

    const-string v4, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v3, v4, v0, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3552
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_6

    .line 3554
    :try_start_7
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 3562
    :cond_6
    :goto_6
    if-eqz v3, :cond_7

    .line 3564
    :try_start_8
    invoke-interface {v3}, Ljava/sql/Statement;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 3552
    :cond_7
    :goto_7
    throw v0

    :cond_8
    move-object v3, v2

    move-object v2, v1

    :cond_9
    if-eqz v2, :cond_a

    .line 3554
    :try_start_9
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 3562
    :cond_a
    :goto_8
    if-eqz v3, :cond_b

    .line 3564
    :try_start_a
    invoke-interface {v3}, Ljava/sql/Statement;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 3574
    :cond_b
    :goto_9
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->readOnly:Z

    goto :goto_3

    .line 3555
    :catch_1
    move-exception v1

    goto :goto_6

    .line 3565
    :catch_2
    move-exception v1

    goto :goto_7

    .line 3555
    :catch_3
    move-exception v0

    goto :goto_8

    .line 3565
    :catch_4
    move-exception v0

    goto :goto_9

    .line 3555
    :catch_5
    move-exception v1

    goto :goto_2

    .line 3565
    :catch_6
    move-exception v1

    goto :goto_3

    .line 3552
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 3544
    :catch_7
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_4

    :catch_8
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_4
.end method

.method public isRunningOnJDK13()Z
    .locals 1

    .prologue
    .line 3578
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isRunningOnJDK13:Z

    return v0
.end method

.method public isSameResource(Lcom/mysql/jdbc/Connection;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3582
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 3583
    if-nez p1, :cond_0

    .line 3584
    :try_start_0
    monitor-exit v4

    .line 3622
    :goto_0
    return v3

    .line 3589
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/ConnectionImpl;

    move-object v1, v0

    iget-object v5, v1, Lcom/mysql/jdbc/ConnectionImpl;->origHostToConnectTo:Ljava/lang/String;

    .line 3590
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/ConnectionImpl;

    move-object v1, v0

    iget-object v6, v1, Lcom/mysql/jdbc/ConnectionImpl;->origDatabaseToConnectTo:Ljava/lang/String;

    .line 3591
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/ConnectionImpl;

    move-object v1, v0

    iget-object v7, v1, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    .line 3593
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->origHostToConnectTo:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/mysql/jdbc/ConnectionImpl;->nullSafeCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v3

    .line 3600
    :goto_1
    if-eqz v1, :cond_2

    .line 3601
    iget-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->origDatabaseToConnectTo:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/mysql/jdbc/ConnectionImpl;->nullSafeCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/mysql/jdbc/ConnectionImpl;->nullSafeCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    move v1, v3

    .line 3606
    :cond_2
    if-eqz v1, :cond_5

    .line 3607
    monitor-exit v4

    move v3, v2

    goto :goto_0

    .line 3595
    :cond_3
    if-eqz v5, :cond_8

    const/16 v1, 0x2c

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v8, :cond_8

    const/16 v1, 0x3a

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v8, :cond_8

    .line 3597
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/ConnectionImpl;

    move-object v1, v0

    iget v1, v1, Lcom/mysql/jdbc/ConnectionImpl;->origPortToConnectTo:I

    iget v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->origPortToConnectTo:I

    if-ne v1, v5, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_1

    .line 3611
    :cond_5
    check-cast p1, Lcom/mysql/jdbc/ConnectionImpl;

    invoke-virtual {p1}, Lcom/mysql/jdbc/ConnectionImpl;->getResourceId()Ljava/lang/String;

    move-result-object v1

    .line 3612
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getResourceId()Ljava/lang/String;

    move-result-object v5

    .line 3614
    if-nez v1, :cond_6

    if-eqz v5, :cond_7

    .line 3615
    :cond_6
    invoke-static {v1, v5}, Lcom/mysql/jdbc/ConnectionImpl;->nullSafeCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 3617
    if-eqz v1, :cond_7

    .line 3618
    monitor-exit v4

    move v3, v2

    goto :goto_0

    .line 3622
    :cond_7
    monitor-exit v4

    goto :goto_0

    .line 3623
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_8
    move v1, v2

    goto :goto_1
.end method

.method public isServerLocal()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5362
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5363
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    iget-object v0, v0, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;

    .line 5365
    instance-of v2, v0, Lcom/mysql/jdbc/SocketMetadata;

    if-eqz v2, :cond_0

    .line 5366
    check-cast v0, Lcom/mysql/jdbc/SocketMetadata;

    invoke-interface {v0, p0}, Lcom/mysql/jdbc/SocketMetadata;->isLocallyConnected(Lcom/mysql/jdbc/ConnectionImpl;)Z

    move-result v0

    monitor-exit v1

    .line 5369
    :goto_0
    return v0

    .line 5368
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v0

    const-string v2, "Connection.NoMetadataOnSocketFactory"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;)V

    .line 5369
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 5370
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isServerTzUTC()Z
    .locals 1

    .prologue
    .line 3627
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isServerTzUTC:Z

    return v0
.end method

.method public lowerCaseTableNames()Z
    .locals 1

    .prologue
    .line 3847
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->lowerCaseTableNames:Z

    return v0
.end method

.method public nativeSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3863
    if-nez p1, :cond_0

    .line 3864
    const/4 v0, 0x0

    .line 3873
    :goto_0
    return-object v0

    .line 3867
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->serverSupportsConvertFn()Z

    move-result v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/EscapeProcessor;->escapeSQL(Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)Ljava/lang/Object;

    move-result-object v0

    .line 3869
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3870
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 3873
    :cond_1
    check-cast v0, Lcom/mysql/jdbc/EscapeProcessorResult;

    iget-object v0, v0, Lcom/mysql/jdbc/EscapeProcessorResult;->escapedSql:Ljava/lang/String;

    goto :goto_0
.end method

.method public parserKnowsUnicode()Z
    .locals 1

    .prologue
    .line 3894
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->parserKnowsUnicode:Z

    return v0
.end method

.method public ping()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3904
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->pingInternal(ZI)V

    .line 3905
    return-void
.end method

.method public pingInternal(ZI)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3908
    if-eqz p1, :cond_0

    .line 3909
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 3912
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSelfDestructOnPingSecondsLifetime()I

    move-result v0

    int-to-long v0, v0

    .line 3913
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSelfDestructOnPingMaxOperations()I

    move-result v3

    .line 3915
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionCreationTimeMillis:J

    sub-long/2addr v4, v6

    cmp-long v0, v4, v0

    if-gtz v0, :cond_2

    :cond_1
    if-lez v3, :cond_3

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getCommandCount()I

    move-result v0

    if-gt v3, v0, :cond_3

    .line 3918
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->close()V

    .line 3920
    const-string v0, "Connection.exceededConnectionLifetime"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "08S01"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3924
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    const/16 v1, 0xe

    const/4 v4, 0x0

    move-object v3, v2

    move-object v5, v2

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    .line 3925
    return-void
.end method

.method public prepareCall(Ljava/lang/String;)Ljava/sql/CallableStatement;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3933
    const/16 v0, 0x3eb

    const/16 v1, 0x3ef

    invoke-virtual {p0, p1, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;

    move-result-object v0

    return-object v0
.end method

.method public prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;
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

    .line 3952
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3955
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheCallableStatements()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3957
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->parseCallableStatement(Ljava/lang/String;)Lcom/mysql/jdbc/CallableStatement;

    move-result-object v0

    .line 3978
    :goto_0
    invoke-virtual {v0, p2}, Lcom/mysql/jdbc/CallableStatement;->setResultSetType(I)V

    .line 3979
    invoke-virtual {v0, p3}, Lcom/mysql/jdbc/CallableStatement;->setResultSetConcurrency(I)V

    .line 3981
    return-object v0

    .line 3959
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->parsedCallableStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    monitor-enter v2

    .line 3960
    :try_start_0
    new-instance v3, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCatalog()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p1}, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3962
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->parsedCallableStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    .line 3964
    if-eqz v0, :cond_1

    .line 3965
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mysql/jdbc/CallableStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;)Lcom/mysql/jdbc/CallableStatement;

    move-result-object v0

    .line 3975
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3967
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->parseCallableStatement(Ljava/lang/String;)Lcom/mysql/jdbc/CallableStatement;

    move-result-object v1

    .line 3969
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3970
    :try_start_2
    iget-object v0, v1, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    .line 3971
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3973
    :try_start_3
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->parsedCallableStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {v4, v3, v0}, Lcom/mysql/jdbc/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_1

    .line 3971
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3984
    :cond_2
    const-string v0, "Callable statements not supported."

    const-string v1, "S1C00"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;
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
    .line 3991
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPedantic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3992
    const/4 v0, 0x1

    if-eq p4, v0, :cond_0

    .line 3993
    const-string v0, "HOLD_CUSRORS_OVER_COMMIT is only supported holdability level"

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3998
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/ConnectionImpl;->prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/CallableStatement;

    .line 4000
    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4025
    const/16 v0, 0x3eb

    const/16 v1, 0x3ef

    invoke-virtual {p0, p1, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 4032
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    move-object v0, v1

    .line 4034
    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    if-ne p2, v2, :cond_0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    .line 4036
    return-object v1

    .line 4034
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
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
    const/4 v1, 0x1

    .line 4055
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 4056
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 4065
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProcessEscapeCodesForPrepStmts()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->nativeSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 4067
    :goto_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->useServerPreparedStmts:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEmulateUnsupportedPstmts()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4068
    invoke-direct {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->canHandleAsServerPreparedStatement(Ljava/lang/String;)Z

    move-result v1

    .line 4071
    :cond_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->useServerPreparedStmts:Z

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    .line 4072
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCachePreparedStatements()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4073
    iget-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4074
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    new-instance v2, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;

    iget-object v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-direct {v2, v6, p1}, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/util/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/PreparedStatement;

    .line 4076
    if-eqz v1, :cond_1

    .line 4077
    move-object v0, v1

    check-cast v0, Lcom/mysql/jdbc/ServerPreparedStatement;

    move-object v2, v0

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/mysql/jdbc/ServerPreparedStatement;->setClosed(Z)V

    .line 4078
    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4081
    :cond_1
    if-nez v1, :cond_3

    .line 4083
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-static {v1, v3, v2, p2, p3}, Lcom/mysql/jdbc/ServerPreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)Lcom/mysql/jdbc/ServerPreparedStatement;

    move-result-object v2

    .line 4085
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPreparedStatementCacheSqlLimit()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 4086
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/ServerPreparedStatement;

    move-object v1, v0

    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->isCached:Z

    .line 4089
    :cond_2
    invoke-virtual {v2, p2}, Lcom/mysql/jdbc/PreparedStatement;->setResultSetType(I)V

    .line 4090
    invoke-virtual {v2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setResultSetConcurrency(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 4104
    :cond_3
    :goto_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4124
    :goto_2
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v1

    :cond_4
    move-object v3, p1

    .line 4065
    goto :goto_0

    .line 4091
    :catch_0
    move-exception v1

    .line 4093
    :try_start_5
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEmulateUnsupportedPstmts()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4094
    const/4 v1, 0x0

    invoke-virtual {p0, v3, p2, p3, v1}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;IIZ)Ljava/sql/PreparedStatement;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/PreparedStatement;

    .line 4096
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPreparedStatementCacheSqlLimit()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 4097
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCheckCache:Lcom/mysql/jdbc/util/LRUCache;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, p1, v3}, Lcom/mysql/jdbc/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4104
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 4125
    :catchall_1
    move-exception v1

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 4100
    :cond_5
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4107
    :cond_6
    :try_start_8
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-static {v1, v3, v2, p2, p3}, Lcom/mysql/jdbc/ServerPreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)Lcom/mysql/jdbc/ServerPreparedStatement;

    move-result-object v1

    .line 4109
    invoke-virtual {v1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setResultSetType(I)V

    .line 4110
    invoke-virtual {v1, p3}, Lcom/mysql/jdbc/PreparedStatement;->setResultSetConcurrency(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 4111
    :catch_1
    move-exception v1

    .line 4113
    :try_start_9
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEmulateUnsupportedPstmts()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4114
    const/4 v1, 0x0

    invoke-virtual {p0, v3, p2, p3, v1}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;IIZ)Ljava/sql/PreparedStatement;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/PreparedStatement;

    goto :goto_2

    .line 4116
    :cond_7
    throw v1

    .line 4121
    :cond_8
    const/4 v1, 0x0

    invoke-virtual {p0, v3, p2, p3, v1}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;IIZ)Ljava/sql/PreparedStatement;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/PreparedStatement;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2
.end method

.method public prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
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
    .line 4132
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPedantic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4133
    const/4 v0, 0x1

    if-eq p4, v0, :cond_0

    .line 4134
    const-string v0, "HOLD_CUSRORS_OVER_COMMIT is only supported holdability level"

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4139
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/ConnectionImpl;->prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public prepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4146
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    move-object v0, v1

    .line 4148
    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    if-eqz p2, :cond_0

    array-length v2, p2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    .line 4150
    return-object v1

    .line 4148
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public prepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4157
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    move-object v0, v1

    .line 4159
    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    if-eqz p2, :cond_0

    array-length v2, p2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    .line 4161
    return-object v1

    .line 4159
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public realClose(ZZZLjava/lang/Throwable;)V
    .locals 20
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
    .line 4175
    const/4 v2, 0x0

    .line 4177
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4262
    :cond_0
    return-void

    .line 4181
    :cond_1
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mysql/jdbc/ConnectionImpl;->forceClosedReason:Ljava/lang/Throwable;

    .line 4184
    if-nez p3, :cond_4

    .line 4185
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAutoCommit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_c

    if-eqz p2, :cond_c

    .line 4187
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->rollback()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v18, v2

    .line 4193
    :goto_0
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->reportMetrics()V

    .line 4195
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseUsageAdvisor()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4196
    if-nez p1, :cond_2

    .line 4197
    const-string v17, "Connection implicitly closed by Driver. You should call Connection.close() from your code to free resources more efficiently and avoid resource leaks."

    .line 4199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/ConnectionImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-object/from16 v19, v0

    new-instance v2, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v3, 0x0

    const-string v4, ""

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCatalog()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getId()J

    move-result-wide v6

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    sget-object v14, Lcom/mysql/jdbc/Constants;->MILLIS_I18N:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/ConnectionImpl;->pointOfOrigin:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v2 .. v17}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 4203
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/mysql/jdbc/ConnectionImpl;->connectionCreationTimeMillis:J

    sub-long/2addr v2, v4

    .line 4205
    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 4206
    const-string v17, "Connection lifetime of < .5 seconds. You might be un-necessarily creating short-lived connections and should investigate connection pooling to be more efficient."

    .line 4208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/ConnectionImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-object/from16 v19, v0

    new-instance v2, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v3, 0x0

    const-string v4, ""

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCatalog()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getId()J

    move-result-wide v6

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    sget-object v14, Lcom/mysql/jdbc/Constants;->MILLIS_I18N:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/ConnectionImpl;->pointOfOrigin:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v2 .. v17}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4214
    :cond_3
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->closeAllOpenStatements()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v2, v18

    .line 4219
    :goto_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_b

    .line 4221
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v3}, Lcom/mysql/jdbc/MysqlIO;->quit()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v4, v2

    .line 4230
    :goto_2
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 4231
    const/4 v2, 0x0

    move v3, v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_5

    .line 4232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/StatementInterceptorV2;

    invoke-interface {v2}, Lcom/mysql/jdbc/StatementInterceptorV2;->destroy()V

    .line 4231
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 4188
    :catch_0
    move-exception v2

    move-object/from16 v18, v2

    .line 4189
    goto/16 :goto_0

    .line 4222
    :catch_1
    move-exception v3

    move-object v4, v2

    .line 4223
    goto :goto_2

    .line 4227
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v3}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    move-object v4, v2

    goto :goto_2

    .line 4236
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    if-eqz v2, :cond_6

    .line 4237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-interface {v2}, Lcom/mysql/jdbc/ExceptionInterceptor;->destroy()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4240
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 4241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v2, :cond_7

    .line 4242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->releaseResources()V

    .line 4243
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    .line 4245
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    .line 4246
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 4247
    invoke-static/range {p0 .. p0}, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->removeInstance(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4249
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 4250
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->cancelTimer:Ljava/util/Timer;

    if-eqz v2, :cond_8

    .line 4251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->cancelTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 4253
    :cond_8
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 4255
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    .line 4258
    if-eqz v4, :cond_0

    .line 4259
    throw v4

    .line 4240
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 4241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v3, :cond_9

    .line 4242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v3}, Lcom/mysql/jdbc/MysqlIO;->releaseResources()V

    .line 4243
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    .line 4245
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    .line 4246
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 4247
    invoke-static/range {p0 .. p0}, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->removeInstance(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4249
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 4250
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/ConnectionImpl;->cancelTimer:Ljava/util/Timer;

    if-eqz v4, :cond_a

    .line 4251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/ConnectionImpl;->cancelTimer:Ljava/util/Timer;

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 4253
    :cond_a
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 4255
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    .line 4240
    throw v2

    .line 4215
    :catch_2
    move-exception v2

    goto/16 :goto_1

    .line 4253
    :catchall_1
    move-exception v2

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v2

    :catchall_2
    move-exception v2

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v2

    :cond_b
    move-object v4, v2

    goto/16 :goto_2

    :cond_c
    move-object/from16 v18, v2

    goto/16 :goto_0
.end method

.method public recachePreparedStatement(Lcom/mysql/jdbc/ServerPreparedStatement;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4265
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 4266
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCachePreparedStatements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/mysql/jdbc/ServerPreparedStatement;->isPoolable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4267
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4268
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    new-instance v2, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;

    iget-object v5, p1, Lcom/mysql/jdbc/ServerPreparedStatement;->currentCatalog:Ljava/lang/String;

    iget-object v6, p1, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1}, Lcom/mysql/jdbc/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4269
    if-eqz v2, :cond_0

    if-eq v2, p1, :cond_0

    .line 4270
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/ServerPreparedStatement;

    move-object v1, v0

    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->isCached:Z

    .line 4271
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/ServerPreparedStatement;

    move-object v1, v0

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/mysql/jdbc/ServerPreparedStatement;->setClosed(Z)V

    .line 4272
    check-cast v2, Lcom/mysql/jdbc/ServerPreparedStatement;

    const/4 v1, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v5}, Lcom/mysql/jdbc/ServerPreparedStatement;->realClose(ZZ)V

    .line 4274
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4276
    :cond_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4277
    return-void

    .line 4274
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 4276
    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public registerQueryExecutionTime(J)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x1

    .line 4293
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 4294
    iput-wide p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    .line 4296
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->repartitionPerformanceHistogram()V

    .line 4299
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/mysql/jdbc/ConnectionImpl;->addToPerformanceHistogram(JI)V

    .line 4301
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->shortestQueryTimeMs:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 4302
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    move-wide v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->shortestQueryTimeMs:J

    .line 4305
    :cond_1
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfQueriesIssued:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfQueriesIssued:J

    .line 4307
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->totalQueryTimeMs:D

    long-to-double v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->totalQueryTimeMs:D

    .line 4308
    return-void

    :cond_2
    move-wide v0, p1

    .line 4302
    goto :goto_0
.end method

.method public registerStatement(Lcom/mysql/jdbc/Statement;)V
    .locals 1
    .parameter

    .prologue
    .line 4317
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 4318
    return-void
.end method

.method public releaseSavepoint(Ljava/sql/Savepoint;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4325
    return-void
.end method

.method protected reportMetricsIfNeeded()V
    .locals 4

    .prologue
    .line 4477
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->metricsLastReportedMs:J

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReportMetricsIntervalMillis()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 4479
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->reportMetrics()V

    .line 4482
    :cond_0
    return-void
.end method

.method public reportNumberOfTablesAccessed(I)V
    .locals 4
    .parameter

    .prologue
    .line 4485
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->minimumNumberTablesAccessed:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 4486
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->minimumNumberTablesAccessed:J

    .line 4489
    :cond_0
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->maximumNumberTablesAccessed:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 4490
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->maximumNumberTablesAccessed:J

    .line 4492
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->repartitionTablesAccessedHistogram()V

    .line 4495
    :cond_1
    int-to-long v0, p1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/mysql/jdbc/ConnectionImpl;->addToTablesAccessedHistogram(JI)V

    .line 4496
    return-void
.end method

.method public reportQueryTime(J)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x1

    .line 5290
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5291
    :try_start_0
    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeCount:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeCount:J

    .line 5292
    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeSum:D

    long-to-double v4, p1

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeSum:D

    .line 5293
    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeSumSquares:D

    mul-long v4, p1, p1

    long-to-double v4, v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeSumSquares:D

    .line 5294
    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeMean:D

    iget-wide v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeCount:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    mul-double/2addr v2, v4

    long-to-double v4, p1

    add-double/2addr v2, v4

    iget-wide v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeCount:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeMean:D

    .line 5295
    monitor-exit v1

    .line 5296
    return-void

    .line 5295
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetServerState()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4507
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParanoid()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4508
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->changeUser(Ljava/lang/String;Ljava/lang/String;)V

    .line 4510
    :cond_0
    return-void
.end method

.method public rollback()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4522
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4523
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4526
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4527
    new-instance v0, Lcom/mysql/jdbc/ConnectionImpl$5;

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/mysql/jdbc/ConnectionImpl$5;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;)V

    .line 4537
    invoke-virtual {v0}, Lcom/mysql/jdbc/IterateBlock;->doForAll()V

    .line 4539
    invoke-virtual {v0}, Lcom/mysql/jdbc/IterateBlock;->fullIteration()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 4567
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 4540
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4570
    :goto_0
    return-void

    .line 4544
    :cond_0
    :try_start_3
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getRelaxAutoCommit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4545
    const-string v0, "Can\'t call rollback when autocommit=true"

    const-string v2, "08003"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 4559
    :catch_0
    move-exception v0

    .line 4560
    :try_start_4
    const-string v2, "08S01"

    invoke-virtual {v0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4561
    const-string v0, "Communications link failure during rollback(). Transaction resolution unknown."

    const-string v2, "08007"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4567
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    throw v0

    .line 4569
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 4547
    :cond_1
    :try_start_6
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->transactionsSupported:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v0, :cond_2

    .line 4549
    :try_start_7
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->rollbackNoChecks()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_1

    .line 4567
    :cond_2
    :try_start_8
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 4569
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    .line 4550
    :catch_1
    move-exception v0

    .line 4552
    :try_start_9
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getIgnoreNonTxTables()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_0

    move-result v2

    const/16 v3, 0x4ac

    if-ne v2, v3, :cond_3

    .line 4567
    :try_start_a
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 4553
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0

    .line 4555
    :cond_3
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_0

    .line 4565
    :cond_4
    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method

.method public rollback(Ljava/sql/Savepoint;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4577
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4578
    const/4 v0, 0x4

    const/4 v1, 0x0

    const/16 v3, 0xe

    :try_start_0
    invoke-virtual {p0, v0, v1, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4579
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4582
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 4583
    new-instance v0, Lcom/mysql/jdbc/ConnectionImpl$6;

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/mysql/jdbc/ConnectionImpl$6;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;Ljava/sql/Savepoint;)V

    .line 4593
    invoke-virtual {v0}, Lcom/mysql/jdbc/IterateBlock;->doForAll()V

    .line 4595
    invoke-virtual {v0}, Lcom/mysql/jdbc/IterateBlock;->fullIteration()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-nez v0, :cond_1

    .line 4642
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 4596
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4648
    :goto_0
    return-void

    .line 4600
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ROLLBACK TO SAVEPOINT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4601
    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4602
    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4603
    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 4605
    const/4 v1, 0x0

    .line 4608
    :try_start_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v1

    .line 4610
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 4639
    :try_start_5
    invoke-direct {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->closeStatement(Ljava/sql/Statement;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 4642
    :try_start_6
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 4647
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 4611
    :catch_0
    move-exception v0

    .line 4612
    :try_start_7
    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v3

    .line 4614
    const/16 v4, 0x49d

    if-ne v3, v4, :cond_2

    .line 4615
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 4617
    if-eqz v4, :cond_2

    .line 4618
    const-string v5, "153"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 4620
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 4621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Savepoint \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\' does not exist"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v0, v4, v3, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;ILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 4639
    :catchall_1
    move-exception v0

    :try_start_8
    invoke-direct {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->closeStatement(Ljava/sql/Statement;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 4642
    :catchall_2
    move-exception v0

    :try_start_9
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4628
    :cond_2
    :try_start_a
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getIgnoreNonTxTables()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v3

    const/16 v4, 0x4ac

    if-eq v3, v4, :cond_3

    .line 4629
    throw v0

    .line 4632
    :cond_3
    const-string v3, "08S01"

    invoke-virtual {v0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4633
    const-string v0, "Communications link failure during rollback(). Transaction resolution unknown."

    const-string v3, "08007"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4637
    :cond_4
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 4645
    :cond_5
    :try_start_b
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method public serverPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4664
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProcessEscapeCodesForPrepStmts()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->nativeSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4666
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCatalog()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3eb

    const/16 v3, 0x3ef

    invoke-static {v0, p1, v1, v2, v3}, Lcom/mysql/jdbc/ServerPreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)Lcom/mysql/jdbc/ServerPreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public serverPrepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 4674
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProcessEscapeCodesForPrepStmts()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->nativeSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4676
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCatalog()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3eb

    const/16 v4, 0x3ef

    invoke-static {v1, p1, v2, v3, v4}, Lcom/mysql/jdbc/ServerPreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)Lcom/mysql/jdbc/ServerPreparedStatement;

    move-result-object v1

    .line 4679
    if-ne p2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    .line 4681
    return-object v1

    .line 4679
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serverPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
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
    .line 4688
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProcessEscapeCodesForPrepStmts()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->nativeSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4690
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCatalog()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1, p2, p3}, Lcom/mysql/jdbc/ServerPreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)Lcom/mysql/jdbc/ServerPreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public serverPrepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
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
    .line 4698
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPedantic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4699
    const/4 v0, 0x1

    if-eq p4, v0, :cond_0

    .line 4700
    const-string v0, "HOLD_CUSRORS_OVER_COMMIT is only supported holdability level"

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4705
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/ConnectionImpl;->serverPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public serverPrepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4713
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->serverPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    .line 4715
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    .line 4717
    return-object v0

    .line 4715
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public serverPrepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4724
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->serverPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    .line 4726
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    .line 4728
    return-object v0

    .line 4726
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public serverSupportsConvertFn()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4732
    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public setAutoCommit(Z)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4754
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 4755
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 4757
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 4758
    new-instance v2, Lcom/mysql/jdbc/ConnectionImpl$7;

    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lcom/mysql/jdbc/ConnectionImpl$7;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;Z)V

    .line 4768
    invoke-virtual {v2}, Lcom/mysql/jdbc/IterateBlock;->doForAll()V

    .line 4770
    invoke-virtual {v2}, Lcom/mysql/jdbc/IterateBlock;->fullIteration()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4771
    monitor-exit v11

    .line 4814
    :goto_0
    return-void

    .line 4775
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAutoReconnectForPools()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4776
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->setHighAvailability(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4780
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->transactionsSupported:Z

    if-eqz v2, :cond_6

    .line 4784
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalSessionState()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    if-ne v2, p1, :cond_4

    .line 4793
    :goto_1
    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    .line 4795
    if-eqz v0, :cond_2

    .line 4796
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const-string v2, "SET autocommit=1"

    :goto_2
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0x3eb

    const/16 v6, 0x3ef

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4809
    :cond_2
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAutoReconnectForPools()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4810
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->setHighAvailability(Z)V

    .line 4814
    :cond_3
    monitor-exit v11

    goto :goto_0

    .line 4815
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4786
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getHighAvailability()Z

    move-result v0

    if-nez v0, :cond_9

    .line 4787
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/MysqlIO;->isSetNeededForAutoCommitMode(Z)Z

    move-result v0

    goto :goto_1

    .line 4796
    :cond_5
    const-string v2, "SET autocommit=0"

    goto :goto_2

    .line 4801
    :cond_6
    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getRelaxAutoCommit()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4802
    const-string v0, "MySQL Versions Older than 3.23.15 do not support transactions"

    const-string v1, "08003"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4809
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAutoReconnectForPools()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4810
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setHighAvailability(Z)V

    .line 4809
    :cond_7
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4806
    :cond_8
    :try_start_5
    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :cond_9
    move v0, v1

    goto :goto_1
.end method

.method public setCatalog(Ljava/lang/String;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4832
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 4833
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 4835
    if-nez p1, :cond_0

    .line 4836
    const-string v0, "Catalog can not be null"

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4881
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4839
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 4840
    new-instance v0, Lcom/mysql/jdbc/ConnectionImpl$8;

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/mysql/jdbc/ConnectionImpl$8;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;Ljava/lang/String;)V

    .line 4850
    invoke-virtual {v0}, Lcom/mysql/jdbc/IterateBlock;->doForAll()V

    .line 4852
    invoke-virtual {v0}, Lcom/mysql/jdbc/IterateBlock;->fullIteration()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4853
    monitor-exit v11

    .line 4882
    :goto_0
    return-void

    .line 4857
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalSessionState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4858
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->lowerCaseTableNames:Z

    if-eqz v0, :cond_2

    .line 4859
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4860
    monitor-exit v11

    goto :goto_0

    .line 4863
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4864
    monitor-exit v11

    goto :goto_0

    .line 4869
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->dbmd:Ljava/sql/DatabaseMetaData;

    invoke-interface {v0}, Ljava/sql/DatabaseMetaData;->getIdentifierQuoteString()Ljava/lang/String;

    move-result-object v0

    .line 4871
    if-eqz v0, :cond_4

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4872
    :cond_4
    const-string v0, ""

    .line 4875
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "USE "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4876
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPedantic()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4878
    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0x3eb

    const/16 v6, 0x3ef

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 4880
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    .line 4881
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setFailedOver(Z)V
    .locals 0
    .parameter

    .prologue
    .line 4890
    return-void
.end method

.method public setHoldability(I)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4897
    return-void
.end method

.method public setInGlobalTx(Z)V
    .locals 0
    .parameter

    .prologue
    .line 4900
    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isInGlobalTx:Z

    .line 4901
    return-void
.end method

.method public setNetworkTimeout(Ljava/util/concurrent/Executor;I)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5472
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5473
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 5475
    if-eqz v0, :cond_0

    .line 5476
    sget-object v2, Lcom/mysql/jdbc/ConnectionImpl;->SET_NETWORK_TIMEOUT_PERM:Ljava/sql/SQLPermission;

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 5479
    :cond_0
    if-nez p1, :cond_1

    .line 5480
    const-string v0, "Executor can not be null"

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 5485
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5483
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 5484
    new-instance v0, Lcom/mysql/jdbc/ConnectionImpl$NetworkTimeoutSetter;

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-direct {v0, p0, v2, p2}, Lcom/mysql/jdbc/ConnectionImpl$NetworkTimeoutSetter;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Lcom/mysql/jdbc/MysqlIO;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5485
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5486
    return-void
.end method

.method public setPreferSlaveDuringFailover(Z)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4911
    return-void
.end method

.method public setProfilerEventHandlerInstance(Lcom/mysql/jdbc/profiler/ProfilerEventHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 5501
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 5502
    return-void
.end method

.method public setProxy(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->proxy:Lcom/mysql/jdbc/MySQLConnection;

    .line 107
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->proxy:Lcom/mysql/jdbc/MySQLConnection;

    instance-of v0, v0, Lcom/mysql/jdbc/MultiHostMySQLConnection;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mysql/jdbc/MultiHostMySQLConnection;

    invoke-virtual {p1}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/MultiHostConnectionProxy;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->realProxy:Ljava/lang/reflect/InvocationHandler;

    .line 108
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setReadInfoMsgEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 4914
    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->readInfoMsg:Z

    .line 4915
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4929
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 4931
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->setReadOnlyInternal(Z)V

    .line 4932
    return-void
.end method

.method public setReadOnlyInternal(Z)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x5

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 4936
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReadOnlyPropagatesToServer()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    invoke-virtual {p0, v2, v0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4937
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalSessionState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->readOnly:Z

    if-eq p1, v0, :cond_1

    .line 4938
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set session transaction "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    const-string v0, "read only"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/16 v5, 0x3eb

    const/16 v6, 0x3ef

    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    move-object v0, p0

    move-object v4, v1

    move-object v9, v1

    move v10, v7

    invoke-virtual/range {v0 .. v10}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 4943
    :cond_1
    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->readOnly:Z

    .line 4944
    return-void

    .line 4938
    :cond_2
    const-string v0, "read write"

    goto :goto_0
.end method

.method public setSavepoint()Ljava/sql/Savepoint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4950
    new-instance v0, Lcom/mysql/jdbc/MysqlSavepoint;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/MysqlSavepoint;-><init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4952
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->setSavepoint(Lcom/mysql/jdbc/MysqlSavepoint;)V

    .line 4954
    return-object v0
.end method

.method public setSavepoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4987
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4988
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/MysqlSavepoint;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/mysql/jdbc/MysqlSavepoint;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4990
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->setSavepoint(Lcom/mysql/jdbc/MysqlSavepoint;)V

    .line 4992
    monitor-exit v1

    return-object v0

    .line 4993
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSchema(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5403
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5404
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 5405
    monitor-exit v1

    .line 5406
    return-void

    .line 5405
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSessionMaxRows(I)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 5391
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 5392
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    if-eq v0, p1, :cond_0

    .line 5393
    iput p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    .line 5394
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET SQL_SELECT_LIMIT="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    if-ne v0, v3, :cond_1

    const-string v0, "DEFAULT"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0x3eb

    const/16 v6, 0x3ef

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 5397
    :cond_0
    monitor-exit v11

    .line 5398
    return-void

    .line 5394
    :cond_1
    iget v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 5397
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStatementComment(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 5286
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementComment:Ljava/lang/String;

    .line 5287
    return-void
.end method

.method public setTransactionIsolation(I)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5034
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 5035
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 5037
    iget-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    if-eqz v2, :cond_3

    .line 5042
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAlwaysSendSetIsolation()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 5050
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalSessionState()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5051
    iget v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    if-eq v2, p1, :cond_1

    .line 5054
    :goto_1
    if-eqz v0, :cond_2

    .line 5055
    packed-switch p1, :pswitch_data_0

    .line 5080
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported transaction isolation level \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1C00"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 5092
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5045
    :cond_0
    :try_start_1
    iget v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    if-eq p1, v2, :cond_5

    move v2, v0

    .line 5046
    goto :goto_0

    :cond_1
    move v0, v1

    .line 5051
    goto :goto_1

    .line 5057
    :pswitch_1
    const-string v0, "Transaction isolation level NONE not supported by MySQL"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 5060
    :pswitch_2
    const-string v2, "SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED"

    .line 5084
    :goto_2
    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0x3eb

    const/16 v6, 0x3ef

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 5086
    iput p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    .line 5092
    :cond_2
    monitor-exit v11

    .line 5093
    return-void

    .line 5065
    :pswitch_3
    const-string v2, "SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED"

    goto :goto_2

    .line 5070
    :pswitch_4
    const-string v2, "SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ"

    goto :goto_2

    .line 5075
    :pswitch_5
    const-string v2, "SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE"

    goto :goto_2

    .line 5089
    :cond_3
    const-string v0, "Transaction Isolation Levels are not supported on MySQL versions older than 3.23.36."

    const-string v1, "S1C00"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_0

    .line 5055
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public setTypeMap(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5105
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5106
    :try_start_0
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->typeMap:Ljava/util/Map;

    .line 5107
    monitor-exit v1

    .line 5108
    return-void

    .line 5107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shutdownServer()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5147
    const/4 v0, 0x5

    const/4 v1, 0x7

    const/16 v2, 0x9

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5148
    const/4 v1, 0x0

    const-string v2, "SHUTDOWN"

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0x3eb

    const/16 v6, 0x3ef

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 5160
    :goto_0
    return-void

    .line 5150
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5152
    :catch_0
    move-exception v0

    .line 5153
    const-string v1, "Connection.UnhandledExceptionDuringShutdown"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 5156
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 5158
    throw v1
.end method

.method public storesLowerCaseTableName()Z
    .locals 1

    .prologue
    .line 5347
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->storesLowerCaseTableName:Z

    return v0
.end method

.method public supportsIsolationLevel()Z
    .locals 1

    .prologue
    .line 5163
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    return v0
.end method

.method public supportsQuotedIdentifiers()Z
    .locals 1

    .prologue
    .line 5167
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasQuotedIdentifiers:Z

    return v0
.end method

.method public supportsTransactions()Z
    .locals 1

    .prologue
    .line 5171
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->transactionsSupported:Z

    return v0
.end method

.method public throwConnectionClosedException()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1184
    const-string v0, "No operations allowed after connection closed."

    const-string v1, "08003"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 1187
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->forceClosedReason:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 1188
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->forceClosedReason:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1191
    :cond_0
    throw v0
.end method

.method public transactionBegun()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5315
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5316
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5317
    new-instance v0, Lcom/mysql/jdbc/ConnectionImpl$9;

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/mysql/jdbc/ConnectionImpl$9;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;)V

    .line 5325
    invoke-virtual {v0}, Lcom/mysql/jdbc/IterateBlock;->doForAll()V

    .line 5327
    :cond_0
    monitor-exit v1

    .line 5328
    return-void

    .line 5327
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public transactionCompleted()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5331
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5332
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5333
    new-instance v0, Lcom/mysql/jdbc/ConnectionImpl$10;

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/mysql/jdbc/ConnectionImpl$10;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;)V

    .line 5341
    invoke-virtual {v0}, Lcom/mysql/jdbc/IterateBlock;->doForAll()V

    .line 5343
    :cond_0
    monitor-exit v1

    .line 5344
    return-void

    .line 5343
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unSafeStatementInterceptors()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 816
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 818
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/NoSubInterceptorWrapper;

    .line 821
    invoke-virtual {v0}, Lcom/mysql/jdbc/NoSubInterceptorWrapper;->getUnderlyingInterceptor()Lcom/mysql/jdbc/StatementInterceptorV2;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 824
    :cond_0
    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    .line 826
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v0, :cond_1

    .line 827
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/MysqlIO;->setStatementInterceptors(Ljava/util/List;)V

    .line 829
    :cond_1
    return-void
.end method

.method public unregisterStatement(Lcom/mysql/jdbc/Statement;)V
    .locals 1
    .parameter

    .prologue
    .line 5181
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 5182
    return-void
.end method

.method public useAnsiQuotedIdentifiers()Z
    .locals 2

    .prologue
    .line 5185
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5186
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->useAnsiQuotes:Z

    monitor-exit v1

    return v0

    .line 5187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public versionMeetsMinimum(III)Z
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
    .line 5191
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 5193
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method
