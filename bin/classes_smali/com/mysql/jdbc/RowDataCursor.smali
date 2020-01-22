.class public Lcom/mysql/jdbc/RowDataCursor;
.super Ljava/lang/Object;
.source "RowDataCursor.java"

# interfaces
.implements Lcom/mysql/jdbc/RowData;


# static fields
.field private static final BEFORE_START_OF_ROWS:I = -0x1

.field private static final SERVER_STATUS_LAST_ROW_SENT:I = 0x80


# instance fields
.field private currentPositionInEntireResult:I

.field private currentPositionInFetchedRows:I

.field private fetchedRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;"
        }
    .end annotation
.end field

.field private firstFetchCompleted:Z

.field private lastRowFetched:Z

.field private metadata:[Lcom/mysql/jdbc/Field;

.field private mysql:Lcom/mysql/jdbc/MysqlIO;

.field private owner:Lcom/mysql/jdbc/ResultSetImpl;

.field private prepStmt:Lcom/mysql/jdbc/ServerPreparedStatement;

.field private statementIdOnServer:J

.field private useBufferRowExplicit:Z

.field private wasEmpty:Z


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/MysqlIO;Lcom/mysql/jdbc/ServerPreparedStatement;[Lcom/mysql/jdbc/Field;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v1, p0, Lcom/mysql/jdbc/RowDataCursor;->currentPositionInEntireResult:I

    .line 52
    iput v1, p0, Lcom/mysql/jdbc/RowDataCursor;->currentPositionInFetchedRows:I

    .line 62
    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataCursor;->lastRowFetched:Z

    .line 95
    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataCursor;->firstFetchCompleted:Z

    .line 97
    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataCursor;->wasEmpty:Z

    .line 99
    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataCursor;->useBufferRowExplicit:Z

    .line 112
    iput v1, p0, Lcom/mysql/jdbc/RowDataCursor;->currentPositionInEntireResult:I

    .line 113
    iput-object p3, p0, Lcom/mysql/jdbc/RowDataCursor;->metadata:[Lcom/mysql/jdbc/Field;

    .line 114
    iput-object p1, p0, Lcom/mysql/jdbc/RowDataCursor;->mysql:Lcom/mysql/jdbc/MysqlIO;

    .line 115
    invoke-virtual {p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->getServerStatementId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mysql/jdbc/RowDataCursor;->statementIdOnServer:J

    .line 116
    iput-object p2, p0, Lcom/mysql/jdbc/RowDataCursor;->prepStmt:Lcom/mysql/jdbc/ServerPreparedStatement;

    .line 117
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataCursor;->metadata:[Lcom/mysql/jdbc/Field;

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlIO;->useBufferRowExplicit([Lcom/mysql/jdbc/Field;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataCursor;->useBufferRowExplicit:Z

    .line 119
    return-void
.end method

.method private fetchMoreRows()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 370
    iget-boolean v0, p0, Lcom/mysql/jdbc/RowDataCursor;->lastRowFetched:Z

    if-eqz v0, :cond_0

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/RowDataCursor;->fetchedRows:Ljava/util/List;

    .line 406
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataCursor;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v0, v0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 376
    :try_start_0
    iget-boolean v8, p0, Lcom/mysql/jdbc/RowDataCursor;->firstFetchCompleted:Z

    .line 378
    iget-boolean v0, p0, Lcom/mysql/jdbc/RowDataCursor;->firstFetchCompleted:Z

    if-nez v0, :cond_1

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataCursor;->firstFetchCompleted:Z

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataCursor;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ResultSetImpl;->getFetchSize()I

    move-result v0

    .line 384
    if-nez v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataCursor;->prepStmt:Lcom/mysql/jdbc/ServerPreparedStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getFetchSize()I

    move-result v0

    .line 388
    :cond_2
    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_4

    .line 394
    :goto_1
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataCursor;->mysql:Lcom/mysql/jdbc/MysqlIO;

    iget-object v1, p0, Lcom/mysql/jdbc/RowDataCursor;->fetchedRows:Ljava/util/List;

    iget-wide v2, p0, Lcom/mysql/jdbc/RowDataCursor;->statementIdOnServer:J

    iget-object v4, p0, Lcom/mysql/jdbc/RowDataCursor;->metadata:[Lcom/mysql/jdbc/Field;

    iget-boolean v6, p0, Lcom/mysql/jdbc/RowDataCursor;->useBufferRowExplicit:Z

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlIO;->fetchRowsViaCursor(Ljava/util/List;J[Lcom/mysql/jdbc/Field;IZ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/RowDataCursor;->fetchedRows:Ljava/util/List;

    .line 396
    const/4 v0, -0x1

    iput v0, p0, Lcom/mysql/jdbc/RowDataCursor;->currentPositionInFetchedRows:I

    .line 398
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataCursor;->mysql:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getServerStatus()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataCursor;->lastRowFetched:Z

    .line 401
    if-nez v8, :cond_3

    iget-object v0, p0, Lcom/mysql/jdbc/RowDataCursor;->fetchedRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataCursor;->wasEmpty:Z

    .line 405
    :cond_3
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v5, v0

    goto :goto_1
.end method

.method private notSupported()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 434
    new-instance v0, Lcom/mysql/jdbc/OperationNotSupportedException;

    invoke-direct {v0}, Lcom/mysql/jdbc/OperationNotSupportedException;-><init>()V

    throw v0
.end method


# virtual methods
.method public addRow(Lcom/mysql/jdbc/ResultSetRow;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataCursor;->notSupported()V

    .line 232
    return-void
.end method

.method public afterLast()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataCursor;->notSupported()V

    .line 242
    return-void
.end method

.method public beforeFirst()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataCursor;->notSupported()V

    .line 252
    return-void
.end method

.method public beforeLast()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataCursor;->notSupported()V

    .line 262
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Lcom/mysql/jdbc/RowDataCursor;->metadata:[Lcom/mysql/jdbc/Field;

    .line 273
    iput-object v0, p0, Lcom/mysql/jdbc/RowDataCursor;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    .line 274
    return-void
.end method

.method public getAt(I)Lcom/mysql/jdbc/ResultSetRow;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataCursor;->notSupported()V

    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentRowNumber()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 174
    iget v0, p0, Lcom/mysql/jdbc/RowDataCursor;->currentPositionInEntireResult:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getOwner()Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataCursor;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    return-object v0
.end method

.method public hasNext()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 285
    iget-object v2, p0, Lcom/mysql/jdbc/RowDataCursor;->fetchedRows:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mysql/jdbc/RowDataCursor;->fetchedRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v1

    .line 289
    :cond_1
    iget-object v2, p0, Lcom/mysql/jdbc/RowDataCursor;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mysql/jdbc/RowDataCursor;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v2, v2, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-eqz v2, :cond_2

    .line 290
    iget-object v2, p0, Lcom/mysql/jdbc/RowDataCursor;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v2, v2, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    iget v2, v2, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    .line 292
    if-eq v2, v4, :cond_2

    iget v3, p0, Lcom/mysql/jdbc/RowDataCursor;->currentPositionInEntireResult:I

    add-int/lit8 v3, v3, 0x1

    if-gt v3, v2, :cond_0

    .line 297
    :cond_2
    iget v2, p0, Lcom/mysql/jdbc/RowDataCursor;->currentPositionInEntireResult:I

    if-eq v2, v4, :cond_6

    .line 299
    iget v2, p0, Lcom/mysql/jdbc/RowDataCursor;->currentPositionInFetchedRows:I

    iget-object v3, p0, Lcom/mysql/jdbc/RowDataCursor;->fetchedRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_3

    move v1, v0

    .line 300
    goto :goto_0

    .line 301
    :cond_3
    iget v2, p0, Lcom/mysql/jdbc/RowDataCursor;->currentPositionInFetchedRows:I

    iget-object v3, p0, Lcom/mysql/jdbc/RowDataCursor;->fetchedRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/mysql/jdbc/RowDataCursor;->lastRowFetched:Z

    if-nez v2, :cond_0

    .line 305
    :cond_4
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataCursor;->fetchMoreRows()V

    .line 307
    iget-object v2, p0, Lcom/mysql/jdbc/RowDataCursor;->fetchedRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    .line 313
    :cond_6
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataCursor;->fetchMoreRows()V

    .line 315
    iget-object v2, p0, Lcom/mysql/jdbc/RowDataCursor;->fetchedRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/mysql/jdbc/RowDataCursor;->lastRowFetched:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/RowDataCursor;->currentPositionInFetchedRows:I

    iget-object v1, p0, Lcom/mysql/jdbc/RowDataCursor;->fetchedRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBeforeFirst()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 151
    iget v0, p0, Lcom/mysql/jdbc/RowDataCursor;->currentPositionInEntireResult:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDynamic()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/mysql/jdbc/RowDataCursor;->isBeforeFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/RowDataCursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirst()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 208
    iget v0, p0, Lcom/mysql/jdbc/RowDataCursor;->currentPositionInEntireResult:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLast()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/mysql/jdbc/RowDataCursor;->lastRowFetched:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/RowDataCursor;->currentPositionInFetchedRows:I

    iget-object v1, p0, Lcom/mysql/jdbc/RowDataCursor;->fetchedRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveRowRelative(I)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataCursor;->notSupported()V

    .line 328
    return-void
.end method

.method public next()Lcom/mysql/jdbc/ResultSetRow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 338
    iget-object v1, p0, Lcom/mysql/jdbc/RowDataCursor;->fetchedRows:Ljava/util/List;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/mysql/jdbc/RowDataCursor;->currentPositionInEntireResult:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 339
    const-string v0, "ResultSet.Operation_not_allowed_after_ResultSet_closed_144"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/RowDataCursor;->mysql:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/RowDataCursor;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 364
    :cond_1
    :goto_0
    return-object v0

    .line 347
    :cond_2
    iget v1, p0, Lcom/mysql/jdbc/RowDataCursor;->currentPositionInEntireResult:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mysql/jdbc/RowDataCursor;->currentPositionInEntireResult:I

    .line 348
    iget v1, p0, Lcom/mysql/jdbc/RowDataCursor;->currentPositionInFetchedRows:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mysql/jdbc/RowDataCursor;->currentPositionInFetchedRows:I

    .line 351
    iget-object v1, p0, Lcom/mysql/jdbc/RowDataCursor;->fetchedRows:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mysql/jdbc/RowDataCursor;->fetchedRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataCursor;->fetchedRows:Ljava/util/List;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/mysql/jdbc/RowDataCursor;->currentPositionInFetchedRows:I

    iget-object v1, p0, Lcom/mysql/jdbc/RowDataCursor;->fetchedRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_5

    .line 356
    :cond_4
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataCursor;->fetchMoreRows()V

    .line 357
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/RowDataCursor;->currentPositionInFetchedRows:I

    .line 360
    :cond_5
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataCursor;->fetchedRows:Ljava/util/List;

    iget v1, p0, Lcom/mysql/jdbc/RowDataCursor;->currentPositionInFetchedRows:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ResultSetRow;

    .line 362
    iget-object v1, p0, Lcom/mysql/jdbc/RowDataCursor;->metadata:[Lcom/mysql/jdbc/Field;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->setMetadata([Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetRow;

    goto :goto_0
.end method

.method protected nextRecord()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 431
    return-void
.end method

.method public removeRow(I)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataCursor;->notSupported()V

    .line 418
    return-void
.end method

.method public setCurrentRow(I)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataCursor;->notSupported()V

    .line 164
    return-void
.end method

.method public setMetadata([Lcom/mysql/jdbc/Field;)V
    .locals 0
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/mysql/jdbc/RowDataCursor;->metadata:[Lcom/mysql/jdbc/Field;

    .line 461
    return-void
.end method

.method public setOwner(Lcom/mysql/jdbc/ResultSetImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/mysql/jdbc/RowDataCursor;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    .line 444
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 426
    const/4 v0, -0x1

    return v0
.end method

.method public wasEmpty()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/mysql/jdbc/RowDataCursor;->wasEmpty:Z

    return v0
.end method
