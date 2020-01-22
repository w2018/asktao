.class public Lcom/mysql/jdbc/RowDataDynamic;
.super Ljava/lang/Object;
.source "RowDataDynamic.java"

# interfaces
.implements Lcom/mysql/jdbc/RowData;


# instance fields
.field private columnCount:I

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field private index:I

.field private io:Lcom/mysql/jdbc/MysqlIO;

.field private isAfterEnd:Z

.field private isBinaryEncoded:Z

.field private metadata:[Lcom/mysql/jdbc/Field;

.field private moreResultsExisted:Z

.field private nextRow:Lcom/mysql/jdbc/ResultSetRow;

.field private noMoreRows:Z

.field private owner:Lcom/mysql/jdbc/ResultSetImpl;

.field private streamerClosed:Z

.field private useBufferRowExplicit:Z

.field private wasEmpty:Z


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/MysqlIO;I[Lcom/mysql/jdbc/Field;Z)V
    .locals 2
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
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->index:I

    .line 44
    iput-boolean v1, p0, Lcom/mysql/jdbc/RowDataDynamic;->isAfterEnd:Z

    .line 46
    iput-boolean v1, p0, Lcom/mysql/jdbc/RowDataDynamic;->noMoreRows:Z

    .line 48
    iput-boolean v1, p0, Lcom/mysql/jdbc/RowDataDynamic;->isBinaryEncoded:Z

    .line 54
    iput-boolean v1, p0, Lcom/mysql/jdbc/RowDataDynamic;->streamerClosed:Z

    .line 56
    iput-boolean v1, p0, Lcom/mysql/jdbc/RowDataDynamic;->wasEmpty:Z

    .line 79
    iput-object p1, p0, Lcom/mysql/jdbc/RowDataDynamic;->io:Lcom/mysql/jdbc/MysqlIO;

    .line 80
    iput p2, p0, Lcom/mysql/jdbc/RowDataDynamic;->columnCount:I

    .line 81
    iput-boolean p4, p0, Lcom/mysql/jdbc/RowDataDynamic;->isBinaryEncoded:Z

    .line 82
    iput-object p3, p0, Lcom/mysql/jdbc/RowDataDynamic;->metadata:[Lcom/mysql/jdbc/Field;

    .line 83
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 84
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->metadata:[Lcom/mysql/jdbc/Field;

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlIO;->useBufferRowExplicit([Lcom/mysql/jdbc/Field;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->useBufferRowExplicit:Z

    .line 85
    return-void
.end method

.method private nextRecord()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 373
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->noMoreRows:Z

    if-nez v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->io:Lcom/mysql/jdbc/MysqlIO;

    iget-object v1, p0, Lcom/mysql/jdbc/RowDataDynamic;->metadata:[Lcom/mysql/jdbc/Field;

    iget v2, p0, Lcom/mysql/jdbc/RowDataDynamic;->columnCount:I

    iget-boolean v3, p0, Lcom/mysql/jdbc/RowDataDynamic;->isBinaryEncoded:Z

    const/16 v4, 0x3ef

    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/mysql/jdbc/RowDataDynamic;->useBufferRowExplicit:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/mysql/jdbc/MysqlIO;->nextRow([Lcom/mysql/jdbc/Field;IZIZZZLcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->nextRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 377
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->nextRow:Lcom/mysql/jdbc/ResultSetRow;

    if-nez v0, :cond_0

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->noMoreRows:Z

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->isAfterEnd:Z

    .line 380
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->io:Lcom/mysql/jdbc/MysqlIO;

    iget-object v1, p0, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/MysqlIO;->tackOnMoreStreamingResults(Lcom/mysql/jdbc/ResultSetImpl;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->moreResultsExisted:Z

    .line 382
    iget v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->wasEmpty:Z

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->nextRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->isAfterEnd:Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 390
    :catch_0
    move-exception v1

    .line 391
    instance-of v0, v1, Lcom/mysql/jdbc/StreamingNotifiable;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 392
    check-cast v0, Lcom/mysql/jdbc/StreamingNotifiable;

    invoke-interface {v0}, Lcom/mysql/jdbc/StreamingNotifiable;->setWasStreamingResults()V

    .line 396
    :cond_2
    iput-boolean v9, p0, Lcom/mysql/jdbc/RowDataDynamic;->noMoreRows:Z

    .line 399
    throw v1

    .line 400
    :catch_1
    move-exception v0

    .line 401
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 402
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "RowDataDynamic.7"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/mysql/jdbc/Util;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RowDataDynamic.8"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "RowDataDynamic.9"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1000"

    iget-object v3, p0, Lcom/mysql/jdbc/RowDataDynamic;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 410
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 412
    throw v1
.end method

.method private notSupported()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 417
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
    .line 96
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    .line 97
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
    .line 106
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    .line 107
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
    .line 116
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    .line 117
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
    .line 126
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    .line 127
    return-void
.end method

.method public close()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 140
    const/4 v2, 0x0

    .line 142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    if-eqz v3, :cond_a

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v2, v2, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 145
    if-eqz v2, :cond_9

    .line 146
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v2

    move-object/from16 v18, v3

    .line 150
    :goto_0
    const/4 v3, 0x0

    .line 151
    const/4 v2, 0x0

    .line 153
    monitor-enter v18

    :cond_0
    move/from16 v17, v2

    move v6, v3

    .line 155
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/RowDataDynamic;->next()Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 156
    const/4 v3, 0x1

    .line 157
    add-int/lit8 v2, v17, 0x1

    .line 159
    rem-int/lit8 v5, v2, 0x64

    if-nez v5, :cond_0

    .line 160
    invoke-static {}, Ljava/lang/Thread;->yield()V

    move/from16 v17, v2

    move v6, v3

    goto :goto_1

    .line 164
    :cond_1
    if-eqz v4, :cond_4

    .line 165
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getClobberStreamingResults()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getNetTimeoutForStreamingResults()I

    move-result v2

    if-lez v2, :cond_3

    .line 166
    const-string v2, "net_write_timeout"

    invoke-interface {v4, v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    .line 169
    :cond_2
    const-string v2, "60"

    move-object v5, v2

    .line 172
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/RowDataDynamic;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    const/4 v3, 0x0

    .line 177
    :try_start_1
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v3

    .line 178
    move-object v0, v3

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    move-object v2, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SET net_write_timeout="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/mysql/jdbc/StatementImpl;->executeSimpleNonQuery(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    if-eqz v3, :cond_3

    .line 181
    :try_start_2
    invoke-interface {v3}, Ljava/sql/Statement;->close()V

    .line 186
    :cond_3
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getUseUsageAdvisor()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 187
    if-eqz v6, :cond_4

    .line 189
    invoke-static {v4}, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->getInstance(Lcom/mysql/jdbc/MySQLConnection;)Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v19

    .line 191
    new-instance v2, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v3, 0x0

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v5, v5, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v5, :cond_6

    const-string v5, "N/A"

    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    iget-wide v6, v6, Lcom/mysql/jdbc/ResultSetImpl;->connectionId:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v8, v8, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v8, :cond_7

    const/4 v8, -0x1

    :goto_4
    const/4 v9, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    sget-object v14, Lcom/mysql/jdbc/Constants;->MILLIS_I18N:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RowDataDynamic.2"

    invoke-static/range {v21 .. v21}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, "RowDataDynamic.3"

    invoke-static/range {v20 .. v20}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, "RowDataDynamic.4"

    invoke-static/range {v20 .. v20}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, "RowDataDynamic.5"

    invoke-static/range {v20 .. v20}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, "RowDataDynamic.6"

    invoke-static/range {v20 .. v20}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mysql/jdbc/ResultSetImpl;->pointOfOrigin:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v2 .. v17}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 201
    :cond_4
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 203
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mysql/jdbc/RowDataDynamic;->metadata:[Lcom/mysql/jdbc/Field;

    .line 204
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    .line 205
    return-void

    .line 180
    :catchall_0
    move-exception v2

    if-eqz v3, :cond_5

    .line 181
    :try_start_3
    invoke-interface {v3}, Ljava/sql/Statement;->close()V

    .line 180
    :cond_5
    throw v2

    .line 201
    :catchall_1
    move-exception v2

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 191
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v5, v5, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    iget-object v5, v5, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v8, v8, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v8}, Lcom/mysql/jdbc/StatementImpl;->getId()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v8

    goto/16 :goto_4

    :cond_8
    move-object v5, v2

    goto/16 :goto_2

    :cond_9
    move-object v4, v2

    move-object/from16 v18, p0

    goto/16 :goto_0

    :cond_a
    move-object v4, v2

    move-object/from16 v18, p0

    goto/16 :goto_0
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
    .line 217
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    .line 219
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
    .line 230
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    .line 232
    const/4 v0, -0x1

    return v0
.end method

.method public getOwner()Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    return-object v0
.end method

.method public hasNext()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 250
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->nextRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v0, :cond_1

    move v0, v1

    .line 252
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/mysql/jdbc/RowDataDynamic;->streamerClosed:Z

    if-nez v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/mysql/jdbc/RowDataDynamic;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v2, p0}, Lcom/mysql/jdbc/MysqlIO;->closeStreamer(Lcom/mysql/jdbc/RowData;)V

    .line 254
    iput-boolean v1, p0, Lcom/mysql/jdbc/RowDataDynamic;->streamerClosed:Z

    .line 257
    :cond_0
    return v0

    .line 250
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAfterLast()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->isAfterEnd:Z

    return v0
.end method

.method public isBeforeFirst()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 279
    iget v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->index:I

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
    .line 291
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
    .line 302
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public isFirst()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public isLast()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    .line 330
    const/4 v0, 0x0

    return v0
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
    .line 342
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    .line 343
    return-void
.end method

.method public next()Lcom/mysql/jdbc/ResultSetRow;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->nextRecord()V

    .line 356
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->nextRow:Lcom/mysql/jdbc/ResultSetRow;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->streamerClosed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->moreResultsExisted:Z

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0, p0}, Lcom/mysql/jdbc/MysqlIO;->closeStreamer(Lcom/mysql/jdbc/RowData;)V

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->streamerClosed:Z

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->nextRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v0, :cond_1

    .line 362
    iget v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->index:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 363
    iget v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->index:I

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->nextRow:Lcom/mysql/jdbc/ResultSetRow;

    return-object v0
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
    .line 429
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    .line 430
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
    .line 441
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    .line 442
    return-void
.end method

.method public setMetadata([Lcom/mysql/jdbc/Field;)V
    .locals 0
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/mysql/jdbc/RowDataDynamic;->metadata:[Lcom/mysql/jdbc/Field;

    .line 466
    return-void
.end method

.method public setOwner(Lcom/mysql/jdbc/ResultSetImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    .line 449
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 457
    const/4 v0, -0x1

    return v0
.end method

.method public wasEmpty()Z
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->wasEmpty:Z

    return v0
.end method
