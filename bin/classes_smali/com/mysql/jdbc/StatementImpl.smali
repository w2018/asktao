.class public Lcom/mysql/jdbc/StatementImpl;
.super Ljava/lang/Object;
.source "StatementImpl.java"

# interfaces
.implements Lcom/mysql/jdbc/Statement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/StatementImpl$CancelTask;
    }
.end annotation


# static fields
.field protected static final ON_DUPLICATE_KEY_UPDATE_CLAUSE:[Ljava/lang/String; = null

.field protected static final PING_MARKER:Ljava/lang/String; = "/* ping */"

.field public static final USES_VARIABLES_FALSE:B = 0x0t

.field public static final USES_VARIABLES_TRUE:B = 0x1t

.field public static final USES_VARIABLES_UNKNOWN:B = -0x1t

.field static statementCounter:I


# instance fields
.field protected batchedArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected batchedGeneratedKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;"
        }
    .end annotation
.end field

.field protected cancelTimeoutMutex:Ljava/lang/Object;

.field protected charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

.field protected charEncoding:Ljava/lang/String;

.field protected clearWarningsCalled:Z

.field private closeOnCompletion:Z

.field protected volatile connection:Lcom/mysql/jdbc/MySQLConnection;

.field protected connectionId:J

.field protected continueBatchOnError:Z

.field protected currentCatalog:Ljava/lang/String;

.field protected doEscapeProcessing:Z

.field protected eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field private fetchSize:I

.field protected generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

.field protected holdResultsOpenOverClose:Z

.field protected isClosed:Z

.field private isImplicitlyClosingResults:Z

.field private isPoolable:Z

.field protected lastInsertId:J

.field protected lastQueryIsOnDupKeyUpdate:Z

.field private localInfileInputStream:Ljava/io/InputStream;

.field protected maxFieldSize:I

.field protected maxRows:I

.field protected openResults:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mysql/jdbc/ResultSetInternalMethods;",
            ">;"
        }
    .end annotation
.end field

.field private originalFetchSize:I

.field private originalResultSetType:I

.field protected pedantic:Z

.field protected physicalConnection:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Lcom/mysql/jdbc/MySQLConnection;",
            ">;"
        }
    .end annotation
.end field

.field protected pingTarget:Lcom/mysql/jdbc/PingTarget;

.field protected pointOfOrigin:Ljava/lang/String;

.field protected profileSQL:Z

.field protected resultSetConcurrency:I

.field protected resultSetType:I

.field protected results:Lcom/mysql/jdbc/ResultSetInternalMethods;

.field protected retrieveGeneratedKeys:Z

.field protected sendFractionalSeconds:Z

.field protected final statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected statementId:I

.field protected timeoutInMillis:I

.field protected updateCount:J

.field protected useLegacyDatetimeCode:Z

.field protected useUsageAdvisor:Z

.field protected final version5013OrNewer:Z

.field protected warningChain:Ljava/sql/SQLWarning;

.field protected wasCancelled:Z

.field protected wasCancelledByTimeout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ON"

    aput-object v2, v0, v1

    const-string v1, "DUPLICATE"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "KEY"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UPDATE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mysql/jdbc/StatementImpl;->ON_DUPLICATE_KEY_UPDATE_CLAUSE:[Ljava/lang/String;

    .line 177
    sput v3, Lcom/mysql/jdbc/StatementImpl;->statementCounter:I

    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, -0x1

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->cancelTimeoutMutex:Ljava/lang/Object;

    .line 185
    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z

    .line 186
    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->wasCancelledByTimeout:Z

    .line 192
    iput-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    .line 195
    iput-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->charEncoding:Ljava/lang/String;

    .line 198
    iput-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 201
    iput-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->physicalConnection:Ljava/lang/ref/Reference;

    .line 203
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mysql/jdbc/StatementImpl;->connectionId:J

    .line 206
    iput-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    .line 209
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->doEscapeProcessing:Z

    .line 212
    iput-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 215
    iput v1, p0, Lcom/mysql/jdbc/StatementImpl;->fetchSize:I

    .line 218
    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->isClosed:Z

    .line 221
    iput-wide v6, p0, Lcom/mysql/jdbc/StatementImpl;->lastInsertId:J

    .line 224
    invoke-static {}, Lcom/mysql/jdbc/MysqlIO;->getMaxBuf()I

    move-result v2

    iput v2, p0, Lcom/mysql/jdbc/StatementImpl;->maxFieldSize:I

    .line 230
    iput v5, p0, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    .line 233
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    .line 236
    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->pedantic:Z

    .line 245
    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->profileSQL:Z

    .line 248
    iput-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 250
    iput-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 253
    iput v1, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetConcurrency:I

    .line 256
    iput v1, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    .line 262
    iput v1, p0, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    .line 265
    iput-wide v6, p0, Lcom/mysql/jdbc/StatementImpl;->updateCount:J

    .line 268
    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->useUsageAdvisor:Z

    .line 271
    iput-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->warningChain:Ljava/sql/SQLWarning;

    .line 274
    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->clearWarningsCalled:Z

    .line 280
    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->holdResultsOpenOverClose:Z

    .line 282
    iput-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 284
    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->retrieveGeneratedKeys:Z

    .line 286
    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->continueBatchOnError:Z

    .line 288
    iput-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->pingTarget:Lcom/mysql/jdbc/PingTarget;

    .line 297
    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->lastQueryIsOnDupKeyUpdate:Z

    .line 300
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 303
    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    .line 690
    iput v1, p0, Lcom/mysql/jdbc/StatementImpl;->originalResultSetType:I

    .line 691
    iput v1, p0, Lcom/mysql/jdbc/StatementImpl;->originalFetchSize:I

    .line 2491
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->isPoolable:Z

    .line 2580
    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->closeOnCompletion:Z

    .line 317
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    :cond_0
    const-string v0, "Statement.0"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "08003"

    invoke-static {v0, v1, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 321
    :cond_1
    iput-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 322
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mysql/jdbc/StatementImpl;->connectionId:J

    .line 323
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 325
    iput-object p2, p0, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    .line 326
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->pedantic:Z

    .line 327
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getContinueBatchOnError()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->continueBatchOnError:Z

    .line 328
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUseLegacyDatetimeCode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->useLegacyDatetimeCode:Z

    .line 329
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getSendFractionalSeconds()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->sendFractionalSeconds:Z

    .line 330
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getEnableEscapeProcessing()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->doEscapeProcessing:Z

    .line 332
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result v2

    if-nez v2, :cond_2

    .line 333
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2, p0}, Lcom/mysql/jdbc/MySQLConnection;->registerStatement(Lcom/mysql/jdbc/Statement;)V

    .line 336
    :cond_2
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getMaxAllowedPacket()I

    move-result v2

    iput v2, p0, Lcom/mysql/jdbc/StatementImpl;->maxFieldSize:I

    .line 338
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultFetchSize()I

    move-result v2

    .line 339
    if-eqz v2, :cond_3

    .line 340
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/StatementImpl;->setFetchSize(I)V

    .line 343
    :cond_3
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 344
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->charEncoding:Ljava/lang/String;

    .line 345
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->charEncoding:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    .line 348
    :cond_4
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getProfileSql()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUseUsageAdvisor()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getLogSlowQueries()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 349
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getAutoGenerateTestcaseScript()Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v0, :cond_7

    .line 350
    :cond_6
    sget v2, Lcom/mysql/jdbc/StatementImpl;->statementCounter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/mysql/jdbc/StatementImpl;->statementCounter:I

    iput v2, p0, Lcom/mysql/jdbc/StatementImpl;->statementId:I

    .line 352
    :cond_7
    if-eqz v0, :cond_8

    .line 353
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->pointOfOrigin:Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getProfileSql()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->profileSQL:Z

    .line 355
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseUsageAdvisor()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->useUsageAdvisor:Z

    .line 356
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v0}, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->getInstance(Lcom/mysql/jdbc/MySQLConnection;)Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 359
    :cond_8
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMaxRows()I

    move-result v0

    .line 360
    if-eq v0, v5, :cond_9

    .line 361
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/StatementImpl;->setMaxRows(I)V

    .line 364
    :cond_9
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getHoldResultsOpenOverStatementClose()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->holdResultsOpenOverClose:Z

    .line 366
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x5

    const/16 v3, 0xd

    invoke-interface {v0, v2, v1, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->version5013OrNewer:Z

    .line 367
    return-void

    :cond_a
    move v0, v1

    .line 348
    goto :goto_0
.end method

.method private checkAndPerformCloseOnCompletionAction()V
    .locals 3

    .prologue
    .line 637
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->isCloseOnCompletion()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getOpenResultSetCount()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 641
    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/mysql/jdbc/StatementImpl;->realClose(ZZ)V

    .line 643
    :cond_2
    monitor-exit v1

    .line 646
    :goto_0
    return-void

    .line 643
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 644
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private createResultSetUsingServerFetch(Ljava/lang/String;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 653
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget v2, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    iget v4, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetConcurrency:I

    invoke-interface {v1, p1, v2, v4}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 655
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->fetchSize:I

    invoke-interface {v2, v1}, Ljava/sql/PreparedStatement;->setFetchSize(I)V

    .line 657
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    const/4 v4, -0x1

    if-le v1, v4, :cond_0

    .line 658
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    invoke-interface {v2, v1}, Ljava/sql/PreparedStatement;->setMaxRows(I)V

    .line 661
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->statementBegins()V

    .line 663
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->execute()Z

    .line 668
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/mysql/jdbc/StatementImpl;->getResultSetInternal()Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 670
    check-cast v2, Lcom/mysql/jdbc/PreparedStatement;

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setStatementUsedForFetchingRows(Lcom/mysql/jdbc/PreparedStatement;)V

    .line 672
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 674
    monitor-exit v3

    return-object v1

    .line 675
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private executeBatchUsingMultiQueries(ZII)[J
    .locals 17
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1120
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v13

    .line 1122
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 1123
    if-nez p1, :cond_0

    .line 1124
    :try_start_0
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mysql/jdbc/MysqlIO;->enableMultiQueries()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1127
    :cond_0
    const/4 v2, 0x0

    .line 1129
    const/4 v3, 0x0

    .line 1132
    :try_start_1
    move/from16 v0, p2

    new-array v5, v0, [J

    .line 1134
    const/4 v1, 0x0

    :goto_0
    move/from16 v0, p2

    if-ge v1, v0, :cond_1

    .line 1135
    const-wide/16 v6, -0x3

    aput-wide v6, v5, v1

    .line 1134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1140
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1142
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->createStatement()Ljava/sql/Statement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result-object v2

    .line 1144
    :try_start_2
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz p3, :cond_14

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-interface {v13, v1, v4, v6}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1145
    new-instance v4, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    move-object v1, v0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v1}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 1146
    :try_start_3
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v1

    move/from16 v0, p3

    int-to-long v6, v0

    invoke-virtual {v1, v4, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move-object v6, v4

    .line 1149
    :goto_1
    const/4 v3, 0x0

    .line 1151
    const/4 v1, 0x1

    .line 1153
    :try_start_4
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v4

    .line 1155
    const-string v7, "utf"

    invoke-static {v4, v7}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1156
    const/4 v1, 0x3

    move v12, v1

    .line 1161
    :goto_2
    const/4 v1, 0x1

    .line 1163
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mysql/jdbc/StatementImpl;->doEscapeProcessing:Z

    invoke-interface {v2, v4}, Ljava/sql/Statement;->setEscapeProcessing(Z)V

    .line 1165
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mysql/jdbc/StatementImpl;->doEscapeProcessing:Z

    if-eqz v4, :cond_12

    .line 1166
    const/4 v1, 0x2

    move v4, v1

    .line 1169
    :goto_3
    const/4 v7, 0x0

    .line 1171
    const/4 v1, 0x0

    .line 1173
    const/4 v9, 0x0

    move-object v10, v8

    move v11, v9

    move v8, v1

    move v9, v3

    :goto_4
    move/from16 v0, p2

    if-ge v11, v0, :cond_3

    .line 1174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 1176
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v1, v15

    mul-int/2addr v1, v12

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x20

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v15}, Lcom/mysql/jdbc/MySQLConnection;->getMaxAllowedPacket()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v15

    if-le v1, v15, :cond_11

    .line 1179
    :try_start_5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x1

    invoke-interface {v2, v1, v10}, Ljava/sql/Statement;->execute(Ljava/lang/String;I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1184
    :goto_5
    :try_start_6
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    move-object v1, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9, v5}, Lcom/mysql/jdbc/StatementImpl;->processMultiCountsAndKeys(Lcom/mysql/jdbc/StatementImpl;I[J)I

    move-result v9

    .line 1186
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1187
    const/4 v8, 0x0

    move v1, v8

    move v8, v9

    move-object v9, v10

    .line 1190
    :goto_6
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    const-string v3, ";"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    add-int/lit8 v1, v1, 0x1

    .line 1173
    add-int/lit8 v3, v11, 0x1

    move-object v10, v9

    move v11, v3

    move v9, v8

    move v8, v1

    goto :goto_4

    .line 1157
    :cond_2
    invoke-static {v4}, Lcom/mysql/jdbc/CharsetMapping;->isMultibyteCharset(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1158
    const/4 v1, 0x2

    move v12, v1

    goto :goto_2

    .line 1180
    :catch_0
    move-exception v1

    .line 1181
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v8, v5, v1}, Lcom/mysql/jdbc/StatementImpl;->handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v7

    goto :goto_5

    .line 1195
    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v1

    if-lez v1, :cond_10

    .line 1197
    :try_start_7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Ljava/sql/Statement;->execute(Ljava/lang/String;I)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_1

    move-object v3, v7

    .line 1202
    :goto_7
    :try_start_8
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    move-object v1, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9, v5}, Lcom/mysql/jdbc/StatementImpl;->processMultiCountsAndKeys(Lcom/mysql/jdbc/StatementImpl;I[J)I

    move-object v1, v3

    .line 1205
    :goto_8
    if-eqz v6, :cond_f

    .line 1206
    iget-object v3, v6, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    if-eqz v3, :cond_7

    .line 1207
    iget-object v1, v6, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1223
    :catchall_0
    move-exception v1

    move-object v3, v2

    move-object v2, v6

    :goto_9
    if-eqz v2, :cond_4

    .line 1224
    :try_start_9
    invoke-virtual {v2}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1226
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    .line 1229
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1232
    if-eqz v3, :cond_5

    .line 1233
    :try_start_a
    invoke-interface {v3}, Ljava/sql/Statement;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1236
    :cond_5
    if-nez p1, :cond_6

    .line 1237
    :try_start_b
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->disableMultiQueries()V

    .line 1223
    :cond_6
    throw v1

    .line 1241
    :catchall_1
    move-exception v1

    monitor-exit v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v1

    .line 1198
    :catch_1
    move-exception v1

    .line 1199
    add-int/lit8 v3, v11, -0x1

    :try_start_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v5, v1}, Lcom/mysql/jdbc/StatementImpl;->handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v3

    goto :goto_7

    .line 1210
    :cond_7
    invoke-virtual {v6}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1212
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->purge()I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1214
    const/4 v3, 0x0

    .line 1217
    :goto_a
    if-eqz v1, :cond_8

    .line 1218
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v1, v5, v4}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1223
    :catchall_2
    move-exception v1

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto :goto_9

    .line 1221
    :cond_8
    if-eqz v5, :cond_c

    move-object v1, v5

    .line 1223
    :goto_b
    if-eqz v3, :cond_9

    .line 1224
    :try_start_e
    invoke-virtual {v3}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1226
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->purge()I

    .line 1229
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1232
    if-eqz v2, :cond_a

    .line 1233
    :try_start_f
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 1236
    :cond_a
    if-nez p1, :cond_b

    .line 1237
    :try_start_10
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->disableMultiQueries()V

    .line 1221
    :cond_b
    monitor-exit v14
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    return-object v1

    :cond_c
    const/4 v1, 0x0

    :try_start_11
    new-array v1, v1, [J
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_b

    .line 1236
    :catchall_3
    move-exception v1

    if-nez p1, :cond_d

    .line 1237
    :try_start_12
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->disableMultiQueries()V

    .line 1236
    :cond_d
    throw v1

    :catchall_4
    move-exception v1

    if-nez p1, :cond_e

    .line 1237
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->disableMultiQueries()V

    .line 1236
    :cond_e
    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 1223
    :catchall_5
    move-exception v1

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto/16 :goto_9

    :catchall_6
    move-exception v1

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto/16 :goto_9

    :catchall_7
    move-exception v1

    move-object v3, v2

    move-object v2, v4

    goto/16 :goto_9

    :cond_f
    move-object v3, v6

    goto :goto_a

    :cond_10
    move-object v1, v7

    goto/16 :goto_8

    :cond_11
    move v1, v8

    move v8, v9

    move-object v9, v10

    goto/16 :goto_6

    :cond_12
    move v4, v1

    goto/16 :goto_3

    :cond_13
    move v12, v1

    goto/16 :goto_2

    :cond_14
    move-object v6, v3

    goto/16 :goto_1
.end method

.method private executeInternal(Ljava/lang/String;Z)Z
    .locals 18
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 749
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v2

    .line 751
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 752
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 754
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/StatementImpl;->checkNullOrEmptyQuery(Ljava/lang/String;)V

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 758
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->implicitlyCloseAllOpenResults()V

    .line 760
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_0

    .line 761
    const-string v3, "/* ping */"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 762
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->doPingInstead()V

    .line 764
    const/4 v3, 0x1

    monitor-exit v15

    .line 902
    :goto_0
    return v3

    .line 768
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->findStartOfStatement(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/mysql/jdbc/StringUtils;->firstAlphaCharUc(Ljava/lang/String;I)C

    move-result v16

    .line 769
    const/16 v3, 0x53

    move/from16 v0, v16

    if-ne v0, v3, :cond_1

    const/4 v3, 0x1

    move v9, v3

    .line 771
    :goto_1
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mysql/jdbc/StatementImpl;->retrieveGeneratedKeys:Z

    .line 773
    if-eqz p2, :cond_2

    const/16 v3, 0x49

    move/from16 v0, v16

    if-ne v0, v3, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/StatementImpl;->containsOnDuplicateKeyInString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/mysql/jdbc/StatementImpl;->lastQueryIsOnDupKeyUpdate:Z

    .line 775
    if-nez v9, :cond_3

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 776
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Statement.27"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Statement.28"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 908
    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 769
    :cond_1
    const/4 v3, 0x0

    move v9, v3

    goto :goto_1

    .line 773
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 780
    :cond_3
    :try_start_1
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->isReadInfoMsgEnabled()Z

    move-result v17

    .line 781
    if-eqz p2, :cond_4

    const/16 v3, 0x52

    move/from16 v0, v16

    if-ne v0, v3, :cond_4

    .line 784
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 788
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/StatementImpl;->setupStreamingTimeout(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 790
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/StatementImpl;->doEscapeProcessing:Z

    if-eqz v3, :cond_17

    .line 791
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->serverSupportsConvertFn()Z

    move-result v3

    move-object/from16 v0, p1

    invoke-static {v0, v3, v2}, Lcom/mysql/jdbc/EscapeProcessor;->escapeSQL(Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)Ljava/lang/Object;

    move-result-object v3

    .line 793
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 794
    check-cast v3, Ljava/lang/String;

    move-object v4, v3

    .line 800
    :goto_3
    const/4 v8, 0x0

    .line 804
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 806
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->useServerFetch()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 807
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mysql/jdbc/StatementImpl;->createResultSetUsingServerFetch(Ljava/lang/String;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v3

    move-object v5, v8

    .line 884
    :goto_4
    if-eqz v3, :cond_5

    .line 885
    invoke-interface {v3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateID()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/mysql/jdbc/StatementImpl;->lastInsertId:J

    .line 887
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 889
    move/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setFirstCharOfQuery(C)V

    .line 891
    invoke-interface {v3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 892
    if-eqz v5, :cond_11

    .line 893
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v2, v4, v5, v6}, Lcom/mysql/jdbc/MySQLConnection;->initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    .line 902
    :cond_5
    :goto_5
    if-eqz v3, :cond_12

    invoke-interface {v3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    .line 904
    :goto_6
    :try_start_3
    move/from16 v0, v17

    invoke-interface {v2, v0}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V

    .line 906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 902
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 796
    :cond_6
    :try_start_4
    check-cast v3, Lcom/mysql/jdbc/EscapeProcessorResult;

    iget-object v4, v3, Lcom/mysql/jdbc/EscapeProcessorResult;->escapedSql:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 809
    :cond_7
    const/4 v7, 0x0

    .line 811
    const/4 v5, 0x0

    .line 814
    :try_start_5
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v3

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    if-eqz v3, :cond_16

    const/4 v3, 0x5

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-interface {v2, v3, v6, v10}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 815
    new-instance v6, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v6, v0, v1}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 816
    :try_start_6
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    int-to-long v10, v7

    invoke-virtual {v3, v6, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-object v13, v6

    .line 819
    :goto_7
    :try_start_7
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 820
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    move-result-object v5

    .line 821
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    move-object v12, v5

    .line 828
    :goto_8
    const/4 v11, 0x0

    .line 830
    :try_start_9
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCacheResultSetMetadata()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 831
    invoke-interface {v2, v4}, Lcom/mysql/jdbc/MySQLConnection;->getCachedMetaData(Ljava/lang/String;)Lcom/mysql/jdbc/CachedResultSetMetaData;

    move-result-object v14

    .line 833
    if-eqz v14, :cond_8

    .line 834
    iget-object v11, v14, Lcom/mysql/jdbc/CachedResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    .line 841
    :cond_8
    :goto_9
    if-eqz v9, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    :goto_a
    invoke-interface {v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->setSessionMaxRows(I)V

    .line 843
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->statementBegins()V

    .line 845
    move-object/from16 v0, p0

    iget v5, v0, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/mysql/jdbc/StatementImpl;->resultSetConcurrency:I

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->createStreamingResultSet()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-interface/range {v2 .. v11}, Lcom/mysql/jdbc/MySQLConnection;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v3

    .line 848
    if-eqz v13, :cond_13

    .line 849
    iget-object v5, v13, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    if-eqz v5, :cond_c

    .line 850
    iget-object v3, v13, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 873
    :catchall_1
    move-exception v3

    move-object v4, v12

    move-object v5, v13

    :goto_b
    if-eqz v5, :cond_9

    .line 874
    :try_start_a
    invoke-virtual {v5}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 875
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Timer;->purge()I

    .line 878
    :cond_9
    if-eqz v4, :cond_a

    .line 879
    invoke-interface {v2, v4}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    .line 873
    :cond_a
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 904
    :catchall_2
    move-exception v3

    :try_start_b
    move/from16 v0, v17

    invoke-interface {v2, v0}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V

    .line 906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 904
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 841
    :cond_b
    const/4 v3, -0x1

    goto :goto_a

    .line 853
    :cond_c
    :try_start_c
    invoke-virtual {v13}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 854
    const/4 v5, 0x0

    .line 857
    :goto_c
    :try_start_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/StatementImpl;->cancelTimeoutMutex:Ljava/lang/Object;

    monitor-enter v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 858
    :try_start_e
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z

    if-eqz v7, :cond_e

    .line 861
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/StatementImpl;->wasCancelledByTimeout:Z

    if-eqz v3, :cond_d

    .line 862
    new-instance v3, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    invoke-direct {v3}, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;-><init>()V

    .line 867
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 869
    throw v3

    .line 871
    :catchall_3
    move-exception v3

    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 873
    :catchall_4
    move-exception v3

    move-object v4, v12

    goto :goto_b

    .line 864
    :cond_d
    :try_start_10
    new-instance v3, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    invoke-direct {v3}, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;-><init>()V

    goto :goto_d

    .line 871
    :cond_e
    monitor-exit v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 873
    if-eqz v5, :cond_f

    .line 874
    :try_start_11
    invoke-virtual {v5}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 875
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Timer;->purge()I

    .line 878
    :cond_f
    if-eqz v12, :cond_10

    .line 879
    invoke-interface {v2, v12}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    :cond_10
    move-object v5, v14

    .line 881
    goto/16 :goto_4

    .line 895
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getCacheResultSetMetadata()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 896
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v2, v4, v5, v6}, Lcom/mysql/jdbc/MySQLConnection;->initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto/16 :goto_5

    .line 902
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 873
    :catchall_5
    move-exception v3

    move-object v4, v5

    move-object v5, v7

    goto :goto_b

    :catchall_6
    move-exception v3

    move-object v4, v5

    move-object v5, v6

    goto :goto_b

    :catchall_7
    move-exception v3

    move-object v4, v5

    move-object v5, v13

    goto/16 :goto_b

    :catchall_8
    move-exception v3

    move-object v4, v5

    move-object v5, v13

    goto/16 :goto_b

    :cond_13
    move-object v5, v13

    goto :goto_c

    :cond_14
    move-object v14, v8

    goto/16 :goto_9

    :cond_15
    move-object v12, v5

    goto/16 :goto_8

    :cond_16
    move-object v13, v7

    goto/16 :goto_7

    :cond_17
    move-object/from16 v4, p1

    goto/16 :goto_3
.end method

.method protected static findStartOfStatement(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 2526
    const-string v1, "/*"

    invoke-static {p0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2527
    const-string v1, "*/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2529
    if-ne v1, v2, :cond_1

    .line 2546
    :cond_0
    :goto_0
    return v0

    .line 2532
    :cond_1
    add-int/lit8 v0, v1, 0x2

    goto :goto_0

    .line 2534
    :cond_2
    const-string v1, "--"

    invoke-static {p0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "#"

    invoke-static {p0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2535
    :cond_3
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2537
    if-ne v1, v2, :cond_4

    .line 2538
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2540
    if-eq v1, v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method protected static getOnDuplicateKeyLocation(Ljava/lang/String;ZZZ)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2576
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    sget-object v2, Lcom/mysql/jdbc/StatementImpl;->ON_DUPLICATE_KEY_UPDATE_CLAUSE:[Ljava/lang/String;

    const-string v3, "\"\'`"

    const-string v4, "\"\'`"

    if-eqz p3, :cond_1

    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    :goto_1
    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    goto :goto_1
.end method

.method private getRecordCountFromInfo(Ljava/lang/String;)J
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1996
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2002
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v0

    .line 2005
    :goto_0
    if-ge v1, v3, :cond_0

    .line 2006
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2008
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2013
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2014
    add-int/lit8 v1, v1, 0x1

    .line 2016
    :goto_1
    if-ge v1, v3, :cond_1

    .line 2017
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2019
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2026
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 2028
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2030
    :goto_2
    if-ge v1, v3, :cond_2

    .line 2031
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2033
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2038
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2039
    add-int/lit8 v0, v1, 0x1

    .line 2041
    :goto_3
    if-ge v0, v3, :cond_3

    .line 2042
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2044
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_7

    .line 2051
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 2053
    sub-long v0, v4, v0

    return-wide v0

    .line 2005
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2023
    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2016
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2030
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2048
    :cond_7
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2041
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private useServerFetch()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2475
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2476
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isCursorFetchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->fetchSize:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetConcurrency:I

    const/16 v2, 0x3ef

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    const/16 v2, 0x3eb

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2478
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addBatch(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    .line 380
    :cond_0
    if-eqz p1, :cond_1

    .line 381
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_1
    monitor-exit v1

    .line 384
    return-void

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancel()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 404
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->isClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x5

    invoke-interface {v0, v2, v3, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->duplicate()Lcom/mysql/jdbc/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 414
    :try_start_1
    invoke-interface {v2}, Lcom/mysql/jdbc/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v1

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KILL QUERY "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mysql/jdbc/MysqlIO;->getThreadId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 418
    if-eqz v1, :cond_2

    .line 419
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 422
    :cond_2
    if-eqz v2, :cond_0

    .line 423
    invoke-interface {v2}, Lcom/mysql/jdbc/Connection;->close()V

    goto :goto_0

    .line 418
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_1
    if-eqz v1, :cond_3

    .line 419
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 422
    :cond_3
    if-eqz v2, :cond_4

    .line 423
    invoke-interface {v2}, Lcom/mysql/jdbc/Connection;->close()V

    .line 418
    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method protected checkClosed()Lcom/mysql/jdbc/MySQLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 441
    if-nez v0, :cond_0

    .line 442
    const-string v0, "Statement.49"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 445
    :cond_0
    return-object v0
.end method

.method protected checkForDml(Ljava/lang/String;C)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 461
    const/16 v0, 0x49

    if-eq p2, v0, :cond_0

    const/16 v0, 0x55

    if-eq p2, v0, :cond_0

    const/16 v0, 0x44

    if-eq p2, v0, :cond_0

    const/16 v0, 0x41

    if-eq p2, v0, :cond_0

    const/16 v0, 0x43

    if-eq p2, v0, :cond_0

    const/16 v0, 0x54

    if-eq p2, v0, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_2

    .line 463
    :cond_0
    const-string v1, "\'\""

    const-string v2, "\'\""

    const/4 v4, 0x0

    move-object v0, p1

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/StringUtils;->stripComments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 465
    const-string v1, "INSERT"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "UPDATE"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "DELETE"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "DROP"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CREATE"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ALTER"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TRUNCATE"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "RENAME"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    :cond_1
    const-string v0, "Statement.57"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 472
    :cond_2
    return-void
.end method

.method protected checkNullOrEmptyQuery(Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 484
    if-nez p1, :cond_0

    .line 485
    const-string v0, "Statement.59"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 488
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 489
    const-string v0, "Statement.61"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 491
    :cond_1
    return-void
.end method

.method public clearBatch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 506
    :cond_0
    monitor-exit v1

    .line 507
    return-void

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearWarnings()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 518
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->clearWarningsCalled:Z

    .line 519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->warningChain:Ljava/sql/SQLWarning;

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 538
    invoke-virtual {p0, v0, v0}, Lcom/mysql/jdbc/StatementImpl;->realClose(ZZ)V

    .line 539
    return-void
.end method

.method protected closeAllOpenResults()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 547
    if-nez v0, :cond_0

    .line 564
    :goto_0
    return-void

    .line 551
    :cond_0
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 552
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 553
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v0, v3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->realClose(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 556
    :catch_0
    move-exception v0

    .line 557
    :try_start_2
    invoke-static {v0}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    goto :goto_1

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 561
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 563
    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public closeOnCompletion()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2583
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2584
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->closeOnCompletion:Z

    .line 2585
    monitor-exit v1

    .line 2586
    return-void

    .line 2585
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected containsOnDuplicateKeyInString(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 2570
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDontCheckOnDuplicateKeyUpdateInSQL()Z

    move-result v0

    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getRewriteBatchedStatements()Z

    move-result v1

    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/mysql/jdbc/StatementImpl;->getOnDuplicateKeyLocation(Ljava/lang/String;ZZZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createStreamingResultSet()Z
    .locals 2

    .prologue
    .line 686
    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetConcurrency:I

    const/16 v1, 0x3ef

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->fetchSize:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disableStreamingResults()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 710
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->fetchSize:I

    const/high16 v2, -0x8000

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    const/16 v2, 0x3eb

    if-ne v0, v2, :cond_0

    .line 711
    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->originalFetchSize:I

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/StatementImpl;->setFetchSize(I)V

    .line 712
    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->originalResultSetType:I

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/StatementImpl;->setResultSetType(I)V

    .line 714
    :cond_0
    monitor-exit v1

    .line 715
    return-void

    .line 714
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected doPingInstead()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1440
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1441
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->pingTarget:Lcom/mysql/jdbc/PingTarget;

    if-eqz v0, :cond_0

    .line 1442
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->pingTarget:Lcom/mysql/jdbc/PingTarget;

    invoke-interface {v0}, Lcom/mysql/jdbc/PingTarget;->doPing()V

    .line 1447
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->generatePingResultSet()Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 1448
    iput-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1449
    monitor-exit v1

    .line 1450
    return-void

    .line 1444
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->ping()V

    goto :goto_0

    .line 1449
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableStreamingResults()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 699
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 700
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    iput v0, p0, Lcom/mysql/jdbc/StatementImpl;->originalResultSetType:I

    .line 701
    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->fetchSize:I

    iput v0, p0, Lcom/mysql/jdbc/StatementImpl;->originalFetchSize:I

    .line 703
    const/high16 v0, -0x8000

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/StatementImpl;->setFetchSize(I)V

    .line 704
    const/16 v0, 0x3eb

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/StatementImpl;->setResultSetType(I)V

    .line 705
    monitor-exit v1

    .line 706
    return-void

    .line 705
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public execute(Ljava/lang/String;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 745
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/StatementImpl;->executeInternal(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public execute(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 939
    if-ne p2, v0, :cond_0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/StatementImpl;->executeInternal(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;[I)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 946
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/StatementImpl;->executeInternal(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 953
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/StatementImpl;->executeInternal(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public executeBatch()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 970
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->executeBatchInternal()[J

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt([J)[I

    move-result-object v0

    return-object v0
.end method

.method protected executeBatchInternal()[J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 974
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v8

    .line 976
    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 977
    :try_start_0
    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Statement.34"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Statement.35"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1093
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 982
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->implicitlyCloseAllOpenResults()V

    .line 984
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 985
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [J

    monitor-exit v9

    .line 1075
    :goto_0
    return-object v0

    .line 989
    :cond_2
    iget v10, p0, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    .line 990
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 992
    const/4 v1, 0x0

    .line 995
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 997
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->statementBegins()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1000
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->retrieveGeneratedKeys:Z

    .line 1004
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    if-eqz v0, :cond_14

    .line 1005
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    .line 1007
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 1009
    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->getAllowMultiQueries()Z

    move-result v0

    .line 1011
    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v7, 0x1

    invoke-interface {v8, v3, v4, v7}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v0, :cond_3

    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->getRewriteBatchedStatements()Z

    move-result v3

    if-eqz v3, :cond_5

    if-le v11, v12, :cond_5

    .line 1013
    :cond_3
    invoke-direct {p0, v0, v11, v10}, Lcom/mysql/jdbc/StatementImpl;->executeBatchUsingMultiQueries(ZII)[J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-result-object v0

    .line 1077
    :try_start_4
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1081
    if-eqz v2, :cond_4

    .line 1082
    :try_start_5
    invoke-virtual {v1}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1084
    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 1087
    :cond_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 1089
    iput v10, p0, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    .line 1091
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->clearBatch()V

    .line 1013
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1016
    :cond_5
    :try_start_6
    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz v10, :cond_13

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-interface {v8, v0, v1, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1017
    new-instance v1, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {v1, p0, p0}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1018
    :try_start_7
    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    int-to-long v3, v10

    invoke-virtual {v0, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v3, v1

    .line 1021
    :goto_1
    :try_start_8
    new-array v4, v11, [J

    move v0, v5

    .line 1023
    :goto_2
    if-ge v0, v11, :cond_6

    .line 1024
    const-wide/16 v12, -0x3

    aput-wide v12, v4, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1023
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move v7, v5

    move-object v1, v2

    .line 1031
    :goto_3
    if-ge v7, v11, :cond_d

    .line 1033
    :try_start_9
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1034
    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {p0, v0, v12, v13}, Lcom/mysql/jdbc/StatementImpl;->executeUpdateInternal(Ljava/lang/String;ZZ)J

    move-result-wide v12

    aput-wide v12, v4, v7

    .line 1036
    iget-object v12, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v12}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getFirstCharOfQuery()C

    move-result v12

    const/16 v13, 0x49

    if-ne v12, v13, :cond_8

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/StatementImpl;->containsOnDuplicateKeyInString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v6

    :goto_4
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/StatementImpl;->getBatchedGeneratedKeys(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_0

    move-object v0, v1

    .line 1031
    :cond_7
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move-object v1, v0

    goto :goto_3

    :cond_8
    move v0, v5

    .line 1036
    goto :goto_4

    .line 1037
    :catch_0
    move-exception v0

    .line 1038
    const-wide/16 v12, -0x3

    :try_start_a
    aput-wide v12, v4, v7

    .line 1040
    iget-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->continueBatchOnError:Z

    if-eqz v1, :cond_9

    instance-of v1, v0, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    if-nez v1, :cond_9

    instance-of v1, v0, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    if-nez v1, :cond_9

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/StatementImpl;->hasDeadlockOrTimeoutRolledBackTx(Ljava/sql/SQLException;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1044
    :cond_9
    new-array v2, v7, [J

    .line 1046
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/StatementImpl;->hasDeadlockOrTimeoutRolledBackTx(Ljava/sql/SQLException;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v5

    .line 1047
    :goto_5
    array-length v4, v2

    if-ge v1, v4, :cond_b

    .line 1048
    const-wide/16 v4, -0x3

    aput-wide v4, v2, v1

    .line 1047
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1051
    :cond_a
    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v1, v2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1054
    :cond_b
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1077
    :catchall_1
    move-exception v0

    move-object v1, v3

    :goto_6
    :try_start_b
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1081
    :catchall_2
    move-exception v0

    :goto_7
    if-eqz v1, :cond_c

    .line 1082
    :try_start_c
    invoke-virtual {v1}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1084
    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 1087
    :cond_c
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 1089
    iput v10, p0, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    .line 1091
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->clearBatch()V

    .line 1081
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1059
    :cond_d
    if-eqz v1, :cond_e

    .line 1060
    :try_start_d
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_e
    move-object v0, v4

    move-object v1, v3

    .line 1064
    :goto_8
    if-eqz v1, :cond_10

    .line 1065
    :try_start_e
    iget-object v3, v1, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    if-eqz v3, :cond_f

    .line 1066
    iget-object v0, v1, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    throw v0

    .line 1077
    :catchall_3
    move-exception v0

    goto :goto_6

    .line 1069
    :cond_f
    invoke-virtual {v1}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1071
    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->purge()I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-object v1, v2

    .line 1075
    :cond_10
    if-eqz v0, :cond_12

    .line 1077
    :goto_9
    :try_start_f
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1081
    if-eqz v1, :cond_11

    .line 1082
    :try_start_10
    invoke-virtual {v1}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1084
    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 1087
    :cond_11
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 1089
    iput v10, p0, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    .line 1091
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->clearBatch()V

    .line 1075
    monitor-exit v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_0

    :cond_12
    const/4 v0, 0x0

    :try_start_11
    new-array v0, v0, [J
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_9

    .line 1081
    :catchall_4
    move-exception v0

    move-object v1, v2

    goto :goto_7

    .line 1077
    :catchall_5
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :cond_13
    move-object v3, v2

    goto/16 :goto_1

    :cond_14
    move-object v0, v2

    move-object v1, v2

    goto :goto_8
.end method

.method public executeLargeBatch()[J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2599
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->executeBatchInternal()[J

    move-result-object v0

    return-object v0
.end method

.method public executeLargeUpdate(Ljava/lang/String;)J
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2607
    invoke-virtual {p0, p1, v0, v0}, Lcom/mysql/jdbc/StatementImpl;->executeUpdateInternal(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public executeLargeUpdate(Ljava/lang/String;I)J
    .locals 2
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

    .line 2615
    if-ne p2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/mysql/jdbc/StatementImpl;->executeUpdateInternal(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public executeLargeUpdate(Ljava/lang/String;[I)J
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

    .line 2623
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/mysql/jdbc/StatementImpl;->executeUpdateInternal(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public executeLargeUpdate(Ljava/lang/String;[Ljava/lang/String;)J
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

    .line 2631
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/mysql/jdbc/StatementImpl;->executeUpdateInternal(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1305
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 1306
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 1308
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->retrieveGeneratedKeys:Z

    .line 1310
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/StatementImpl;->checkNullOrEmptyQuery(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 1314
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->implicitlyCloseAllOpenResults()V

    .line 1316
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    .line 1317
    const-string v1, "/* ping */"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1318
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->doPingInstead()V

    .line 1320
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v13

    .line 1435
    :goto_0
    return-object v0

    .line 1324
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/StatementImpl;->setupStreamingTimeout(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1326
    iget-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->doEscapeProcessing:Z

    if-eqz v1, :cond_11

    .line 1327
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->serverSupportsConvertFn()Z

    move-result v1

    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {p1, v1, v2}, Lcom/mysql/jdbc/EscapeProcessor;->escapeSQL(Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)Ljava/lang/Object;

    move-result-object v1

    .line 1329
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1330
    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    .line 1336
    :goto_1
    invoke-static {v2}, Lcom/mysql/jdbc/StatementImpl;->findStartOfStatement(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v1}, Lcom/mysql/jdbc/StringUtils;->firstAlphaCharUc(Ljava/lang/String;I)C

    move-result v1

    .line 1338
    invoke-virtual {p0, v2, v1}, Lcom/mysql/jdbc/StatementImpl;->checkForDml(Ljava/lang/String;C)V

    .line 1340
    const/4 v1, 0x0

    .line 1342
    invoke-direct {p0}, Lcom/mysql/jdbc/StatementImpl;->useServerFetch()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1343
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/StatementImpl;->createResultSetUsingServerFetch(Ljava/lang/String;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1345
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v13

    goto :goto_0

    .line 1436
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1332
    :cond_1
    :try_start_1
    check-cast v1, Lcom/mysql/jdbc/EscapeProcessorResult;

    iget-object v2, v1, Lcom/mysql/jdbc/EscapeProcessorResult;->escapedSql:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1348
    :cond_2
    const/4 v5, 0x0

    .line 1350
    const/4 v3, 0x0

    .line 1353
    :try_start_2
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v4

    if-eqz v4, :cond_10

    iget v4, p0, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    if-eqz v4, :cond_10

    const/4 v4, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v0, v4, v6, v7}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1354
    new-instance v4, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {v4, p0, p0}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1355
    :try_start_3
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v5

    iget v6, p0, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    int-to-long v6, v6

    invoke-virtual {v5, v4, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object v11, v4

    .line 1358
    :goto_2
    :try_start_4
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1359
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-result-object v3

    .line 1360
    :try_start_5
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    move-object v10, v3

    .line 1367
    :goto_3
    const/4 v9, 0x0

    .line 1369
    :try_start_6
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCacheResultSetMetadata()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1370
    invoke-interface {v0, v2}, Lcom/mysql/jdbc/MySQLConnection;->getCachedMetaData(Ljava/lang/String;)Lcom/mysql/jdbc/CachedResultSetMetaData;

    move-result-object v1

    .line 1372
    if-eqz v1, :cond_d

    .line 1373
    iget-object v9, v1, Lcom/mysql/jdbc/CachedResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    move-object v12, v1

    .line 1377
    :goto_4
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->setSessionMaxRows(I)V

    .line 1379
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->statementBegins()V

    .line 1381
    iget v3, p0, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    iget v6, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetConcurrency:I

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->createStreamingResultSet()Z

    move-result v7

    iget-object v8, p0, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    move-object v1, p0

    invoke-interface/range {v0 .. v9}, Lcom/mysql/jdbc/MySQLConnection;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1384
    if-eqz v11, :cond_c

    .line 1385
    iget-object v1, v11, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    if-eqz v1, :cond_5

    .line 1386
    iget-object v1, v11, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1412
    :catchall_1
    move-exception v1

    move-object v2, v10

    move-object v3, v11

    :goto_5
    :try_start_7
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1414
    if-eqz v3, :cond_3

    .line 1415
    invoke-virtual {v3}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1417
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->purge()I

    .line 1420
    :cond_3
    if-eqz v2, :cond_4

    .line 1421
    invoke-interface {v0, v2}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    .line 1412
    :cond_4
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1389
    :cond_5
    :try_start_8
    invoke-virtual {v11}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1391
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1393
    const/4 v3, 0x0

    .line 1396
    :goto_6
    :try_start_9
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->cancelTimeoutMutex:Ljava/lang/Object;

    monitor-enter v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1397
    :try_start_a
    iget-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z

    if-eqz v1, :cond_7

    .line 1400
    iget-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->wasCancelledByTimeout:Z

    if-eqz v1, :cond_6

    .line 1401
    new-instance v1, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    invoke-direct {v1}, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;-><init>()V

    .line 1406
    :goto_7
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 1408
    throw v1

    .line 1410
    :catchall_2
    move-exception v1

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1412
    :catchall_3
    move-exception v1

    move-object v2, v10

    goto :goto_5

    .line 1403
    :cond_6
    :try_start_c
    new-instance v1, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    invoke-direct {v1}, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;-><init>()V

    goto :goto_7

    .line 1410
    :cond_7
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1412
    :try_start_d
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1414
    if-eqz v3, :cond_8

    .line 1415
    invoke-virtual {v3}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1417
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 1420
    :cond_8
    if-eqz v10, :cond_9

    .line 1421
    invoke-interface {v0, v10}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    .line 1425
    :cond_9
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateID()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mysql/jdbc/StatementImpl;->lastInsertId:J

    .line 1427
    if-eqz v12, :cond_b

    .line 1428
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v0, v2, v12, v1}, Lcom/mysql/jdbc/MySQLConnection;->initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    .line 1435
    :cond_a
    :goto_8
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v13

    goto/16 :goto_0

    .line 1430
    :cond_b
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getCacheResultSetMetadata()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1431
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v0, v2, v1, v3}, Lcom/mysql/jdbc/MySQLConnection;->initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_8

    .line 1412
    :catchall_4
    move-exception v1

    move-object v2, v3

    move-object v3, v5

    goto/16 :goto_5

    :catchall_5
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_5

    :catchall_6
    move-exception v1

    move-object v2, v3

    move-object v3, v11

    goto/16 :goto_5

    :catchall_7
    move-exception v1

    move-object v2, v3

    move-object v3, v11

    goto/16 :goto_5

    :cond_c
    move-object v3, v11

    goto :goto_6

    :cond_d
    move-object v12, v1

    goto/16 :goto_4

    :cond_e
    move-object v12, v1

    goto/16 :goto_4

    :cond_f
    move-object v10, v3

    goto/16 :goto_3

    :cond_10
    move-object v11, v5

    goto/16 :goto_2

    :cond_11
    move-object v2, p1

    goto/16 :goto_1
.end method

.method protected executeSimpleNonQuery(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 1465
    const/4 v3, -0x1

    const/16 v5, 0x3eb

    const/16 v6, 0x3ef

    iget-object v8, p0, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v9, v4

    move v10, v7

    invoke-interface/range {v0 .. v10}, Lcom/mysql/jdbc/MySQLConnection;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->close()V

    .line 1466
    return-void
.end method

.method public executeUpdate(Ljava/lang/String;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1480
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/StatementImpl;->executeLargeUpdate(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt(J)I

    move-result v0

    return v0
.end method

.method public executeUpdate(Ljava/lang/String;I)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1616
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;->executeLargeUpdate(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt(J)I

    move-result v0

    return v0
.end method

.method public executeUpdate(Ljava/lang/String;[I)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1623
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;->executeLargeUpdate(Ljava/lang/String;[I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt(J)I

    move-result v0

    return v0
.end method

.method public executeUpdate(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1630
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;->executeLargeUpdate(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt(J)I

    move-result v0

    return v0
.end method

.method protected executeUpdateInternal(Ljava/lang/String;ZZ)J
    .locals 18
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1484
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v2

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 1485
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 1487
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/StatementImpl;->checkNullOrEmptyQuery(Ljava/lang/String;)V

    .line 1489
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 1491
    invoke-static/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->findStartOfStatement(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/mysql/jdbc/StringUtils;->firstAlphaCharUc(Ljava/lang/String;I)C

    move-result v16

    .line 1493
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mysql/jdbc/StatementImpl;->retrieveGeneratedKeys:Z

    .line 1495
    if-eqz p3, :cond_0

    const/16 v3, 0x49

    move/from16 v0, v16

    if-ne v0, v3, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/StatementImpl;->containsOnDuplicateKeyInString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/mysql/jdbc/StatementImpl;->lastQueryIsOnDupKeyUpdate:Z

    .line 1499
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/StatementImpl;->doEscapeProcessing:Z

    if-eqz v3, :cond_11

    .line 1500
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->serverSupportsConvertFn()Z

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/mysql/jdbc/EscapeProcessor;->escapeSQL(Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)Ljava/lang/Object;

    move-result-object v3

    .line 1502
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1503
    check-cast v3, Ljava/lang/String;

    move-object v4, v3

    .line 1509
    :goto_1
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Statement.42"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Statement.43"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 1609
    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1495
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1505
    :cond_1
    :try_start_1
    check-cast v3, Lcom/mysql/jdbc/EscapeProcessorResult;

    iget-object v4, v3, Lcom/mysql/jdbc/EscapeProcessorResult;->escapedSql:Ljava/lang/String;

    goto :goto_1

    .line 1514
    :cond_2
    const-string v3, "select"

    invoke-static {v4, v3}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1515
    const-string v2, "Statement.46"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "01S03"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 1518
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->implicitlyCloseAllOpenResults()V

    .line 1522
    const/4 v7, 0x0

    .line 1524
    const/4 v5, 0x0

    .line 1526
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->isReadInfoMsgEnabled()Z

    move-result v17

    .line 1527
    if-eqz p3, :cond_4

    const/16 v3, 0x52

    move/from16 v0, v16

    if-ne v0, v3, :cond_4

    .line 1530
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1534
    :cond_4
    :try_start_2
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    if-eqz v3, :cond_10

    const/4 v3, 0x5

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-interface {v2, v3, v6, v8}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1535
    new-instance v6, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v6, v0, v1}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1536
    :try_start_3
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    int-to-long v7, v7

    invoke-virtual {v3, v6, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object v14, v6

    .line 1539
    :goto_2
    :try_start_4
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1540
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-result-object v5

    .line 1541
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    move-object v13, v5

    .line 1547
    :goto_3
    const/4 v3, -0x1

    :try_start_6
    invoke-interface {v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->setSessionMaxRows(I)V

    .line 1549
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->statementBegins()V

    .line 1552
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v7, 0x3eb

    const/16 v8, 0x3ef

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v3, p0

    move/from16 v12, p2

    invoke-interface/range {v2 .. v12}, Lcom/mysql/jdbc/MySQLConnection;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v3

    .line 1555
    if-eqz v14, :cond_e

    .line 1556
    iget-object v4, v14, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    if-eqz v4, :cond_8

    .line 1557
    iget-object v3, v14, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1583
    :catchall_1
    move-exception v3

    move-object v4, v13

    move-object v5, v14

    :goto_4
    :try_start_7
    move/from16 v0, v17

    invoke-interface {v2, v0}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V

    .line 1585
    if-eqz v5, :cond_5

    .line 1586
    invoke-virtual {v5}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1588
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Timer;->purge()I

    .line 1591
    :cond_5
    if-eqz v4, :cond_6

    .line 1592
    invoke-interface {v2, v4}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    .line 1595
    :cond_6
    if-nez p2, :cond_7

    .line 1596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1583
    :cond_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1560
    :cond_8
    :try_start_8
    invoke-virtual {v14}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1562
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Timer;->purge()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1564
    const/4 v4, 0x0

    .line 1567
    :goto_5
    :try_start_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/StatementImpl;->cancelTimeoutMutex:Ljava/lang/Object;

    monitor-enter v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1568
    :try_start_a
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z

    if-eqz v6, :cond_a

    .line 1571
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/StatementImpl;->wasCancelledByTimeout:Z

    if-eqz v3, :cond_9

    .line 1572
    new-instance v3, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    invoke-direct {v3}, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;-><init>()V

    .line 1577
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 1579
    throw v3

    .line 1581
    :catchall_2
    move-exception v3

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1583
    :catchall_3
    move-exception v3

    move-object v5, v4

    move-object v4, v13

    goto :goto_4

    .line 1574
    :cond_9
    :try_start_c
    new-instance v3, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    invoke-direct {v3}, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;-><init>()V

    goto :goto_6

    .line 1581
    :cond_a
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1583
    :try_start_d
    move/from16 v0, v17

    invoke-interface {v2, v0}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V

    .line 1585
    if-eqz v4, :cond_b

    .line 1586
    invoke-virtual {v4}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1588
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Timer;->purge()I

    .line 1591
    :cond_b
    if-eqz v13, :cond_c

    .line 1592
    invoke-interface {v2, v13}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    .line 1595
    :cond_c
    if-nez p2, :cond_d

    .line 1596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1600
    :cond_d
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1602
    move/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setFirstCharOfQuery(C)V

    .line 1604
    invoke-interface {v3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateCount()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/mysql/jdbc/StatementImpl;->updateCount:J

    .line 1606
    invoke-interface {v3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateID()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/mysql/jdbc/StatementImpl;->lastInsertId:J

    .line 1608
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/mysql/jdbc/StatementImpl;->updateCount:J

    monitor-exit v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    return-wide v2

    .line 1583
    :catchall_4
    move-exception v3

    move-object v4, v5

    move-object v5, v7

    goto/16 :goto_4

    :catchall_5
    move-exception v3

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_4

    :catchall_6
    move-exception v3

    move-object v4, v5

    move-object v5, v14

    goto/16 :goto_4

    :catchall_7
    move-exception v3

    move-object v4, v5

    move-object v5, v14

    goto/16 :goto_4

    :cond_e
    move-object v4, v14

    goto :goto_5

    :cond_f
    move-object v13, v5

    goto/16 :goto_3

    :cond_10
    move-object v14, v7

    goto/16 :goto_2

    :cond_11
    move-object/from16 v4, p1

    goto/16 :goto_1
.end method

.method protected generatePingResultSet()Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1453
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1454
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    const/4 v2, 0x0

    new-instance v3, Lcom/mysql/jdbc/Field;

    const/4 v4, 0x0

    const-string v5, "1"

    const/4 v6, -0x5

    const/4 v7, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v0, v2

    .line 1455
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1456
    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/16 v5, 0x31

    aput-byte v5, v3, v4

    .line 1458
    new-instance v4, Lcom/mysql/jdbc/ByteArrayRow;

    const/4 v5, 0x1

    new-array v5, v5, [[B

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1460
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;Lcom/mysql/jdbc/MySQLConnection;)Ljava/sql/ResultSet;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v1

    return-object v0

    .line 1461
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBatchedArgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected getBatchedGeneratedKeys(I)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2446
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2447
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->retrieveGeneratedKeys:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_4

    .line 2448
    const/4 v1, 0x0

    .line 2451
    if-nez p1, :cond_1

    .line 2452
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getGeneratedKeysInternal()Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 2457
    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2458
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    const/4 v4, 0x1

    new-array v4, v4, [[B

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface {v1, v6}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2461
    :catchall_0
    move-exception v0

    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2463
    if-eqz v1, :cond_0

    .line 2464
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2467
    :cond_0
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    .line 2461
    throw v0

    .line 2471
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 2454
    :cond_1
    int-to-long v3, p1

    :try_start_5
    invoke-virtual {p0, v3, v4}, Lcom/mysql/jdbc/StatementImpl;->getGeneratedKeysInternal(J)Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 2461
    :cond_2
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2463
    if-eqz v1, :cond_3

    .line 2464
    :try_start_7
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2467
    :cond_3
    const/4 v0, 0x0

    :try_start_8
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    .line 2471
    :cond_4
    monitor-exit v2

    .line 2472
    return-void

    .line 2467
    :catchall_2
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    throw v0

    :catchall_3
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method protected getBatchedGeneratedKeys(Ljava/sql/Statement;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2426
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2427
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->retrieveGeneratedKeys:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    .line 2428
    const/4 v1, 0x0

    .line 2431
    :try_start_1
    invoke-interface {p1}, Ljava/sql/Statement;->getGeneratedKeys()Ljava/sql/ResultSet;

    move-result-object v1

    .line 2433
    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2434
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    const/4 v4, 0x1

    new-array v4, v4, [[B

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface {v1, v6}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2437
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 2438
    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 2437
    :cond_0
    throw v0

    .line 2442
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 2437
    :cond_1
    if-eqz v1, :cond_2

    .line 2438
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 2442
    :cond_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2443
    return-void
.end method

.method protected getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1638
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1639
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    .line 1640
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v0

    monitor-exit v1

    .line 1643
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    monitor-exit v1

    goto :goto_0

    .line 1644
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1656
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1657
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    monitor-exit v1

    return-object v0

    .line 1658
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;
    .locals 1

    .prologue
    .line 2566
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    return-object v0
.end method

.method public getFetchDirection()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1670
    const/16 v0, 0x3e8

    return v0
.end method

.method public getFetchSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1682
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1683
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->fetchSize:I

    monitor-exit v1

    return v0

    .line 1684
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getGeneratedKeys()Ljava/sql/ResultSet;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1691
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1692
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->retrieveGeneratedKeys:Z

    if-nez v0, :cond_0

    .line 1693
    const-string v0, "Statement.GeneratedKeysNotRequested"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1712
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1697
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1698
    iget-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->lastQueryIsOnDupKeyUpdate:Z

    if-eqz v0, :cond_1

    .line 1699
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/StatementImpl;->getGeneratedKeysInternal(J)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v6

    .line 1711
    :goto_0
    return-object v0

    .line 1701
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getGeneratedKeysInternal()Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v6

    goto :goto_0

    .line 1704
    :cond_2
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/mysql/jdbc/Field;

    .line 1705
    const/4 v0, 0x0

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "GENERATED_KEY"

    const/4 v5, -0x5

    const/16 v7, 0x14

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v1, v0

    .line 1706
    const/4 v0, 0x0

    aget-object v0, v1, v0

    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/Field;->setConnection(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1708
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    new-instance v2, Lcom/mysql/jdbc/RowDataStatic;

    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lcom/mysql/jdbc/RowDataStatic;-><init>(Ljava/util/List;)V

    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v5, 0x0

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->getInstance(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;Z)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1711
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected getGeneratedKeysInternal()Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1721
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getLargeUpdateCount()J

    move-result-wide v0

    .line 1722
    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/StatementImpl;->getGeneratedKeysInternal(J)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    return-object v0
.end method

.method protected getGeneratedKeysInternal(J)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1726
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1727
    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Lcom/mysql/jdbc/Field;

    .line 1728
    const/4 v0, 0x0

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "GENERATED_KEY"

    const/4 v5, -0x5

    const/16 v7, 0x14

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v1, v0

    .line 1729
    const/4 v0, 0x0

    aget-object v0, v1, v0

    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/Field;->setConnection(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1730
    const/4 v0, 0x0

    aget-object v0, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/Field;->setUseOldNameMetadata(Z)V

    .line 1732
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1734
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getLastInsertID()J

    move-result-wide v2

    .line 1736
    const-wide/16 v7, 0x0

    cmp-long v0, v2, v7

    if-gez v0, :cond_0

    .line 1737
    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->setUnsigned()V

    .line 1740
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v0, :cond_3

    .line 1741
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getServerInfo()Ljava/lang/String;

    move-result-object v0

    .line 1746
    const-wide/16 v7, 0x0

    cmp-long v5, p1, v7

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v5}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getFirstCharOfQuery()C

    move-result v5

    const/16 v7, 0x52

    if-ne v5, v7, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 1747
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/StatementImpl;->getRecordCountFromInfo(Ljava/lang/String;)J

    move-result-wide p1

    .line 1750
    :cond_1
    const-wide/16 v7, 0x0

    cmp-long v0, v2, v7

    if-eqz v0, :cond_3

    const-wide/16 v7, 0x0

    cmp-long v0, p1, v7

    if-lez v0, :cond_3

    .line 1751
    const/4 v0, 0x0

    :goto_0
    int-to-long v7, v0

    cmp-long v5, v7, p1

    if-gez v5, :cond_3

    .line 1752
    const/4 v5, 0x1

    new-array v5, v5, [[B

    .line 1753
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_2

    .line 1754
    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v5, v7

    .line 1770
    :goto_1
    new-instance v7, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1771
    iget-object v5, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getAutoIncrementIncrement()I

    move-result v5

    int-to-long v7, v5

    add-long/2addr v2, v7

    .line 1751
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1756
    :cond_2
    const/16 v7, 0x8

    new-array v7, v7, [B

    .line 1757
    const/4 v8, 0x7

    const-wide/16 v9, 0xff

    and-long/2addr v9, v2

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1758
    const/4 v8, 0x6

    const/16 v9, 0x8

    ushr-long v9, v2, v9

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1759
    const/4 v8, 0x5

    const/16 v9, 0x10

    ushr-long v9, v2, v9

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1760
    const/4 v8, 0x4

    const/16 v9, 0x18

    ushr-long v9, v2, v9

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1761
    const/4 v8, 0x3

    const/16 v9, 0x20

    ushr-long v9, v2, v9

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1762
    const/4 v8, 0x2

    const/16 v9, 0x28

    ushr-long v9, v2, v9

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1763
    const/4 v8, 0x1

    const/16 v9, 0x30

    ushr-long v9, v2, v9

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1764
    const/4 v8, 0x0

    const/16 v9, 0x38

    ushr-long v9, v2, v9

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1766
    new-instance v8, Ljava/math/BigInteger;

    const/4 v9, 0x1

    invoke-direct {v8, v9, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1768
    const/4 v7, 0x0

    invoke-virtual {v8}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v5, v7

    goto :goto_1

    .line 1780
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1776
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    new-instance v2, Lcom/mysql/jdbc/RowDataStatic;

    invoke-direct {v2, v4}, Lcom/mysql/jdbc/RowDataStatic;-><init>(Ljava/util/List;)V

    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v5, 0x0

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->getInstance(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;Z)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v0

    .line 1779
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method protected getId()I
    .locals 1

    .prologue
    .line 1789
    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->statementId:I

    return v0
.end method

.method public getLargeMaxRows()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2640
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getMaxRows()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getLargeUpdateCount()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .line 2648
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v2

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2649
    :try_start_0
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-nez v3, :cond_0

    .line 2650
    monitor-exit v2

    .line 2657
    :goto_0
    return-wide v0

    .line 2653
    :cond_0
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2654
    monitor-exit v2

    goto :goto_0

    .line 2658
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2657
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateCount()J

    move-result-wide v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getLastInsertID()J
    .locals 4

    .prologue
    .line 1805
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1806
    :try_start_1
    iget-wide v2, p0, Lcom/mysql/jdbc/StatementImpl;->lastInsertId:J

    monitor-exit v1

    return-wide v2

    .line 1807
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1808
    :catch_0
    move-exception v0

    .line 1809
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLocalInfileInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 2554
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->localInfileInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLongUpdateCount()J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 1826
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v2

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1827
    :try_start_1
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-nez v3, :cond_0

    .line 1828
    monitor-exit v2

    .line 1835
    :goto_0
    return-wide v0

    .line 1831
    :cond_0
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1832
    monitor-exit v2

    goto :goto_0

    .line 1836
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1837
    :catch_0
    move-exception v0

    .line 1838
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1835
    :cond_1
    :try_start_3
    iget-wide v0, p0, Lcom/mysql/jdbc/StatementImpl;->updateCount:J

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getMaxFieldSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1854
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1855
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->maxFieldSize:I

    monitor-exit v1

    return v0

    .line 1856
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMaxRows()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1870
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1871
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    if-gtz v0, :cond_0

    .line 1872
    const/4 v0, 0x0

    monitor-exit v1

    .line 1875
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    monitor-exit v1

    goto :goto_0

    .line 1876
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMoreResults()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1889
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/StatementImpl;->getMoreResults(I)Z

    move-result v0

    return v0
.end method

.method public getMoreResults(I)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1896
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1897
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-nez v2, :cond_0

    .line 1898
    monitor-exit v1

    .line 1970
    :goto_0
    return v0

    .line 1901
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->createStreamingResultSet()Z

    move-result v2

    .line 1903
    if-eqz v2, :cond_2

    .line 1904
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1905
    :cond_1
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->next()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1911
    :cond_2
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getNextResultSet()Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v3

    .line 1913
    packed-switch p1, :pswitch_data_0

    .line 1950
    const-string v0, "Statement.19"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1971
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1916
    :pswitch_0
    :try_start_1
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v4, :cond_4

    .line 1917
    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1918
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->realClose(Z)V

    .line 1921
    :cond_3
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->clearNextResult()V

    .line 1953
    :cond_4
    :goto_1
    iput-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1955
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-nez v2, :cond_a

    .line 1956
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/mysql/jdbc/StatementImpl;->updateCount:J

    .line 1957
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/mysql/jdbc/StatementImpl;->lastInsertId:J

    .line 1966
    :goto_2
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x1

    .line 1967
    :cond_5
    if-nez v0, :cond_6

    .line 1968
    invoke-direct {p0}, Lcom/mysql/jdbc/StatementImpl;->checkAndPerformCloseOnCompletionAction()V

    .line 1970
    :cond_6
    monitor-exit v1

    goto :goto_0

    .line 1928
    :pswitch_1
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v4, :cond_8

    .line 1929
    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1930
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->realClose(Z)V

    .line 1933
    :cond_7
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->clearNextResult()V

    .line 1936
    :cond_8
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->closeAllOpenResults()V

    goto :goto_1

    .line 1941
    :pswitch_2
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1942
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1945
    :cond_9
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->clearNextResult()V

    goto :goto_1

    .line 1958
    :cond_a
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1959
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/mysql/jdbc/StatementImpl;->updateCount:J

    .line 1960
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/mysql/jdbc/StatementImpl;->lastInsertId:J

    goto :goto_2

    .line 1962
    :cond_b
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateCount()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mysql/jdbc/StatementImpl;->updateCount:J

    .line 1963
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateID()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mysql/jdbc/StatementImpl;->lastInsertId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1913
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getOpenResultSetCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 617
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    monitor-exit v2

    .line 627
    :goto_0
    return v0

    .line 622
    :cond_0
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 624
    :catch_0
    move-exception v0

    move v0, v1

    .line 627
    goto :goto_0
.end method

.method public getQueryTimeout()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1985
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1986
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    div-int/lit16 v0, v0, 0x3e8

    monitor-exit v1

    return v0

    .line 1987
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getResultSet()Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2066
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2067
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2068
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getResultSetConcurrency()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2080
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2081
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetConcurrency:I

    monitor-exit v1

    return v0

    .line 2082
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getResultSetHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2089
    const/4 v0, 0x1

    return v0
.end method

.method protected getResultSetInternal()Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 2

    .prologue
    .line 2094
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2095
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v1

    .line 2098
    :goto_0
    return-object v0

    .line 2096
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2097
    :catch_0
    move-exception v0

    .line 2098
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    goto :goto_0
.end method

.method public getResultSetType()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2111
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2112
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    monitor-exit v1

    return v0

    .line 2113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUpdateCount()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2127
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getLargeUpdateCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt(J)I

    move-result v0

    return v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2150
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2152
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->clearWarningsCalled:Z

    if-eqz v0, :cond_0

    .line 2153
    const/4 v0, 0x0

    monitor-exit v1

    .line 2168
    :goto_0
    return-object v0

    .line 2156
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2157
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v0}, Lcom/mysql/jdbc/SQLError;->convertShowWarningsToSQLWarnings(Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLWarning;

    move-result-object v0

    .line 2159
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->warningChain:Ljava/sql/SQLWarning;

    if-eqz v2, :cond_1

    .line 2160
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->warningChain:Ljava/sql/SQLWarning;

    invoke-virtual {v2, v0}, Ljava/sql/SQLWarning;->setNextWarning(Ljava/sql/SQLWarning;)V

    .line 2165
    :goto_1
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->warningChain:Ljava/sql/SQLWarning;

    monitor-exit v1

    goto :goto_0

    .line 2169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2162
    :cond_1
    :try_start_1
    iput-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->warningChain:Ljava/sql/SQLWarning;

    goto :goto_1

    .line 2168
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->warningChain:Ljava/sql/SQLWarning;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/BatchUpdateException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    move v0, p1

    .line 1278
    :goto_0
    sub-int v1, p1, p2

    if-le v0, v1, :cond_0

    .line 1279
    const-wide/16 v1, -0x3

    aput-wide v1, p3, v0

    .line 1278
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1282
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->continueBatchOnError:Z

    if-eqz v0, :cond_1

    instance-of v0, p4, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    if-nez v0, :cond_1

    instance-of v0, p4, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    if-nez v0, :cond_1

    invoke-virtual {p0, p4}, Lcom/mysql/jdbc/StatementImpl;->hasDeadlockOrTimeoutRolledBackTx(Ljava/sql/SQLException;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1284
    return-object p4

    .line 1287
    :cond_1
    new-array v0, p1, [J

    .line 1288
    invoke-static {p3, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1290
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p4, v0, v1}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected final hasDeadlockOrTimeoutRolledBackTx(Ljava/sql/SQLException;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1097
    invoke-virtual {p1}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v2

    .line 1099
    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 1106
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 1104
    :sswitch_1
    iget-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->version5013OrNewer:Z

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1099
    nop

    :sswitch_data_0
    .sparse-switch
        0x4b5 -> :sswitch_1
        0x4b6 -> :sswitch_0
        0x4bd -> :sswitch_0
    .end sparse-switch
.end method

.method protected implicitlyCloseAllOpenResults()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    .line 572
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getHoldResultsOpenOverStatementClose()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->holdResultsOpenOverClose:Z

    if-nez v0, :cond_2

    .line 573
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->realClose(Z)V

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->realClose(Z)V

    .line 579
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->closeAllOpenResults()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    :cond_2
    iput-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    .line 584
    return-void

    .line 582
    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    throw v0
.end method

.method public isCloseOnCompletion()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2589
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2590
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->closeOnCompletion:Z

    monitor-exit v1

    return v0

    .line 2591
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isClosed()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2482
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 2483
    if-nez v0, :cond_0

    .line 2484
    const/4 v0, 0x1

    .line 2487
    :goto_0
    return v0

    .line 2486
    :cond_0
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2487
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->isClosed:Z

    monitor-exit v1

    goto :goto_0

    .line 2488
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isCursorRequired()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2681
    const/4 v0, 0x0

    return v0
.end method

.method public isPoolable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2494
    iget-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->isPoolable:Z

    return v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2505
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 2508
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected processMultiCountsAndKeys(Lcom/mysql/jdbc/StatementImpl;I[J)I
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
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1245
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1246
    add-int/lit8 v1, p2, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getLargeUpdateCount()J

    move-result-wide v4

    aput-wide v4, p3, p2

    .line 1248
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    move v2, v0

    .line 1250
    :cond_0
    const/4 v0, 0x0

    check-cast v0, [[B

    .line 1252
    if-eqz v2, :cond_1

    .line 1253
    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getLastInsertID()J

    move-result-wide v4

    .line 1255
    const/4 v0, 0x1

    new-array v0, v0, [[B

    .line 1256
    const/4 v6, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v6

    .line 1257
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    new-instance v5, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move v0, v1

    .line 1260
    :goto_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getMoreResults()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getLargeUpdateCount()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    .line 1261
    :cond_2
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getLargeUpdateCount()J

    move-result-wide v4

    aput-wide v4, p3, v0

    .line 1263
    if-eqz v2, :cond_1

    .line 1264
    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getLastInsertID()J

    move-result-wide v4

    .line 1266
    const/4 v0, 0x1

    new-array v0, v0, [[B

    .line 1267
    const/4 v6, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v6

    .line 1268
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    new-instance v5, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 1269
    goto :goto_0

    .line 1272
    :cond_3
    monitor-exit v3

    return v0

    .line 1273
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected realClose(ZZ)V
    .locals 18
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 2184
    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mysql/jdbc/StatementImpl;->isClosed:Z

    if-eqz v2, :cond_1

    .line 2236
    :cond_0
    :goto_0
    return-void

    .line 2189
    :cond_1
    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2190
    move-object/from16 v0, p0

    invoke-interface {v1, v0}, Lcom/mysql/jdbc/MySQLConnection;->unregisterStatement(Lcom/mysql/jdbc/Statement;)V

    .line 2193
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mysql/jdbc/StatementImpl;->useUsageAdvisor:Z

    if-eqz v1, :cond_3

    .line 2194
    if-nez p1, :cond_3

    .line 2195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statement.63"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Statement.64"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/StatementImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-object/from16 v17, v0

    new-instance v1, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v2, 0x0

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/mysql/jdbc/StatementImpl;->connectionId:J

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->getId()I

    move-result v7

    const/4 v8, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    sget-object v13, Lcom/mysql/jdbc/Constants;->MILLIS_I18N:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mysql/jdbc/StatementImpl;->pointOfOrigin:Ljava/lang/String;

    invoke-direct/range {v1 .. v16}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 2202
    :cond_3
    if-eqz p2, :cond_8

    .line 2203
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mysql/jdbc/StatementImpl;->holdResultsOpenOverClose:Z

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    .line 2206
    :goto_1
    if-eqz v1, :cond_6

    .line 2207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v1, :cond_4

    .line 2210
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2215
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v1, :cond_5

    .line 2218
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2223
    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->closeAllOpenResults()V

    .line 2226
    :cond_6
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/mysql/jdbc/StatementImpl;->isClosed:Z

    .line 2228
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 2229
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 2230
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 2231
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mysql/jdbc/StatementImpl;->warningChain:Ljava/sql/SQLWarning;

    .line 2232
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    .line 2233
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 2234
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mysql/jdbc/StatementImpl;->localInfileInputStream:Ljava/io/InputStream;

    .line 2235
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mysql/jdbc/StatementImpl;->pingTarget:Lcom/mysql/jdbc/PingTarget;

    goto/16 :goto_0

    .line 2203
    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    .line 2219
    :catch_0
    move-exception v1

    goto :goto_3

    .line 2211
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_8
    move/from16 v1, p2

    goto :goto_1
.end method

.method public removeOpenResultSet(Lcom/mysql/jdbc/ResultSetInternalMethods;)V
    .locals 3
    .parameter

    .prologue
    .line 588
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 593
    :cond_0
    invoke-interface {p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getNextResultSet()Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 596
    :goto_0
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-ne v2, p1, :cond_1

    if-nez v0, :cond_1

    .line 597
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 599
    :cond_1
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-ne v2, p1, :cond_2

    .line 600
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 606
    :cond_2
    iget-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    if-nez v2, :cond_3

    if-nez v0, :cond_3

    .line 607
    invoke-direct {p0}, Lcom/mysql/jdbc/StatementImpl;->checkAndPerformCloseOnCompletionAction()V

    .line 609
    :cond_3
    monitor-exit v1

    .line 613
    :goto_1
    return-void

    .line 593
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 610
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected resetCancelledState()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 924
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->cancelTimeoutMutex:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 925
    monitor-exit v1

    .line 933
    :goto_0
    return-void

    .line 928
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->cancelTimeoutMutex:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z

    .line 930
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->wasCancelledByTimeout:Z

    .line 931
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 932
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 931
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public setCursorName(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2257
    return-void
.end method

.method public setEscapeProcessing(Z)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2270
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2271
    :try_start_0
    iput-boolean p1, p0, Lcom/mysql/jdbc/StatementImpl;->doEscapeProcessing:Z

    .line 2272
    monitor-exit v1

    .line 2273
    return-void

    .line 2272
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 2289
    packed-switch p1, :pswitch_data_0

    .line 2296
    const-string v0, "Statement.5"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2298
    :pswitch_0
    return-void

    .line 2289
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setFetchSize(I)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2315
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2316
    if-gez p1, :cond_0

    const/high16 v0, -0x8000

    if-ne p1, v0, :cond_1

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getMaxRows()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 2317
    :cond_1
    const-string v0, "Statement.7"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2321
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2320
    :cond_2
    :try_start_1
    iput p1, p0, Lcom/mysql/jdbc/StatementImpl;->fetchSize:I

    .line 2321
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2322
    return-void
.end method

.method public setHoldResultsOpenOverClose(Z)V
    .locals 2
    .parameter

    .prologue
    .line 2326
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2327
    :try_start_1
    iput-boolean p1, p0, Lcom/mysql/jdbc/StatementImpl;->holdResultsOpenOverClose:Z

    .line 2328
    monitor-exit v1

    .line 2332
    :goto_0
    return-void

    .line 2328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2329
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setLargeMaxRows(J)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 2666
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2667
    const-wide/32 v2, 0x2faf080

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    cmp-long v0, p1, v4

    if-gez v0, :cond_1

    .line 2668
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statement.15"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " > "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x2faf080

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2677
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2672
    :cond_1
    cmp-long v0, p1, v4

    if-nez v0, :cond_2

    .line 2673
    const-wide/16 p1, -0x1

    .line 2676
    :cond_2
    long-to-int v0, p1

    :try_start_1
    iput v0, p0, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    .line 2677
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2678
    return-void
.end method

.method public setLocalInfileInputStream(Ljava/io/InputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 2558
    iput-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->localInfileInputStream:Ljava/io/InputStream;

    .line 2559
    return-void
.end method

.method public setMaxFieldSize(I)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2344
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2345
    if-gez p1, :cond_0

    .line 2346
    :try_start_0
    const-string v0, "Statement.11"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2357
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2349
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMaxAllowedPacket()I

    move-result v0

    .line 2351
    :goto_0
    if-le p1, v0, :cond_2

    .line 2352
    const-string v2, "Statement.13"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2349
    :cond_1
    invoke-static {}, Lcom/mysql/jdbc/MysqlIO;->getMaxBuf()I

    move-result v0

    goto :goto_0

    .line 2356
    :cond_2
    iput p1, p0, Lcom/mysql/jdbc/StatementImpl;->maxFieldSize:I

    .line 2357
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2358
    return-void
.end method

.method public setMaxRows(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2372
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/StatementImpl;->setLargeMaxRows(J)V

    .line 2373
    return-void
.end method

.method public setPingTarget(Lcom/mysql/jdbc/PingTarget;)V
    .locals 0
    .parameter

    .prologue
    .line 2562
    iput-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->pingTarget:Lcom/mysql/jdbc/PingTarget;

    .line 2563
    return-void
.end method

.method public setPoolable(Z)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2498
    iput-boolean p1, p0, Lcom/mysql/jdbc/StatementImpl;->isPoolable:Z

    .line 2499
    return-void
.end method

.method public setQueryTimeout(I)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2386
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2387
    if-gez p1, :cond_0

    .line 2388
    :try_start_0
    const-string v0, "Statement.21"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2392
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2391
    :cond_0
    mul-int/lit16 v0, p1, 0x3e8

    :try_start_1
    iput v0, p0, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    .line 2392
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2393
    return-void
.end method

.method setResultSetConcurrency(I)V
    .locals 2
    .parameter

    .prologue
    .line 2402
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2403
    :try_start_1
    iput p1, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetConcurrency:I

    .line 2404
    monitor-exit v1

    .line 2408
    :goto_0
    return-void

    .line 2404
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2405
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method setResultSetType(I)V
    .locals 2
    .parameter

    .prologue
    .line 2417
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2418
    :try_start_1
    iput p1, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    .line 2419
    monitor-exit v1

    .line 2423
    :goto_0
    return-void

    .line 2419
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2420
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected setupStreamingTimeout(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->createStreamingResultSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getNetTimeoutForStreamingResults()I

    move-result v0

    if-lez v0, :cond_0

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET net_write_timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getNetTimeoutForStreamingResults()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/StatementImpl;->executeSimpleNonQuery(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    .line 728
    :cond_0
    return-void
.end method

.method protected statementBegins()V
    .locals 2

    .prologue
    .line 912
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->clearWarningsCalled:Z

    .line 913
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 915
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    .line 916
    :goto_0
    instance-of v1, v0, Lcom/mysql/jdbc/ConnectionImpl;

    if-nez v1, :cond_0

    .line 917
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    goto :goto_0

    .line 919
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->physicalConnection:Ljava/lang/ref/Reference;

    .line 920
    return-void
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2517
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 2518
    :catch_0
    move-exception v0

    .line 2519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to unwrap to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method
