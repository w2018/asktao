.class public Lcom/mysql/jdbc/ResultSetImpl;
.super Ljava/lang/Object;
.source "ResultSetImpl.java"

# interfaces
.implements Lcom/mysql/jdbc/ResultSetInternalMethods;


# static fields
.field static final EMPTY_SPACE:[C

.field private static final JDBC_4_RS_4_ARG_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static final JDBC_4_RS_5_ARG_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static final JDBC_4_UPD_RS_5_ARG_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field protected static final MAX_DIFF_PREC:D

.field protected static final MIN_DIFF_PREC:D

.field static resultCounter:I


# instance fields
.field protected catalog:Ljava/lang/String;

.field protected columnLabelToIndex:Ljava/util/Map;
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

.field protected columnNameToIndex:Ljava/util/Map;
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

.field protected columnToIndexCache:Ljava/util/Map;
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

.field protected columnUsed:[Z

.field protected volatile connection:Lcom/mysql/jdbc/MySQLConnection;

.field protected connectionId:J

.field protected currentRow:I

.field protected doingUpdates:Z

.field protected eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field fastClientCal:Ljava/util/Calendar;

.field fastDefaultCal:Ljava/util/Calendar;

.field protected fetchDirection:I

.field protected fetchSize:I

.field protected fields:[Lcom/mysql/jdbc/Field;

.field protected firstCharOfQuery:C

.field protected fullColumnNameToIndex:Ljava/util/Map;
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

.field protected gmtCalendar:Ljava/util/Calendar;

.field protected hasBuiltIndexMapping:Z

.field private invalidRowReason:Ljava/lang/String;

.field protected isBinaryEncoded:Z

.field protected isClosed:Z

.field private jdbcCompliantTruncationForReads:Z

.field protected nextResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

.field protected onInsertRow:Z

.field private onValidRow:Z

.field protected owningStatement:Lcom/mysql/jdbc/StatementImpl;

.field private padCharsWithSpace:Z

.field protected pointOfOrigin:Ljava/lang/String;

.field protected profileSql:Z

.field protected reallyResult:Z

.field protected resultId:I

.field protected resultSetConcurrency:I

.field protected resultSetType:I

.field protected retainOwningStatement:Z

.field protected rowData:Lcom/mysql/jdbc/RowData;

.field protected serverInfo:Ljava/lang/String;

.field private serverTimeZoneTz:Ljava/util/TimeZone;

.field statementUsedForFetchingRows:Lcom/mysql/jdbc/PreparedStatement;

.field protected thisRow:Lcom/mysql/jdbc/ResultSetRow;

.field protected updateCount:J

.field protected updateId:J

.field private useColumnNamesInFindColumn:Z

.field protected useFastDateParsing:Z

.field private useFastIntParsing:Z

.field protected useLegacyDatetimeCode:Z

.field private useStrictFloatingPoint:Z

.field protected useUsageAdvisor:Z

.field protected warningChain:Ljava/sql/SQLWarning;

.field protected wasNullFlag:Z

.field protected wrapperStatement:Ljava/sql/Statement;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 106
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    :try_start_0
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.mysql.jdbc.JDBC42ResultSet"

    .line 109
    :goto_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Lcom/mysql/jdbc/StatementImpl;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_RS_4_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 111
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, [Lcom/mysql/jdbc/Field;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Lcom/mysql/jdbc/RowData;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Lcom/mysql/jdbc/StatementImpl;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_RS_5_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 114
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.mysql.jdbc.JDBC42UpdatableResultSet"

    .line 115
    :goto_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, [Lcom/mysql/jdbc/Field;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Lcom/mysql/jdbc/RowData;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Lcom/mysql/jdbc/StatementImpl;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_UPD_RS_5_ARG_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 134
    :goto_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    sub-double/2addr v1, v3

    sput-wide v1, Lcom/mysql/jdbc/ResultSetImpl;->MIN_DIFF_PREC:D

    .line 139
    const v1, 0x7f7fffff

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    const v3, 0x7f7fffff

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    sub-double/2addr v1, v3

    sput-wide v1, Lcom/mysql/jdbc/ResultSetImpl;->MAX_DIFF_PREC:D

    .line 142
    sput v6, Lcom/mysql/jdbc/ResultSetImpl;->resultCounter:I

    .line 306
    const/16 v1, 0xff

    new-array v1, v1, [C

    sput-object v1, Lcom/mysql/jdbc/ResultSetImpl;->EMPTY_SPACE:[C

    .line 309
    :goto_3
    sget-object v1, Lcom/mysql/jdbc/ResultSetImpl;->EMPTY_SPACE:[C

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 310
    sget-object v1, Lcom/mysql/jdbc/ResultSetImpl;->EMPTY_SPACE:[C

    const/16 v2, 0x20

    aput-char v2, v1, v0

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 108
    :cond_0
    :try_start_1
    const-string v1, "com.mysql.jdbc.JDBC4ResultSet"

    goto/16 :goto_0

    .line 114
    :cond_1
    const-string v1, "com.mysql.jdbc.JDBC4UpdatableResultSet"
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 119
    :catch_1
    move-exception v0

    .line 120
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 121
    :catch_2
    move-exception v0

    .line 122
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 125
    :cond_2
    const/4 v1, 0x0

    sput-object v1, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_RS_4_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 126
    const/4 v1, 0x0

    sput-object v1, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_RS_5_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 127
    const/4 v1, 0x0

    sput-object v1, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_UPD_RS_5_ARG_CTOR:Ljava/lang/reflect/Constructor;

    goto :goto_2

    .line 312
    :cond_3
    return-void
.end method

.method public constructor <init>(JJLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->catalog:Ljava/lang/String;

    .line 165
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    .line 171
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnToIndexCache:Ljava/util/Map;

    .line 174
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnUsed:[Z

    .line 179
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connectionId:J

    .line 182
    const/4 v0, -0x1

    iput v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->currentRow:I

    .line 185
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 187
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 189
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastDefaultCal:Ljava/util/Calendar;

    .line 190
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastClientCal:Ljava/util/Calendar;

    .line 193
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fetchDirection:I

    .line 196
    iput v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fetchSize:I

    .line 208
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    .line 210
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnNameToIndex:Ljava/util/Map;

    .line 212
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->hasBuiltIndexMapping:Z

    .line 217
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    .line 220
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->isClosed:Z

    .line 222
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->nextResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 225
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 236
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->profileSql:Z

    .line 241
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult:Z

    .line 247
    iput v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->resultSetConcurrency:I

    .line 250
    iput v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->resultSetType:I

    .line 258
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->serverInfo:Ljava/lang/String;

    .line 263
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 277
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateId:J

    .line 279
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->useStrictFloatingPoint:Z

    .line 281
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    .line 284
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    .line 287
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 293
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->gmtCalendar:Ljava/util/Calendar;

    .line 295
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastDateParsing:Z

    .line 297
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->padCharsWithSpace:Z

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastIntParsing:Z

    .line 794
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->onValidRow:Z

    .line 795
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->invalidRowReason:Ljava/lang/String;

    .line 361
    iput-wide p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateCount:J

    .line 362
    iput-wide p3, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateId:J

    .line 363
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult:Z

    .line 364
    new-array v0, v2, [Lcom/mysql/jdbc/Field;

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    .line 366
    iput-object p5, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 367
    iput-object p6, p0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    .line 369
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->retainOwningStatement:Z

    .line 371
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 374
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getRetainStatementAfterResultSetClose()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->retainOwningStatement:Z

    .line 376
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connectionId:J

    .line 377
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->serverTimeZoneTz:Ljava/util/TimeZone;

    .line 378
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getPadCharsWithSpace()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->padCharsWithSpace:Z

    .line 380
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseLegacyDatetimeCode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    .line 382
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V
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
    const-wide/16 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->catalog:Ljava/lang/String;

    .line 165
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    .line 171
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnToIndexCache:Ljava/util/Map;

    .line 174
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnUsed:[Z

    .line 179
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connectionId:J

    .line 182
    const/4 v0, -0x1

    iput v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->currentRow:I

    .line 185
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 187
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 189
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastDefaultCal:Ljava/util/Calendar;

    .line 190
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastClientCal:Ljava/util/Calendar;

    .line 193
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fetchDirection:I

    .line 196
    iput v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fetchSize:I

    .line 208
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    .line 210
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnNameToIndex:Ljava/util/Map;

    .line 212
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->hasBuiltIndexMapping:Z

    .line 217
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    .line 220
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->isClosed:Z

    .line 222
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->nextResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 225
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 236
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->profileSql:Z

    .line 241
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult:Z

    .line 247
    iput v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->resultSetConcurrency:I

    .line 250
    iput v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->resultSetType:I

    .line 258
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->serverInfo:Ljava/lang/String;

    .line 263
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 277
    iput-wide v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateId:J

    .line 279
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->useStrictFloatingPoint:Z

    .line 281
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    .line 284
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    .line 287
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 293
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->gmtCalendar:Ljava/util/Calendar;

    .line 295
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastDateParsing:Z

    .line 297
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->padCharsWithSpace:Z

    .line 301
    iput-boolean v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastIntParsing:Z

    .line 794
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->onValidRow:Z

    .line 795
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->invalidRowReason:Ljava/lang/String;

    .line 401
    iput-object p4, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 403
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->retainOwningStatement:Z

    .line 405
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 407
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getStrictFloatingPoint()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useStrictFloatingPoint:Z

    .line 408
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connectionId:J

    .line 409
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseFastDateParsing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastDateParsing:Z

    .line 410
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getProfileSql()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->profileSql:Z

    .line 411
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getRetainStatementAfterResultSetClose()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->retainOwningStatement:Z

    .line 412
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getJdbcCompliantTruncationForReads()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    .line 413
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseFastIntParsing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastIntParsing:Z

    .line 414
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->serverTimeZoneTz:Ljava/util/TimeZone;

    .line 415
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getPadCharsWithSpace()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->padCharsWithSpace:Z

    .line 418
    :cond_0
    iput-object p5, p0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    .line 420
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->catalog:Ljava/lang/String;

    .line 422
    iput-object p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    .line 423
    iput-object p3, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    .line 424
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateCount:J

    .line 430
    iput-boolean v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult:Z

    .line 433
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 434
    iget-wide v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateCount:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-nez v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->close()V

    .line 437
    iput-wide v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateCount:J

    .line 444
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0, p0}, Lcom/mysql/jdbc/RowData;->setOwner(Lcom/mysql/jdbc/ResultSetImpl;)V

    .line 446
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    if-eqz v0, :cond_2

    .line 447
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->initializeWithMetadata()V

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseLegacyDatetimeCode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    .line 451
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseColumnNamesInFindColumn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useColumnNamesInFindColumn:Z

    .line 453
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 454
    return-void

    .line 441
    :cond_3
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    goto :goto_0
.end method

.method public static arraysEqual([B[B)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2998
    if-nez p0, :cond_2

    .line 2999
    if-nez p1, :cond_1

    :goto_0
    move v1, v0

    .line 3012
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 2999
    goto :goto_0

    .line 3001
    :cond_2
    if-eqz p1, :cond_0

    .line 3004
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_0

    move v2, v1

    .line 3007
    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 3008
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    if-ne v3, v4, :cond_0

    .line 3007
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v1, v0

    .line 3012
    goto :goto_1
.end method

.method private byteArrayToBoolean(I)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1603
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v1

    .line 1605
    if-nez v1, :cond_1

    .line 1606
    iput-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 1625
    :cond_0
    :goto_0
    return v2

    .line 1611
    :cond_1
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    move-object v0, v1

    .line 1613
    check-cast v0, [B

    check-cast v0, [B

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 1617
    check-cast v1, [B

    check-cast v1, [B

    aget-byte v0, v1, v2

    .line 1619
    const/16 v1, 0x31

    if-ne v0, v1, :cond_2

    move v2, v3

    .line 1620
    goto :goto_0

    .line 1621
    :cond_2
    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    .line 1625
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-lez v0, :cond_4

    :cond_3
    move v0, v3

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private checkForIntegerTruncation(I[BI)V
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
    .line 6355
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v0, :cond_4

    .line 6356
    const/high16 v0, -0x8000

    if-eq p3, v0, :cond_0

    const v0, 0x7fffffff

    if-ne p3, v0, :cond_4

    .line 6357
    :cond_0
    const/4 v1, 0x0

    .line 6359
    if-nez p2, :cond_1

    .line 6360
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v0, p1, v1, v2}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v1

    .line 6363
    :cond_1
    if-nez v1, :cond_5

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 6365
    const-wide/32 v4, -0x80000000

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 6366
    :cond_2
    if-nez v1, :cond_3

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v1

    :cond_3
    add-int/lit8 v0, p1, 0x1

    const/4 v2, 0x4

    invoke-direct {p0, v1, v0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 6370
    :cond_4
    return-void

    :cond_5
    move-object v0, v1

    .line 6363
    goto :goto_0
.end method

.method private checkForLongTruncation(I[BJ)V
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
    .line 6430
    const-wide/high16 v0, -0x8000

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p3, v0

    if-nez v0, :cond_4

    .line 6431
    :cond_0
    const/4 v1, 0x0

    .line 6433
    if-nez p2, :cond_1

    .line 6434
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v0, p1, v1, v2}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v1

    .line 6437
    :cond_1
    if-nez v1, :cond_5

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 6439
    const-wide/high16 v4, -0x3c20

    cmpg-double v0, v2, v4

    if-ltz v0, :cond_2

    const-wide/high16 v4, 0x43e0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_4

    .line 6440
    :cond_2
    if-nez v1, :cond_3

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v1

    :cond_3
    add-int/lit8 v0, p1, 0x1

    const/4 v2, -0x5

    invoke-direct {p0, v1, v0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 6443
    :cond_4
    return-void

    :cond_5
    move-object v0, v1

    .line 6437
    goto :goto_0
.end method

.method protected static convertLongToUlong(J)Ljava/math/BigInteger;
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 148
    new-array v0, v5, [B

    .line 149
    const/4 v1, 0x7

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 150
    const/4 v1, 0x6

    ushr-long v2, p0, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 151
    const/4 v1, 0x5

    const/16 v2, 0x10

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 152
    const/4 v1, 0x4

    const/16 v2, 0x18

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 153
    const/4 v1, 0x3

    const/16 v2, 0x20

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 154
    const/4 v1, 0x2

    const/16 v2, 0x28

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 155
    const/16 v1, 0x30

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 156
    const/4 v1, 0x0

    const/16 v2, 0x38

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 158
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method private convertToZeroLiteralStringWithEmptyCheck()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 865
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEmptyStringsConvertToZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    const-string v0, "0"

    return-object v0

    .line 869
    :cond_0
    const-string v0, "Can\'t convert empty string (\'\') to numeric"

    const-string v1, "22018"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private convertToZeroWithEmptyCheck()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 855
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEmptyStringsConvertToZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    const/4 v0, 0x0

    return v0

    .line 859
    :cond_0
    const-string v0, "Can\'t convert empty string (\'\') to numeric"

    const-string v1, "22018"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private extractStringFromNativeColumn(II)Ljava/lang/String;
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

    .line 930
    add-int/lit8 v0, p1, -0x1

    .line 932
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 934
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 935
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 937
    const/4 v0, 0x0

    .line 944
    :goto_0
    return-object v0

    .line 940
    :cond_0
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 942
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 944
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1, v2, v0, v3}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final getBigDecimalFromString(Ljava/lang/String;II)Ljava/math/BigDecimal;
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
    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1348
    if-eqz p1, :cond_4

    .line 1349
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 1350
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroLiteralStringWithEmptyCheck()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1353
    :try_start_0
    invoke-virtual {v2, p3}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1404
    :goto_0
    return-object v0

    .line 1354
    :catch_0
    move-exception v3

    .line 1356
    const/4 v3, 0x4

    :try_start_1
    invoke-virtual {v2, p3, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 1357
    :catch_1
    move-exception v2

    .line 1358
    new-instance v2, Ljava/sql/SQLException;

    const-string v3, "ResultSet.Bad_format_for_BigDecimal"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-direct {v2, v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1367
    :cond_0
    :try_start_2
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;
    :try_end_2
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v0

    goto :goto_0

    .line 1368
    :catch_2
    move-exception v2

    .line 1370
    :try_start_3
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v2, p3, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;
    :try_end_3
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    goto :goto_0

    .line 1371
    :catch_3
    move-exception v2

    .line 1372
    :try_start_4
    new-instance v2, Ljava/sql/SQLException;

    const-string v3, "ResultSet.Bad_format_for_BigDecimal"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "S1009"

    invoke-direct {v2, v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1377
    :catch_4
    move-exception v2

    .line 1378
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v3, p2, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    .line 1379
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v2

    .line 1382
    :try_start_5
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-virtual {v4, p3}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;
    :try_end_5
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v0

    goto :goto_0

    .line 1383
    :catch_5
    move-exception v4

    .line 1385
    :try_start_6
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    const/4 v2, 0x4

    invoke-virtual {v4, p3, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;
    :try_end_6
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v0

    goto :goto_0

    .line 1386
    :catch_6
    move-exception v2

    .line 1387
    new-instance v2, Ljava/sql/SQLException;

    const-string v3, "ResultSet.Bad_format_for_BigDecimal"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-direct {v2, v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1394
    :cond_1
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v3, p2, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    if-ne v2, v0, :cond_3

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getTinyInt1isBit()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v3, p2, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getLength()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1396
    new-instance v2, Ljava/math/BigDecimal;

    const-string v3, "true"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v2, p3}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 1399
    :cond_3
    new-instance v2, Ljava/sql/SQLException;

    const-string v3, "ResultSet.Bad_format_for_BigDecimal"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-direct {v2, v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1404
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private final getBooleanFromString(Ljava/lang/String;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1638
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1639
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 1641
    const/16 v2, 0x74

    if-eq v1, v2, :cond_0

    const/16 v2, 0x79

    if-eq v1, v2, :cond_0

    const/16 v2, 0x31

    if-eq v1, v2, :cond_0

    const-string v1, "-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1644
    :cond_1
    return v0
.end method

.method private final getByteFromString(Ljava/lang/String;I)B
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1683
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1684
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v0

    int-to-byte v0, v0

    .line 1723
    :goto_0
    return v0

    .line 1694
    :cond_0
    if-nez p1, :cond_1

    .line 1695
    const/4 v0, 0x0

    goto :goto_0

    .line 1698
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1701
    :try_start_0
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1703
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 1704
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 1706
    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v3, :cond_3

    .line 1707
    const-wide/high16 v3, -0x3fa0

    cmpg-double v3, v1, v3

    if-ltz v3, :cond_2

    const-wide v3, 0x405fc00000000000L

    cmpl-double v3, v1, v3

    if-lez v3, :cond_3

    .line 1708
    :cond_2
    const/4 v3, -0x6

    invoke-direct {p0, v0, p2, v3}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 1712
    :cond_3
    double-to-int v0, v1

    int-to-byte v0, v0

    goto :goto_0

    .line 1715
    :cond_4
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1717
    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v3, :cond_6

    .line 1718
    const-wide/16 v3, -0x80

    cmp-long v3, v1, v3

    if-ltz v3, :cond_5

    const-wide/16 v3, 0x7f

    cmp-long v3, v1, v3

    if-lez v3, :cond_6

    .line 1719
    :cond_5
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x6

    invoke-direct {p0, v3, p2, v4}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1723
    :cond_6
    long-to-int v0, v1

    int-to-byte v0, v0

    goto :goto_0

    .line 1724
    :catch_0
    move-exception v1

    .line 1725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultSet.Value____173"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ResultSet.___is_out_of_range_[-127,127]_174"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private final getBytesFromString(Ljava/lang/String;)[B
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1784
    if-eqz p1, :cond_0

    .line 1785
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v3

    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v0

    .line 1789
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final getCharacterStreamFromString(Ljava/lang/String;)Ljava/io/Reader;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1882
    if-eqz p1, :cond_0

    .line 1883
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 1886
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final getClobFromString(Ljava/lang/String;)Ljava/sql/Clob;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1930
    new-instance v0, Lcom/mysql/jdbc/Clob;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/mysql/jdbc/Clob;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0
.end method

.method private final getDateFromString(Ljava/lang/String;ILjava/util/Calendar;)Ljava/sql/Date;
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
    const/16 v2, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2069
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2071
    if-nez p1, :cond_0

    .line 2072
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2074
    const/4 v0, 0x0

    .line 2212
    :goto_0
    return-object v0

    .line 2084
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2087
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2088
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 2089
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2092
    :cond_1
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0000-00-00"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0000-00-00 00:00:00"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "00000000000000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2095
    :cond_2
    const-string v0, "convertToNull"

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2096
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2098
    const/4 v0, 0x0

    goto :goto_0

    .line 2099
    :cond_3
    const-string v0, "exception"

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' can not be represented as java.sql.Date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2213
    :catch_0
    move-exception v0

    .line 2214
    throw v0

    .line 2105
    :cond_4
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p0, p3, v0, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    goto/16 :goto_0

    .line 2107
    :cond_5
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p2, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    .line 2109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2166
    :pswitch_0
    const-string v0, "ResultSet.Bad_format_for_Date"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2215
    :catch_1
    move-exception v0

    .line 2216
    const-string v1, "ResultSet.Bad_format_for_Date"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 2220
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2222
    throw v1

    .line 2112
    :pswitch_1
    const/4 v0, 0x0

    const/4 v1, 0x4

    :try_start_2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2113
    const/4 v1, 0x5

    const/4 v2, 0x7

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2114
    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2116
    invoke-virtual {p0, p3, v0, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    goto/16 :goto_0

    .line 2121
    :pswitch_2
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2122
    const/4 v1, 0x4

    const/4 v2, 0x6

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2123
    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2125
    invoke-virtual {p0, p3, v0, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    goto/16 :goto_0

    .line 2131
    :pswitch_3
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2133
    const/16 v1, 0x45

    if-gt v0, v1, :cond_6

    .line 2134
    add-int/lit8 v0, v0, 0x64

    .line 2137
    :cond_6
    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2138
    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2140
    add-int/lit16 v0, v0, 0x76c

    invoke-virtual {p0, p3, v0, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    goto/16 :goto_0

    .line 2144
    :pswitch_4
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2146
    const/16 v1, 0x45

    if-gt v0, v1, :cond_7

    .line 2147
    add-int/lit8 v0, v0, 0x64

    .line 2150
    :cond_7
    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2152
    add-int/lit16 v0, v0, 0x76c

    const/4 v2, 0x1

    invoke-virtual {p0, p3, v0, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    goto/16 :goto_0

    .line 2156
    :pswitch_5
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2158
    const/16 v1, 0x45

    if-gt v0, v1, :cond_8

    .line 2159
    add-int/lit8 v0, v0, 0x64

    .line 2162
    :cond_8
    add-int/lit16 v0, v0, 0x76c

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, p3, v0, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    goto/16 :goto_0

    .line 2170
    :cond_9
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p2, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_d

    .line 2172
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v6, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_c

    .line 2173
    :cond_a
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2175
    const/16 v1, 0x45

    if-gt v0, v1, :cond_b

    .line 2176
    add-int/lit8 v0, v0, 0x64

    .line 2179
    :cond_b
    add-int/lit16 v0, v0, 0x76c

    .line 2184
    :goto_1
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, p3, v0, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    goto/16 :goto_0

    .line 2181
    :cond_c
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2185
    :cond_d
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p2, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_e

    .line 2186
    const/16 v0, 0x7b2

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, p3, v0, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    goto/16 :goto_0

    .line 2188
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_10

    .line 2189
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_f

    .line 2190
    const/16 v0, 0x7b2

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, p3, v0, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    goto/16 :goto_0

    .line 2193
    :cond_f
    const-string v0, "ResultSet.Bad_format_for_Date"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2198
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_11

    .line 2199
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2200
    const/4 v0, 0x5

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2201
    const/16 v0, 0x8

    const/16 v3, 0xa

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2212
    :goto_2
    invoke-virtual {p0, p3, v2, v1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    goto/16 :goto_0

    .line 2204
    :cond_11
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "- "

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2207
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2208
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    goto :goto_2

    .line 2109
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getDefaultTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 2227
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->serverTimeZoneTz:Ljava/util/TimeZone;

    goto :goto_0
.end method

.method private final getDoubleFromString(Ljava/lang/String;I)D
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2259
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getDoubleInternal(Ljava/lang/String;I)D

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized getFastClientCalendar()Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 508
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastClientCal:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 509
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastClientCal:Ljava/util/Calendar;

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastClientCal:Ljava/util/Calendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getFastDefaultCalendar()Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 500
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastDefaultCal:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastDefaultCal:Ljava/util/Calendar;

    .line 502
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastDefaultCal:Ljava/util/Calendar;

    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastDefaultCal:Ljava/util/Calendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final getFloatFromString(Ljava/lang/String;I)F
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2418
    if-eqz p1, :cond_6

    .line 2419
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2420
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v0

    int-to-float v0, v0

    .line 2453
    :cond_0
    :goto_0
    return v0

    .line 2423
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 2425
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v1, :cond_0

    .line 2426
    const/4 v1, 0x1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    const v1, 0x7f7fffff

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 2427
    :cond_2
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 2431
    const-wide/high16 v3, 0x36a0

    sget-wide v5, Lcom/mysql/jdbc/ResultSetImpl;->MIN_DIFF_PREC:D

    sub-double/2addr v3, v5

    cmpg-double v3, v1, v3

    if-ltz v3, :cond_3

    const-wide v3, 0x47efffffe0000000L

    sget-wide v5, Lcom/mysql/jdbc/ResultSetImpl;->MAX_DIFF_PREC:D

    sub-double/2addr v3, v5

    cmpl-double v3, v1, v3

    if-lez v3, :cond_0

    .line 2432
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {p0, v1, p2, v2}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2441
    :catch_0
    move-exception v0

    .line 2443
    :try_start_1
    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 2444
    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v0

    .line 2446
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v2, :cond_0

    .line 2448
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v2, :cond_4

    const/high16 v2, -0x80

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_5

    :cond_4
    const/high16 v2, 0x7f80

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    .line 2449
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {p0, v1, p2, v2}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2454
    :catch_1
    move-exception v0

    .line 2458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultSet.Invalid_value_for_getFloat()_-____200"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ResultSet.___in_column__201"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2440
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method protected static getInstance(JJLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)Lcom/mysql/jdbc/ResultSetImpl;
    .locals 7
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
    .line 315
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcom/mysql/jdbc/ResultSetImpl;

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ResultSetImpl;-><init>(JJLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    .line 319
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_RS_4_ARG_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    invoke-interface {p4}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ResultSetImpl;

    goto :goto_0
.end method

.method protected static getInstance(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;Z)Lcom/mysql/jdbc/ResultSetImpl;
    .locals 7
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
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 333
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_1

    .line 334
    if-nez p5, :cond_0

    .line 335
    new-instance v0, Lcom/mysql/jdbc/ResultSetImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;-><init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    .line 346
    :goto_0
    return-object v0

    .line 338
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/UpdatableResultSet;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/UpdatableResultSet;-><init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    goto :goto_0

    .line 341
    :cond_1
    if-nez p5, :cond_2

    .line 342
    sget-object v0, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_RS_5_ARG_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    aput-object p3, v1, v5

    aput-object p4, v1, v6

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ResultSetImpl;

    goto :goto_0

    .line 346
    :cond_2
    sget-object v0, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_UPD_RS_5_ARG_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    aput-object p3, v1, v5

    aput-object p4, v1, v6

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ResultSetImpl;

    goto :goto_0
.end method

.method private final getIntFromString(Ljava/lang/String;I)I
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const-wide v7, 0x41dfffffffc00000L

    const-wide/high16 v5, -0x3e20

    const/4 v1, -0x1

    .line 2575
    if-eqz p1, :cond_9

    .line 2577
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2578
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v0

    .line 2630
    :cond_0
    :goto_0
    return v0

    .line 2581
    :cond_1
    const-string v0, "e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_6

    const-string v0, "E"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_6

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 2589
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2591
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2593
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v1, :cond_0

    .line 2594
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_2

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 2595
    :cond_2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 2597
    const-wide/32 v3, -0x80000000

    cmp-long v3, v1, v3

    if-ltz v3, :cond_3

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 2598
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p0, v1, p2, v2}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2620
    :catch_0
    move-exception v0

    .line 2622
    :try_start_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 2624
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v2, :cond_5

    .line 2625
    cmpg-double v2, v0, v5

    if-ltz v2, :cond_4

    cmpl-double v2, v0, v7

    if-lez v2, :cond_5

    .line 2626
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {p0, v2, p2, v3}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2630
    :cond_5
    double-to-int v0, v0

    goto :goto_0

    .line 2608
    :cond_6
    :try_start_2
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 2610
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v2, :cond_8

    .line 2611
    cmpg-double v2, v0, v5

    if-ltz v2, :cond_7

    cmpl-double v2, v0, v7

    if-lez v2, :cond_8

    .line 2612
    :cond_7
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {p0, v2, p2, v3}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2616
    :cond_8
    double-to-int v0, v0

    goto :goto_0

    .line 2619
    :cond_9
    const/4 v0, 0x0

    goto :goto_0

    .line 2631
    :catch_1
    move-exception v0

    .line 2635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultSet.Invalid_value_for_getInt()_-____206"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ResultSet.___in_column__207"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private getIntWithOverflowCheck(I)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6347
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetRow;->getInt(I)I

    move-result v0

    .line 6349
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->checkForIntegerTruncation(I[BI)V

    .line 6351
    return v0
.end method

.method private getLong(IZ)J
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    const-wide/16 v0, 0x0

    .line 2657
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 2658
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 2660
    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v3, :cond_7

    .line 2661
    add-int/lit8 v3, p1, -0x1

    .line 2663
    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v4, v3}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2664
    iput-boolean v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2729
    :cond_0
    :goto_0
    return-wide v0

    .line 2667
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2669
    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_2

    .line 2670
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v0

    goto :goto_0

    .line 2673
    :cond_2
    iget-boolean v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastIntParsing:Z

    if-eqz v4, :cond_4

    .line 2674
    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v4, v3}, Lcom/mysql/jdbc/ResultSetRow;->length(I)J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_3

    .line 2675
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 2678
    :cond_3
    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v4, v3}, Lcom/mysql/jdbc/ResultSetRow;->isFloatingPointNumber(I)Z

    move-result v4

    .line 2680
    if-nez v4, :cond_4

    .line 2682
    :try_start_0
    invoke-direct {p0, v3, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getLongWithOverflowCheck(IZ)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 2683
    :catch_0
    move-exception v0

    .line 2685
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v0, v3, v1, v2}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/mysql/jdbc/ResultSetImpl;->parseLongAsDouble(ILjava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    goto :goto_0

    .line 2687
    :catch_1
    move-exception v0

    .line 2691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultSet.Invalid_value_for_getLong()_-____79"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1, v3, v2, v4}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2701
    :cond_4
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 2702
    if-eqz v2, :cond_0

    .line 2706
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 2707
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v0

    int-to-long v0, v0

    goto/16 :goto_0

    .line 2710
    :cond_5
    const-string v0, "e"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_6

    const-string v0, "E"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_6

    .line 2711
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0, v2, p2}, Lcom/mysql/jdbc/ResultSetImpl;->parseLongWithOverflowCheck(I[BLjava/lang/String;Z)J

    move-result-wide v0

    goto/16 :goto_0

    .line 2715
    :cond_6
    invoke-direct {p0, v3, v2}, Lcom/mysql/jdbc/ResultSetImpl;->parseLongAsDouble(ILjava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-wide v0

    goto/16 :goto_0

    .line 2717
    :catch_2
    move-exception v0

    move-object v0, v2

    .line 2719
    :goto_1
    :try_start_4
    invoke-direct {p0, v3, v0}, Lcom/mysql/jdbc/ResultSetImpl;->parseLongAsDouble(ILjava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-wide v0

    goto/16 :goto_0

    .line 2720
    :catch_3
    move-exception v1

    .line 2724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultSet.Invalid_value_for_getLong()_-____79"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

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

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2729
    :cond_7
    invoke-virtual {p0, p1, p2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(IZZ)J

    move-result-wide v0

    goto/16 :goto_0

    .line 2717
    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method private final getLongFromString(Ljava/lang/String;I)J
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 2743
    if-eqz p1, :cond_2

    .line 2745
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 2746
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v0

    int-to-long v0, v0

    .line 2761
    :goto_0
    return-wide v0

    .line 2749
    :cond_0
    const-string v0, "e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "E"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 2750
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, p1, v1}, Lcom/mysql/jdbc/ResultSetImpl;->parseLongWithOverflowCheck(I[BLjava/lang/String;Z)J

    move-result-wide v0

    goto :goto_0

    .line 2754
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/mysql/jdbc/ResultSetImpl;->parseLongAsDouble(ILjava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 2757
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2758
    :catch_0
    move-exception v0

    .line 2761
    :try_start_1
    invoke-direct {p0, p2, p1}, Lcom/mysql/jdbc/ResultSetImpl;->parseLongAsDouble(ILjava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    goto :goto_0

    .line 2762
    :catch_1
    move-exception v0

    .line 2766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultSet.Invalid_value_for_getLong()_-____211"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ResultSet.___in_column__212"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private getLongWithOverflowCheck(IZ)J
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6389
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetRow;->getLong(I)J

    move-result-wide v0

    .line 6391
    if-eqz p2, :cond_0

    .line 6392
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->checkForLongTruncation(I[BJ)V

    .line 6395
    :cond_0
    return-wide v0
.end method

.method private getNativeConvertToString(ILcom/mysql/jdbc/Field;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 3276
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3278
    :try_start_0
    invoke-virtual {p2}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v0

    .line 3279
    invoke-virtual {p2}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v3

    .line 3281
    sparse-switch v0, :sswitch_data_0

    .line 3560
    invoke-direct {p0, p1, v3}, Lcom/mysql/jdbc/ResultSetImpl;->extractStringFromNativeColumn(II)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    :goto_0
    return-object v0

    .line 3283
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    goto :goto_0

    .line 3562
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3285
    :sswitch_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBoolean(I)Z

    move-result v0

    .line 3287
    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v3, :cond_0

    .line 3288
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 3291
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    goto :goto_0

    .line 3294
    :sswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeByte(IZ)B

    move-result v0

    .line 3296
    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v3, :cond_1

    .line 3297
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 3300
    :cond_1
    invoke-virtual {p2}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-eqz v1, :cond_2

    if-ltz v0, :cond_3

    .line 3301
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    goto :goto_0

    .line 3304
    :cond_3
    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 3306
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    goto :goto_0

    .line 3310
    :sswitch_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(IZ)I

    move-result v0

    .line 3312
    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v3, :cond_4

    .line 3313
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 3316
    :cond_4
    invoke-virtual {p2}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-eqz v1, :cond_5

    if-ltz v0, :cond_6

    .line 3317
    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    goto :goto_0

    .line 3320
    :cond_6
    const v1, 0xffff

    and-int/2addr v0, v1

    .line 3322
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    goto :goto_0

    .line 3325
    :sswitch_4
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(IZ)I

    move-result v0

    .line 3327
    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v3, :cond_7

    .line 3328
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 3331
    :cond_7
    invoke-virtual {p2}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-eqz v1, :cond_8

    if-gez v0, :cond_8

    invoke-virtual {p2}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_9

    .line 3333
    :cond_8
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    goto/16 :goto_0

    .line 3336
    :cond_9
    int-to-long v0, v0

    const-wide v3, 0xffffffffL

    and-long/2addr v0, v3

    .line 3338
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    goto/16 :goto_0

    .line 3342
    :sswitch_5
    invoke-virtual {p2}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3343
    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v0, v3}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(IZZ)J

    move-result-wide v3

    .line 3345
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v0, :cond_a

    .line 3346
    monitor-exit v2

    move-object v0, v1

    goto/16 :goto_0

    .line 3349
    :cond_a
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    goto/16 :goto_0

    .line 3352
    :cond_b
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v0, v3}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(IZZ)J

    move-result-wide v3

    .line 3354
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v0, :cond_c

    .line 3355
    monitor-exit v2

    move-object v0, v1

    goto/16 :goto_0

    .line 3358
    :cond_c
    invoke-static {v3, v4}, Lcom/mysql/jdbc/ResultSetImpl;->convertLongToUlong(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    goto/16 :goto_0

    .line 3360
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeFloat(I)F

    move-result v0

    .line 3362
    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v3, :cond_d

    .line 3363
    monitor-exit v2

    move-object v0, v1

    goto/16 :goto_0

    .line 3366
    :cond_d
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    goto/16 :goto_0

    .line 3370
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDouble(I)D

    move-result-wide v3

    .line 3372
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v0, :cond_e

    .line 3373
    monitor-exit v2

    move-object v0, v1

    goto/16 :goto_0

    .line 3376
    :cond_e
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    goto/16 :goto_0

    .line 3380
    :sswitch_8
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object v0

    .line 3384
    if-eqz v0, :cond_10

    .line 3385
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3387
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 3388
    new-instance v0, Ljava/math/BigDecimal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 3390
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 3394
    :cond_f
    :try_start_2
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3401
    :try_start_3
    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    goto/16 :goto_0

    .line 3395
    :catch_0
    move-exception v1

    .line 3396
    const-string v1, "ResultSet.Bad_format_for_BigDecimal"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3404
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3406
    monitor-exit v2

    move-object v0, v1

    goto/16 :goto_0

    .line 3412
    :sswitch_9
    invoke-direct {p0, p1, v3}, Lcom/mysql/jdbc/ResultSetImpl;->extractStringFromNativeColumn(II)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    goto/16 :goto_0

    .line 3417
    :sswitch_a
    invoke-virtual {p2}, Lcom/mysql/jdbc/Field;->isBlob()Z

    move-result v0

    if-nez v0, :cond_11

    .line 3418
    invoke-direct {p0, p1, v3}, Lcom/mysql/jdbc/ResultSetImpl;->extractStringFromNativeColumn(II)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    goto/16 :goto_0

    .line 3419
    :cond_11
    invoke-virtual {p2}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result v0

    if-nez v0, :cond_12

    .line 3420
    invoke-direct {p0, p1, v3}, Lcom/mysql/jdbc/ResultSetImpl;->extractStringFromNativeColumn(II)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    goto/16 :goto_0

    .line 3422
    :cond_12
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object v1

    .line 3425
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoDeserialize()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3426
    if-eqz v1, :cond_13

    array-length v0, v1

    if-lt v0, v4, :cond_13

    .line 3427
    const/4 v0, 0x0

    aget-byte v0, v1, v0

    const/16 v3, -0x54

    if-ne v0, v3, :cond_24

    const/4 v0, 0x1

    aget-byte v0, v1, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v3, -0x13

    if-ne v0, v3, :cond_24

    .line 3430
    :try_start_4
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3431
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3432
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 3433
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 3434
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3443
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    goto/16 :goto_0

    .line 3435
    :catch_1
    move-exception v0

    .line 3436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResultSet.Class_not_found___91"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ResultSet._while_reading_serialized_object_92"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3438
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 3439
    goto :goto_1

    .line 3447
    :cond_13
    invoke-direct {p0, p1, v3}, Lcom/mysql/jdbc/ResultSetImpl;->extractStringFromNativeColumn(II)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    goto/16 :goto_0

    .line 3453
    :sswitch_b
    const/16 v0, 0xd

    if-ne v3, v0, :cond_18

    .line 3454
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result v0

    .line 3456
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v3

    if-nez v3, :cond_15

    .line 3458
    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v3, :cond_14

    .line 3459
    monitor-exit v2

    move-object v0, v1

    goto/16 :goto_0

    .line 3462
    :cond_14
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    goto/16 :goto_0

    .line 3465
    :cond_15
    invoke-virtual {p2}, Lcom/mysql/jdbc/Field;->getLength()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    cmp-long v1, v3, v5

    if-nez v1, :cond_17

    .line 3467
    const/16 v1, 0x45

    if-gt v0, v1, :cond_16

    .line 3468
    add-int/lit8 v0, v0, 0x64

    int-to-short v0, v0

    .line 3471
    :cond_16
    add-int/lit16 v0, v0, 0x76c

    int-to-short v0, v0

    .line 3474
    :cond_17
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v0, v3, v4}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/sql/Date;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    goto/16 :goto_0

    .line 3478
    :cond_18
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNoDatetimeStringSync()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3479
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBytes(IZ)[B

    move-result-object v0

    .line 3481
    if-nez v0, :cond_19

    .line 3482
    monitor-exit v2

    move-object v0, v1

    goto/16 :goto_0

    .line 3485
    :cond_19
    array-length v3, v0

    if-nez v3, :cond_1a

    .line 3489
    const-string v0, "0000-00-00"

    monitor-exit v2

    goto/16 :goto_0

    .line 3492
    :cond_1a
    const/4 v3, 0x0

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    .line 3493
    const/4 v4, 0x2

    aget-byte v4, v0, v4

    .line 3494
    const/4 v5, 0x3

    aget-byte v0, v0, v5

    .line 3496
    if-nez v3, :cond_1b

    if-nez v4, :cond_1b

    if-nez v0, :cond_1b

    .line 3497
    const-string v0, "0000-00-00"

    monitor-exit v2

    goto/16 :goto_0

    .line 3501
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDate(I)Ljava/sql/Date;

    move-result-object v0

    .line 3503
    if-nez v0, :cond_1c

    .line 3504
    monitor-exit v2

    move-object v0, v1

    goto/16 :goto_0

    .line 3507
    :cond_1c
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    goto/16 :goto_0

    .line 3510
    :sswitch_c
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, p1, v0, v3, v4}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeTime(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v0

    .line 3512
    if-nez v0, :cond_1d

    .line 3513
    monitor-exit v2

    move-object v0, v1

    goto/16 :goto_0

    .line 3516
    :cond_1d
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    goto/16 :goto_0

    .line 3519
    :sswitch_d
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNoDatetimeStringSync()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3520
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBytes(IZ)[B

    move-result-object v0

    .line 3522
    if-nez v0, :cond_1e

    .line 3523
    monitor-exit v2

    move-object v0, v1

    goto/16 :goto_0

    .line 3526
    :cond_1e
    array-length v4, v0

    if-nez v4, :cond_1f

    .line 3530
    const-string v0, "0000-00-00 00:00:00"

    monitor-exit v2

    goto/16 :goto_0

    .line 3533
    :cond_1f
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    .line 3534
    const/4 v5, 0x2

    aget-byte v5, v0, v5

    .line 3535
    const/4 v6, 0x3

    aget-byte v0, v0, v6

    .line 3537
    if-nez v4, :cond_20

    if-nez v5, :cond_20

    if-nez v0, :cond_20

    .line 3538
    const-string v0, "0000-00-00 00:00:00"

    monitor-exit v2

    goto/16 :goto_0

    .line 3542
    :cond_20
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, p1, v0, v4, v5}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeTimestamp(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v0

    .line 3544
    if-nez v0, :cond_21

    .line 3545
    monitor-exit v2

    move-object v0, v1

    goto/16 :goto_0

    .line 3548
    :cond_21
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3550
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNoDatetimeStringSync()Z

    move-result v1

    if-nez v1, :cond_22

    .line 3551
    monitor-exit v2

    goto/16 :goto_0

    .line 3554
    :cond_22
    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3555
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    goto/16 :goto_0

    .line 3557
    :cond_23
    invoke-direct {p0, p1, v3}, Lcom/mysql/jdbc/ResultSetImpl;->extractStringFromNativeColumn(II)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_24
    move-object v0, v1

    goto/16 :goto_1

    .line 3281
    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_0
        -0x6 -> :sswitch_2
        -0x5 -> :sswitch_5
        -0x4 -> :sswitch_a
        -0x3 -> :sswitch_a
        -0x2 -> :sswitch_a
        -0x1 -> :sswitch_9
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x3 -> :sswitch_8
        0x4 -> :sswitch_4
        0x5 -> :sswitch_3
        0x6 -> :sswitch_7
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0xc -> :sswitch_9
        0x10 -> :sswitch_1
        0x5b -> :sswitch_b
        0x5c -> :sswitch_c
        0x5d -> :sswitch_d
    .end sparse-switch
.end method

.method private getNativeTime(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Time;
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
    const/4 v9, 0x0

    .line 4254
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 4255
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 4257
    add-int/lit8 v1, p1, -0x1

    .line 4259
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v4

    .line 4263
    const/16 v0, 0xb

    if-ne v4, v0, :cond_0

    .line 4264
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/ResultSetRow;->getNativeTime(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;

    move-result-object v0

    .line 4275
    :goto_0
    if-nez v0, :cond_1

    .line 4277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    move-object v0, v9

    .line 4284
    :goto_1
    return-object v0

    .line 4267
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    const/16 v3, 0x5c

    iget-object v7, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v2, v9

    move-object v5, p3

    move v6, p4

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/mysql/jdbc/ResultSetRow;->getNativeDateTimeValue(ILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Time;

    goto :goto_0

    .line 4282
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    goto :goto_1
.end method

.method private getNativeTimestamp(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;
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
    const/4 v9, 0x0

    .line 4299
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 4300
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 4302
    add-int/lit8 v1, p1, -0x1

    .line 4306
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v4

    .line 4308
    sparse-switch v4, :sswitch_data_0

    .line 4316
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    const/16 v3, 0x5d

    iget-object v7, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v2, v9

    move-object v5, p3

    move v6, p4

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/mysql/jdbc/ResultSetRow;->getNativeDateTimeValue(ILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Timestamp;

    .line 4325
    :goto_0
    if-nez v0, :cond_0

    .line 4327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    move-object v0, v9

    .line 4334
    :goto_1
    return-object v0

    .line 4311
    :sswitch_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/ResultSetRow;->getNativeTimestamp(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;

    move-result-object v0

    goto :goto_0

    .line 4332
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    goto :goto_1

    .line 4308
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method private getNumericRepresentationOfSQLBitType(I)J
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4928
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v1

    .line 4930
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v3, p1, -0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isSingleBit()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    check-cast v0, [B

    check-cast v0, [B

    array-length v0, v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 4931
    :cond_0
    check-cast v1, [B

    check-cast v1, [B

    aget-byte v0, v1, v2

    int-to-long v2, v0

    .line 4951
    :cond_1
    return-wide v2

    .line 4934
    :cond_2
    check-cast v1, [B

    check-cast v1, [B

    .line 4938
    array-length v0, v1

    new-array v5, v0, [J

    .line 4940
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    move v3, v2

    :goto_0
    if-ltz v0, :cond_3

    .line 4941
    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    int-to-long v6, v4

    shl-long/2addr v6, v3

    aput-wide v6, v5, v0

    .line 4942
    add-int/lit8 v3, v3, 0x8

    .line 4940
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4945
    :cond_3
    const-wide/16 v3, 0x0

    move v0, v2

    move-wide v8, v3

    move-wide v2, v8

    .line 4947
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 4948
    aget-wide v6, v5, v0

    or-long/2addr v2, v6

    .line 4947
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getObjectDeserializingIfNeeded(I)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4560
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    .line 4562
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isBlob()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4563
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object v1

    .line 4565
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoDeserialize()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4568
    if-eqz v1, :cond_4

    array-length v0, v1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_4

    .line 4569
    const/4 v0, 0x0

    aget-byte v0, v1, v0

    const/16 v2, -0x54

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    aget-byte v0, v1, v0

    const/16 v2, -0x13

    if-ne v0, v2, :cond_1

    .line 4572
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4573
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4574
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 4575
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 4576
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4594
    :goto_0
    return-object v0

    .line 4577
    :catch_0
    move-exception v0

    .line 4578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultSet.Class_not_found___91"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ResultSet._while_reading_serialized_object_92"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4580
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 4582
    goto :goto_0

    .line 4584
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 4591
    goto :goto_0

    .line 4594
    :cond_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private final getShortFromString(Ljava/lang/String;I)S
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 5064
    if-eqz p1, :cond_2

    .line 5066
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 5067
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v0

    int-to-short v0, v0

    .line 5081
    :goto_0
    return v0

    .line 5070
    :cond_0
    const-string v0, "e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "E"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 5071
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->parseShortWithOverflowCheck(I[BLjava/lang/String;)S

    move-result v0

    goto :goto_0

    .line 5075
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/mysql/jdbc/ResultSetImpl;->parseShortAsDouble(ILjava/lang/String;)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 5078
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 5079
    :catch_0
    move-exception v0

    .line 5081
    :try_start_1
    invoke-direct {p0, p2, p1}, Lcom/mysql/jdbc/ResultSetImpl;->parseShortAsDouble(ILjava/lang/String;)S
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 5082
    :catch_1
    move-exception v0

    .line 5086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultSet.Invalid_value_for_getShort()_-____217"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ResultSet.___in_column__218"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private getStringForClob(I)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5181
    const/4 v0, 0x0

    .line 5183
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getClobCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    .line 5185
    if-nez v2, :cond_2

    .line 5186
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_1

    .line 5187
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5210
    :cond_0
    :goto_0
    return-object v0

    .line 5189
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5195
    :cond_2
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v1, :cond_3

    .line 5196
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object v1

    .line 5201
    :goto_1
    if-eqz v1, :cond_0

    .line 5202
    invoke-static {v1, v2}, Lcom/mysql/jdbc/StringUtils;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5198
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBytes(IZ)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 5204
    :catch_0
    move-exception v0

    .line 5205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported character encoding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private getTimeFromString(Ljava/lang/String;Ljava/util/Calendar;ILjava/util/TimeZone;Z)Ljava/sql/Time;
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
    const/16 v6, 0x8

    const/4 v5, 0x5

    const/4 v0, 0x0

    .line 5400
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 5407
    if-nez p1, :cond_0

    .line 5408
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5410
    const/4 v0, 0x0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5525
    :goto_0
    return-object v0

    .line 5420
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 5423
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 5424
    const/4 v3, -0x1

    if-le v2, v3, :cond_c

    .line 5425
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 5428
    :goto_1
    const-string v1, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0000-00-00"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0000-00-00 00:00:00"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "00000000000000"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5430
    :cond_1
    const-string v0, "convertToNull"

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5433
    const/4 v0, 0x0

    :try_start_3
    monitor-exit v7

    goto :goto_0

    .line 5533
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 5434
    :cond_2
    :try_start_4
    const-string v0, "exception"

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' can not be represented as java.sql.Time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 5527
    :catch_0
    move-exception v0

    .line 5528
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 5529
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 5531
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5440
    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimeCreate(Ljava/util/Calendar;III)Ljava/sql/Time;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v0

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 5443
    :cond_4
    const/4 v1, 0x0

    :try_start_8
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5445
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v2, p3, -0x1

    aget-object v1, v1, v2

    .line 5447
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    const/4 v4, 0x7

    if-ne v2, v4, :cond_6

    .line 5449
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 5451
    sparse-switch v4, :sswitch_data_0

    .line 5478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultSet.Timestamp_too_small_to_convert_to_Time_value_in_column__257"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v2, p3, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 5454
    :sswitch_0
    add-int/lit8 v0, v4, -0x8

    add-int/lit8 v1, v4, -0x6

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5455
    add-int/lit8 v0, v4, -0x5

    add-int/lit8 v1, v4, -0x3

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5456
    add-int/lit8 v0, v4, -0x2

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5482
    :goto_2
    new-instance v3, Ljava/sql/SQLWarning;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ResultSet.Precision_lost_converting_TIMESTAMP_to_Time_with_getTime()_on_column__261"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v6, p3, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;)V

    .line 5486
    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    if-nez v4, :cond_5

    .line 5487
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    :goto_3
    move v3, v1

    move v4, v2

    move v2, v0

    .line 5523
    :goto_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v1

    .line 5525
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p0, v1, v4, v3, v2}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimeCreate(Ljava/util/Calendar;III)Ljava/sql/Time;

    move-result-object v3

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v4

    move-object v2, p2

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Time;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Time;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v0

    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 5462
    :sswitch_1
    add-int/lit8 v0, v4, -0x6

    add-int/lit8 v1, v4, -0x4

    :try_start_a
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5463
    add-int/lit8 v0, v4, -0x4

    add-int/lit8 v1, v4, -0x2

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5464
    add-int/lit8 v0, v4, -0x2

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 5470
    :sswitch_2
    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5471
    const/16 v1, 0x8

    const/16 v4, 0xa

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_2

    .line 5489
    :cond_5
    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    invoke-virtual {v4, v3}, Ljava/sql/SQLWarning;->setNextWarning(Ljava/sql/SQLWarning;)V

    goto :goto_3

    .line 5491
    :cond_6
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    const/16 v4, 0xc

    if-ne v2, v4, :cond_8

    .line 5492
    const/16 v0, 0xb

    const/16 v1, 0xd

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5493
    const/16 v0, 0xe

    const/16 v1, 0x10

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5494
    const/16 v0, 0x11

    const/16 v4, 0x13

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5496
    new-instance v3, Ljava/sql/SQLWarning;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ResultSet.Precision_lost_converting_DATETIME_to_Time_with_getTime()_on_column__264"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v6, p3, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;)V

    .line 5500
    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    if-nez v4, :cond_7

    .line 5501
    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    :goto_5
    move v3, v1

    move v4, v2

    move v2, v0

    .line 5505
    goto/16 :goto_4

    .line 5503
    :cond_7
    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    invoke-virtual {v4, v3}, Ljava/sql/SQLWarning;->setNextWarning(Ljava/sql/SQLWarning;)V

    goto :goto_5

    .line 5505
    :cond_8
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_9

    .line 5506
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimeCreate(Ljava/util/Calendar;III)Ljava/sql/Time;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    move-result-object v0

    :try_start_b
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 5510
    :cond_9
    :try_start_c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v5, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v6, :cond_a

    .line 5511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultSet.Bad_format_for_Time____267"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ResultSet.___in_column__268"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 5518
    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5519
    const/4 v1, 0x3

    const/4 v4, 0x5

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5520
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_b

    :goto_6
    move v3, v1

    move v4, v2

    move v2, v0

    goto/16 :goto_4

    :cond_b
    const/4 v0, 0x6

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    move-result v0

    goto :goto_6

    :cond_c
    move-object v3, v1

    goto/16 :goto_1

    .line 5451
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xc -> :sswitch_1
        0xe -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method private getTimeInternal(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Time;
    .locals 7
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

    .line 5551
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 5553
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-eqz v0, :cond_0

    .line 5554
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeTime(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v0

    .line 5575
    :goto_0
    return-object v0

    .line 5557
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastDateParsing:Z

    if-nez v0, :cond_1

    .line 5558
    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getStringInternal(IZ)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p1

    move-object v4, p3

    move v5, p4

    .line 5560
    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->getTimeFromString(Ljava/lang/String;Ljava/util/Calendar;ILjava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v0

    goto :goto_0

    .line 5563
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 5565
    add-int/lit8 v1, p1, -0x1

    .line 5567
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5570
    const/4 v0, 0x0

    goto :goto_0

    .line 5573
    :cond_2
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5575
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/ResultSetRow;->getTimeFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;

    move-result-object v0

    goto :goto_0
.end method

.method private getTimestampFromString(ILjava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;
    .locals 18
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
    .line 5646
    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5648
    if-nez p3, :cond_0

    .line 5649
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5651
    const/4 v1, 0x0

    .line 5877
    :goto_0
    return-object v1

    .line 5661
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 5663
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    .line 5665
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v2

    .line 5668
    :goto_1
    if-lez v4, :cond_5

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x30

    if-ne v1, v3, :cond_5

    const-string v1, "0000-00-00"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0000-00-00 00:00:00"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "00000000000000"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5671
    :cond_1
    const-string v1, "convertToNull"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5672
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5674
    const/4 v1, 0x0

    goto :goto_0

    .line 5665
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v2

    goto :goto_1

    .line 5675
    :cond_3
    const-string v1, "exception"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' can not be represented as java.sql.Timestamp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5881
    :catch_0
    move-exception v1

    .line 5882
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot convert value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' from column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to TIMESTAMP."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 5884
    invoke-virtual {v2, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 5886
    throw v2

    .line 5681
    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    :try_start_1
    invoke-virtual/range {v1 .. v9}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimestampCreate(Ljava/util/Calendar;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v1

    goto/16 :goto_0

    .line 5683
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v3, p1, -0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_7

    .line 5685
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v1, :cond_6

    .line 5686
    const/4 v1, 0x0

    const/4 v2, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p4

    invoke-static/range {v1 .. v8}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v1

    goto/16 :goto_0

    .line 5689
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x0

    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimestampCreate(Ljava/util/Calendar;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v5

    move-object v1, v10

    move-object/from16 v3, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v1

    goto/16 :goto_0

    .line 5699
    :cond_7
    const/4 v5, 0x0

    .line 5700
    const/4 v6, 0x0

    .line 5701
    const/4 v7, 0x0

    .line 5702
    const/4 v8, 0x0

    .line 5705
    const-string v1, "."

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 5707
    add-int/lit8 v1, v4, -0x1

    if-ne v3, v1, :cond_8

    .line 5709
    add-int/lit8 v1, v4, -0x1

    .line 5729
    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 5869
    :pswitch_0
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad format for Timestamp \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' in column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1009"

    invoke-direct {v1, v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 5711
    :cond_8
    const/4 v1, -0x1

    if-eq v3, v1, :cond_14

    .line 5713
    add-int/lit8 v1, v3, 0x2

    if-gt v1, v4, :cond_a

    .line 5714
    add-int/lit8 v1, v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5716
    add-int/lit8 v8, v3, 0x1

    sub-int/2addr v4, v8

    .line 5718
    const/16 v8, 0x9

    if-ge v4, v8, :cond_9

    .line 5719
    const-wide/high16 v8, 0x4024

    rsub-int/lit8 v4, v4, 0x9

    int-to-double v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v4, v8

    .line 5720
    mul-int/2addr v1, v4

    :cond_9
    move v8, v1

    move v1, v3

    .line 5724
    goto :goto_2

    .line 5725
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 5738
    :pswitch_1
    const/4 v1, 0x0

    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 5739
    const/4 v1, 0x5

    const/4 v3, 0x7

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5740
    const/16 v1, 0x8

    const/16 v4, 0xa

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 5741
    const/16 v1, 0xb

    const/16 v5, 0xd

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5742
    const/16 v1, 0xe

    const/16 v6, 0x10

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 5743
    const/16 v1, 0x11

    const/16 v7, 0x13

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 5873
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v1, :cond_13

    move-object/from16 v1, p4

    move v2, v11

    .line 5874
    invoke-static/range {v1 .. v8}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v1

    goto/16 :goto_0

    .line 5749
    :pswitch_2
    const/4 v1, 0x0

    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 5750
    const/4 v1, 0x4

    const/4 v3, 0x6

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5751
    const/4 v1, 0x6

    const/16 v4, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 5752
    const/16 v1, 0x8

    const/16 v5, 0xa

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5753
    const/16 v1, 0xa

    const/16 v6, 0xc

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 5754
    const/16 v1, 0xc

    const/16 v7, 0xe

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_3

    .line 5760
    :pswitch_3
    const/4 v1, 0x0

    const/4 v3, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5762
    const/16 v3, 0x45

    if-gt v1, v3, :cond_b

    .line 5763
    add-int/lit8 v1, v1, 0x64

    .line 5766
    :cond_b
    add-int/lit16 v11, v1, 0x76c

    .line 5768
    const/4 v1, 0x2

    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5769
    const/4 v1, 0x4

    const/4 v4, 0x6

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 5770
    const/4 v1, 0x6

    const/16 v5, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5771
    const/16 v1, 0x8

    const/16 v6, 0xa

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 5772
    const/16 v1, 0xa

    const/16 v7, 0xc

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_3

    .line 5778
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v3, p1, -0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_c

    const-string v1, "-"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_d

    .line 5779
    :cond_c
    const/4 v1, 0x0

    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 5780
    const/4 v1, 0x5

    const/4 v3, 0x7

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5781
    const/16 v1, 0x8

    const/16 v4, 0xa

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 5782
    const/4 v5, 0x0

    .line 5783
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 5785
    :cond_d
    const/4 v1, 0x0

    const/4 v3, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5787
    const/16 v3, 0x45

    if-gt v1, v3, :cond_e

    .line 5788
    add-int/lit8 v1, v1, 0x64

    .line 5791
    :cond_e
    const/4 v3, 0x2

    const/4 v4, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5792
    const/4 v4, 0x4

    const/4 v5, 0x6

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 5793
    const/4 v5, 0x6

    const/16 v6, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5794
    const/16 v6, 0x8

    const/16 v9, 0xa

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 5796
    add-int/lit16 v11, v1, 0x76c

    .line 5799
    goto/16 :goto_3

    .line 5803
    :pswitch_5
    const-string v1, ":"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_f

    .line 5804
    const/4 v1, 0x0

    const/4 v3, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5805
    const/4 v1, 0x3

    const/4 v3, 0x5

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 5806
    const/4 v1, 0x6

    const/16 v3, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 5807
    const/16 v11, 0x7b2

    .line 5808
    const/4 v3, 0x1

    .line 5809
    const/4 v4, 0x1

    .line 5810
    goto/16 :goto_3

    .line 5813
    :cond_f
    const/4 v1, 0x0

    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5814
    const/4 v3, 0x4

    const/4 v4, 0x6

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5815
    const/4 v4, 0x6

    const/16 v9, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 5817
    add-int/lit16 v11, v1, -0x76c

    .line 5818
    add-int/lit8 v3, v3, -0x1

    .line 5820
    goto/16 :goto_3

    .line 5824
    :pswitch_6
    const/4 v1, 0x0

    const/4 v3, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5826
    const/16 v3, 0x45

    if-gt v1, v3, :cond_10

    .line 5827
    add-int/lit8 v1, v1, 0x64

    .line 5830
    :cond_10
    add-int/lit16 v11, v1, 0x76c

    .line 5832
    const/4 v1, 0x2

    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5833
    const/4 v1, 0x4

    const/4 v4, 0x6

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_3

    .line 5839
    :pswitch_7
    const/4 v1, 0x0

    const/4 v3, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5841
    const/16 v3, 0x45

    if-gt v1, v3, :cond_11

    .line 5842
    add-int/lit8 v1, v1, 0x64

    .line 5845
    :cond_11
    add-int/lit16 v11, v1, 0x76c

    .line 5847
    const/4 v1, 0x2

    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5849
    const/4 v4, 0x1

    .line 5851
    goto/16 :goto_3

    .line 5855
    :pswitch_8
    const/4 v1, 0x0

    const/4 v3, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5857
    const/16 v3, 0x45

    if-gt v1, v3, :cond_12

    .line 5858
    add-int/lit8 v1, v1, 0x64

    .line 5861
    :cond_12
    add-int/lit16 v11, v1, 0x76c

    .line 5862
    const/4 v3, 0x1

    .line 5863
    const/4 v4, 0x1

    .line 5865
    goto/16 :goto_3

    .line 5877
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object/from16 v9, p0

    move-object v10, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimestampCreate(Ljava/util/Calendar;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v5

    move-object/from16 v3, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto/16 :goto_0

    :cond_14
    move v1, v4

    goto/16 :goto_2

    .line 5729
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getTimestampInternal(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;
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
    const/4 v7, 0x0

    .line 5906
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-eqz v0, :cond_0

    .line 5907
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeTimestamp(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v0

    .line 5930
    :goto_0
    return-object v0

    .line 5912
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastDateParsing:Z

    if-nez v0, :cond_1

    .line 5913
    invoke-virtual {p0, p1, v7}, Lcom/mysql/jdbc/ResultSetImpl;->getStringInternal(IZ)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 5915
    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestampFromString(ILjava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v0

    .line 5924
    :goto_1
    if-nez v0, :cond_2

    .line 5925
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    goto :goto_0

    .line 5917
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 5918
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 5919
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 5921
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    iget-object v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/ResultSetRow;->getTimestampFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;

    move-result-object v0

    goto :goto_1

    .line 5927
    :cond_2
    iput-boolean v7, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    goto :goto_0
.end method

.method private issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V
    .locals 19
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
    .line 6155
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17

    .line 6156
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    instance-of v1, v1, Lcom/mysql/jdbc/PreparedStatement;

    if-eqz v1, :cond_0

    .line 6159
    const-string v1, "ResultSet.CostlyConversionCreatedFromQuery"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    check-cast v1, Lcom/mysql/jdbc/PreparedStatement;

    iget-object v1, v1, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6161
    const-string v1, "\n\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6166
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 6168
    const/4 v1, 0x0

    :goto_1
    move-object/from16 v0, p5

    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 6169
    aget v3, p5, v1

    invoke-static {v3}, Lcom/mysql/jdbc/MysqlDefs;->typeToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6170
    const-string v3, "\n"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6168
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6163
    :cond_0
    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6185
    :catchall_0
    move-exception v1

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6173
    :cond_1
    :try_start_1
    const-string v8, "ResultSet.CostlyConversion"

    const/16 v1, 0x8

    new-array v9, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v9, v1

    const/4 v1, 0x1

    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v1

    const/4 v1, 0x2

    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v1

    const/4 v1, 0x3

    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v1

    const/4 v1, 0x4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    const/4 v10, 0x5

    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_2
    aput-object v1, v9, v10

    const/4 v1, 0x6

    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->typeToName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    const/4 v1, 0x7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    invoke-static {v8, v9}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 6181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/ResultSetImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-object/from16 v18, v0

    new-instance v1, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v2, 0x0

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v4, :cond_5

    const-string v4, "N/A"

    :goto_3
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/mysql/jdbc/ResultSetImpl;->connectionId:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v7, :cond_6

    const/4 v7, -0x1

    :goto_4
    move-object/from16 v0, p0

    iget v8, v0, Lcom/mysql/jdbc/ResultSetImpl;->resultId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    sget-object v13, Lcom/mysql/jdbc/Constants;->MILLIS_I18N:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mysql/jdbc/ResultSetImpl;->pointOfOrigin:Ljava/lang/String;

    invoke-direct/range {v1 .. v16}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 6185
    monitor-exit v17

    .line 6186
    return-void

    .line 6173
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v2

    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v3

    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->isBlob()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v4, 0x1

    :goto_5
    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->isOpaqueBinary()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/ResultSetMetaData;->getClassNameForJavaType(IZIZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    .line 6181
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    iget-object v4, v4, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v7}, Lcom/mysql/jdbc/StatementImpl;->getId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    goto :goto_4
.end method

.method private parseIntAsDouble(ILjava/lang/String;)I
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6331
    if-nez p2, :cond_0

    .line 6332
    const/4 v0, 0x0

    .line 6343
    :goto_0
    return v0

    .line 6335
    :cond_0
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 6337
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v2, :cond_2

    .line 6338
    const-wide/high16 v2, -0x3e20

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_1

    const-wide v2, 0x41dfffffffc00000L

    cmpl-double v2, v0, v2

    if-lez v2, :cond_2

    .line 6339
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {p0, v2, p1, v3}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 6343
    :cond_2
    double-to-int v0, v0

    goto :goto_0
.end method

.method private parseLongAsDouble(ILjava/lang/String;)J
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6373
    if-nez p2, :cond_0

    .line 6374
    const-wide/16 v0, 0x0

    .line 6385
    :goto_0
    return-wide v0

    .line 6377
    :cond_0
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 6379
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v2, :cond_2

    .line 6380
    const-wide/high16 v2, -0x3c20

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_1

    const-wide/high16 v2, 0x43e0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_2

    .line 6381
    :cond_1
    add-int/lit8 v2, p1, 0x1

    const/4 v3, -0x5

    invoke-direct {p0, p2, v2, v3}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 6385
    :cond_2
    double-to-long v0, v0

    goto :goto_0
.end method

.method private parseLongWithOverflowCheck(I[BLjava/lang/String;Z)J
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6403
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 6404
    const-wide/16 v0, 0x0

    .line 6426
    :cond_0
    :goto_0
    return-wide v0

    .line 6407
    :cond_1
    if-eqz p2, :cond_2

    .line 6408
    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->getLong([B)J

    move-result-wide v0

    .line 6422
    :goto_1
    if-eqz p4, :cond_0

    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v2, :cond_0

    .line 6423
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->checkForLongTruncation(I[BJ)V

    goto :goto_0

    .line 6417
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 6419
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1
.end method

.method private parseShortAsDouble(ILjava/lang/String;)S
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6446
    if-nez p2, :cond_0

    .line 6447
    const/4 v0, 0x0

    .line 6458
    :goto_0
    return v0

    .line 6450
    :cond_0
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 6452
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v2, :cond_2

    .line 6453
    const-wide/high16 v2, -0x3f20

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_1

    const-wide v2, 0x40dfffc000000000L

    cmpl-double v2, v0, v2

    if-lez v2, :cond_2

    .line 6454
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {p0, v2, p1, v3}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 6458
    :cond_2
    double-to-int v0, v0

    int-to-short v0, v0

    goto :goto_0
.end method

.method private parseShortWithOverflowCheck(I[BLjava/lang/String;)S
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6465
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 6466
    const/4 v0, 0x0

    .line 6494
    :cond_0
    :goto_0
    return v0

    .line 6469
    :cond_1
    if-eqz p2, :cond_5

    .line 6470
    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->getShort([B)S

    move-result v0

    .line 6484
    :goto_1
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v1, :cond_0

    .line 6485
    const/16 v1, -0x8000

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7fff

    if-ne v0, v1, :cond_0

    .line 6486
    :cond_2
    if-nez p3, :cond_6

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 6488
    const-wide/16 v3, -0x8000

    cmp-long v3, v1, v3

    if-ltz v3, :cond_3

    const-wide/16 v3, 0x7fff

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 6489
    :cond_3
    if-nez p3, :cond_4

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object p3

    :cond_4
    const/4 v1, 0x5

    invoke-direct {p0, p3, p1, v1}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    goto :goto_0

    .line 6479
    :cond_5
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 6481
    invoke-static {p3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    goto :goto_1

    :cond_6
    move-object v1, p3

    .line 6486
    goto :goto_2
.end method

.method private setRowPositionValidity()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 800
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->isDynamic()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 801
    const-string v0, "ResultSet.Illegal_operation_on_empty_result_set"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->invalidRowReason:Ljava/lang/String;

    .line 802
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onValidRow:Z

    .line 813
    :goto_0
    return-void

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->isBeforeFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    const-string v0, "ResultSet.Before_start_of_result_set_146"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->invalidRowReason:Ljava/lang/String;

    .line 805
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onValidRow:Z

    goto :goto_0

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 807
    const-string v0, "ResultSet.After_end_of_result_set_148"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->invalidRowReason:Ljava/lang/String;

    .line 808
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onValidRow:Z

    goto :goto_0

    .line 810
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->onValidRow:Z

    .line 811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->invalidRowReason:Ljava/lang/String;

    goto :goto_0
.end method

.method private throwRangeException(Ljava/lang/String;II)V
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
    .line 7032
    packed-switch p3, :pswitch_data_0

    .line 7058
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (JDBC type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7061
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in column \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is outside valid range for the datatype "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "22003"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 7034
    :pswitch_1
    const-string v0, "TINYINT"

    goto :goto_0

    .line 7037
    :pswitch_2
    const-string v0, "SMALLINT"

    goto :goto_0

    .line 7040
    :pswitch_3
    const-string v0, "INTEGER"

    goto :goto_0

    .line 7043
    :pswitch_4
    const-string v0, "BIGINT"

    goto :goto_0

    .line 7046
    :pswitch_5
    const-string v0, "REAL"

    goto :goto_0

    .line 7049
    :pswitch_6
    const-string v0, "FLOAT"

    goto :goto_0

    .line 7052
    :pswitch_7
    const-string v0, "DOUBLE"

    goto :goto_0

    .line 7055
    :pswitch_8
    const-string v0, "DECIMAL"

    goto :goto_0

    .line 7032
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public absolute(I)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 548
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v2

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 552
    :try_start_0
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v3}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 597
    :goto_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 599
    monitor-exit v2

    return v0

    .line 555
    :cond_0
    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    if-eqz v3, :cond_1

    .line 556
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 559
    :cond_1
    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    if-eqz v3, :cond_2

    .line 560
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 563
    :cond_2
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v3, :cond_3

    .line 564
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v3}, Lcom/mysql/jdbc/ResultSetRow;->closeOpenStreams()V

    .line 567
    :cond_3
    if-nez p1, :cond_4

    .line 568
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->beforeFirst()V

    goto :goto_0

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 570
    :cond_4
    if-ne p1, v1, :cond_5

    .line 571
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->first()Z

    move-result v0

    goto :goto_0

    .line 572
    :cond_5
    const/4 v3, -0x1

    if-ne p1, v3, :cond_6

    .line 573
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->last()Z

    move-result v0

    goto :goto_0

    .line 574
    :cond_6
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v3}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v3

    if-le p1, v3, :cond_7

    .line 575
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->afterLast()V

    goto :goto_0

    .line 578
    :cond_7
    if-gez p1, :cond_9

    .line 580
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v1

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    .line 582
    if-gtz v1, :cond_8

    .line 583
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->beforeFirst()V

    goto :goto_0

    .line 586
    :cond_8
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->absolute(I)Z

    move-result v0

    goto :goto_0

    .line 589
    :cond_9
    add-int/lit8 v0, p1, -0x1

    .line 590
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v3, v0}, Lcom/mysql/jdbc/RowData;->setCurrentRow(I)V

    .line 591
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v3, v0}, Lcom/mysql/jdbc/RowData;->getAt(I)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 592
    goto :goto_0
.end method

.method public afterLast()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 617
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    if-eqz v0, :cond_0

    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 621
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    if-eqz v0, :cond_1

    .line 622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v0, :cond_2

    .line 626
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ResultSetRow;->closeOpenStreams()V

    .line 629
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 630
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->afterLast()V

    .line 631
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 634
    :cond_3
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 635
    monitor-exit v1

    .line 636
    return-void

    .line 635
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public beforeFirst()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 652
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    if-eqz v0, :cond_0

    .line 653
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 656
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    if-eqz v0, :cond_1

    .line 657
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 661
    monitor-exit v1

    .line 673
    :goto_0
    return-void

    .line 664
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v0, :cond_3

    .line 665
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ResultSetRow;->closeOpenStreams()V

    .line 668
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->beforeFirst()V

    .line 669
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 671
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 672
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public buildIndexMapping()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 683
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length v0, v0

    .line 684
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    .line 685
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    .line 686
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnNameToIndex:Ljava/util/Map;

    .line 695
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 696
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 697
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v2

    .line 698
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 699
    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getFullName()Ljava/lang/String;

    move-result-object v4

    .line 701
    if-eqz v3, :cond_0

    .line 702
    iget-object v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    invoke-interface {v5, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    :cond_0
    if-eqz v4, :cond_1

    .line 706
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    :cond_1
    if-eqz v2, :cond_2

    .line 710
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnNameToIndex:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 715
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->hasBuiltIndexMapping:Z

    .line 716
    return-void
.end method

.method public cancelRowUpdates()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 730
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method protected final checkClosed()Lcom/mysql/jdbc/MySQLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 740
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 742
    if-nez v0, :cond_0

    .line 743
    const-string v0, "ResultSet.Operation_not_allowed_after_ResultSet_closed_144"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 747
    :cond_0
    return-object v0
.end method

.method protected final checkColumnBounds(I)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 760
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 761
    if-ge p1, v2, :cond_0

    .line 762
    :try_start_0
    const-string v0, "ResultSet.Column_Index_out_of_range_low"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 776
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 766
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 767
    const-string v0, "ResultSet.Column_Index_out_of_range_high"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 773
    :cond_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->profileSql:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_3

    .line 774
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnUsed:[Z

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 776
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 777
    return-void
.end method

.method protected checkRowPos()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 789
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->onValidRow:Z

    if-nez v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->invalidRowReason:Ljava/lang/String;

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 792
    :cond_0
    return-void
.end method

.method public declared-synchronized clearNextResult()V
    .locals 1

    .prologue
    .line 820
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->nextResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    monitor-exit p0

    return-void

    .line 820
    :catchall_0
    move-exception v0

    monitor-exit p0

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
    .line 831
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 832
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    .line 833
    monitor-exit v1

    .line 834
    return-void

    .line 833
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
    .line 851
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->realClose(Z)V

    .line 852
    return-void
.end method

.method public copy()Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 878
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->catalog:Ljava/lang/String;

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->getInstance(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;Z)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v0

    .line 879
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-eqz v1, :cond_0

    .line 880
    invoke-virtual {v0}, Lcom/mysql/jdbc/ResultSetImpl;->setBinaryEncoded()V

    .line 883
    :cond_0
    monitor-exit v6

    return-object v0

    .line 884
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteRow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 920
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method protected fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;
    .locals 7
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
    .line 948
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 951
    if-nez p1, :cond_4

    .line 952
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNoTimezoneConversionForDateType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getFastClientCalendar()Ljava/util/Calendar;

    move-result-object v2

    .line 959
    :goto_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v0, :cond_1

    .line 960
    invoke-static {p2, p3, p4, v2}, Lcom/mysql/jdbc/TimeUtil;->fastDateCreate(IIILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    monitor-exit v6

    .line 965
    :goto_1
    return-object v0

    .line 955
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getFastDefaultCalendar()Ljava/util/Calendar;

    move-result-object v2

    goto :goto_0

    .line 963
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNoTimezoneConversionForDateType()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseGmtMillisForDatetimes()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 965
    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getGmtCalendar()Ljava/util/Calendar;

    move-result-object v1

    :goto_3
    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/TimeUtil;->fastDateCreate(ZLjava/util/Calendar;Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    monitor-exit v6

    goto :goto_1

    .line 966
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 963
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 965
    goto :goto_3

    :cond_4
    move-object v2, p1

    goto :goto_0
.end method

.method protected fastTimeCreate(Ljava/util/Calendar;III)Ljava/sql/Time;
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
    .line 970
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 971
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v0, :cond_0

    .line 972
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {p2, p3, p4, p1, v0}, Lcom/mysql/jdbc/TimeUtil;->fastTimeCreate(IIILjava/util/Calendar;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/Time;

    move-result-object v0

    monitor-exit v1

    .line 979
    :goto_0
    return-object v0

    .line 975
    :cond_0
    if-nez p1, :cond_1

    .line 976
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getFastDefaultCalendar()Ljava/util/Calendar;

    move-result-object p1

    .line 979
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/mysql/jdbc/TimeUtil;->fastTimeCreate(Ljava/util/Calendar;IIILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/Time;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 980
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected fastTimestampCreate(Ljava/util/Calendar;IIIIIII)Ljava/sql/Timestamp;
    .locals 11
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
    .line 985
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 986
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v0, :cond_0

    .line 987
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v0

    monitor-exit v10

    .line 996
    :goto_0
    return-object v0

    .line 990
    :cond_0
    if-nez p1, :cond_2

    .line 991
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getFastDefaultCalendar()Ljava/util/Calendar;

    move-result-object v2

    .line 994
    :goto_1
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseGmtMillisForDatetimes()Z

    move-result v0

    .line 996
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getGmtCalendar()Ljava/util/Calendar;

    move-result-object v1

    :goto_2
    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(ZLjava/util/Calendar;Ljava/util/Calendar;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v0

    monitor-exit v10

    goto :goto_0

    .line 998
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 996
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    move-object v2, p1

    goto :goto_1
.end method

.method public findColumn(Ljava/lang/String;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1041
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1044
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->hasBuiltIndexMapping:Z

    if-nez v0, :cond_0

    .line 1045
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->buildIndexMapping()V

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnToIndexCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1050
    if-eqz v0, :cond_1

    .line 1051
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    monitor-exit v1

    .line 1076
    :goto_0
    return v0

    .line 1054
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1056
    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->useColumnNamesInFindColumn:Z

    if-eqz v2, :cond_2

    .line 1057
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnNameToIndex:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1060
    :cond_2
    if-nez v0, :cond_3

    .line 1061
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1064
    :cond_3
    if-eqz v0, :cond_4

    .line 1065
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnToIndexCache:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 1082
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1072
    :cond_4
    const/4 v0, 0x0

    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 1073
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1074
    add-int/lit8 v0, v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 1075
    :cond_5
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1076
    add-int/lit8 v0, v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 1072
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1080
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultSet.Column____112"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ResultSet.___not_found._113"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S0022"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public first()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1099
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1101
    const/4 v1, 0x1

    .line 1103
    :try_start_0
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v3}, Lcom/mysql/jdbc/RowData;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1119
    :goto_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 1121
    monitor-exit v2

    return v0

    .line 1107
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    if-eqz v0, :cond_1

    .line 1108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 1111
    :cond_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    if-eqz v0, :cond_2

    .line 1112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 1115
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->beforeFirst()V

    .line 1116
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->next()Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    move v0, v1

    goto :goto_0

    .line 1122
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getArray(I)Ljava/sql/Array;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1138
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 1140
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getArray(Ljava/lang/String;)Ljava/sql/Array;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1156
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getArray(I)Ljava/sql/Array;

    move-result-object v0

    return-object v0
.end method

.method public getAsciiStream(I)Ljava/io/InputStream;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1183
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 1185
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_0

    .line 1186
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 1189
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBinaryStream(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getAsciiStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1198
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getAsciiStream(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1215
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_2

    .line 1216
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1219
    if-eqz v1, :cond_1

    .line 1220
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1222
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroLiteralStringWithEmptyCheck()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1241
    :goto_0
    return-object v0

    .line 1228
    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1231
    :catch_0
    move-exception v0

    .line 1232
    const-string v0, "ResultSet.Bad_format_for_BigDecimal"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1238
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1241
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0
.end method

.method public getBigDecimal(II)Ljava/math/BigDecimal;
    .locals 7
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
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1262
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_3

    .line 1263
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1266
    if-eqz v1, :cond_2

    .line 1267
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1268
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroLiteralStringWithEmptyCheck()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1271
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1313
    :goto_0
    return-object v0

    .line 1272
    :catch_0
    move-exception v2

    .line 1274
    const/4 v2, 0x4

    :try_start_1
    invoke-virtual {v0, p2, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 1275
    :catch_1
    move-exception v0

    .line 1276
    const-string v0, "ResultSet.Bad_format_for_BigDecimal"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1284
    :cond_0
    :try_start_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1298
    :goto_1
    :try_start_3
    invoke-virtual {v0, p2}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;
    :try_end_3
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    goto :goto_0

    .line 1285
    :catch_2
    move-exception v0

    .line 1286
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v2, p1, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_1

    .line 1287
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v2

    .line 1289
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    goto :goto_1

    .line 1291
    :cond_1
    const-string v0, "ResultSet.Bad_format_for_BigDecimal"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1299
    :catch_3
    move-exception v2

    .line 1301
    const/4 v2, 0x4

    :try_start_4
    invoke-virtual {v0, p2, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;
    :try_end_4
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v0

    goto :goto_0

    .line 1302
    :catch_4
    move-exception v0

    .line 1303
    const-string v0, "ResultSet.Bad_format_for_BigDecimal"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1310
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1313
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1329
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getBigDecimal(Ljava/lang/String;I)Ljava/math/BigDecimal;
    .locals 1
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
    .line 1342
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryStream(I)Ljava/io/InputStream;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1425
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 1427
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_1

    .line 1428
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 1430
    add-int/lit8 v0, p1, -0x1

    .line 1432
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 1435
    const/4 v0, 0x0

    .line 1443
    :goto_0
    return-object v0

    .line 1438
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 1440
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->getBinaryInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 1443
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBinaryStream(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getBinaryStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1452
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
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
    .line 1467
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_3

    .line 1468
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 1470
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 1472
    add-int/lit8 v1, p1, -0x1

    .line 1474
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 1480
    :goto_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v0, :cond_1

    .line 1481
    const/4 v0, 0x0

    .line 1491
    :goto_1
    return-object v0

    .line 1477
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    goto :goto_0

    .line 1484
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEmulateLocators()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1485
    new-instance v0, Lcom/mysql/jdbc/Blob;

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v2, v1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/Blob;-><init>([BLcom/mysql/jdbc/ExceptionInterceptor;)V

    goto :goto_1

    .line 1488
    :cond_2
    new-instance v0, Lcom/mysql/jdbc/BlobFromLocator;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/mysql/jdbc/BlobFromLocator;-><init>(Lcom/mysql/jdbc/ResultSetImpl;ILcom/mysql/jdbc/ExceptionInterceptor;)V

    goto :goto_1

    .line 1491
    :cond_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBlob(I)Ljava/sql/Blob;

    move-result-object v0

    goto :goto_1
.end method

.method public getBlob(Ljava/lang/String;)Ljava/sql/Blob;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1506
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getBlob(I)Ljava/sql/Blob;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1522
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 1528
    add-int/lit8 v2, p1, -0x1

    .line 1530
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v3, v3, v2

    .line 1532
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_1

    .line 1533
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->byteArrayToBoolean(I)Z

    move-result v0

    .line 1598
    :cond_0
    :goto_0
    return v0

    .line 1536
    :cond_1
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 1538
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v4

    .line 1540
    packed-switch v4, :pswitch_data_0

    .line 1565
    :pswitch_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1567
    sparse-switch v4, :sswitch_data_0

    .line 1586
    :cond_2
    const/4 v0, -0x2

    if-eq v4, v0, :cond_3

    const/4 v0, -0x3

    if-eq v4, v0, :cond_3

    const/4 v0, -0x4

    if-eq v4, v0, :cond_3

    const/16 v0, 0x7d4

    if-ne v4, v0, :cond_7

    .line 1587
    :cond_3
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->byteArrayToBoolean(I)Z

    move-result v0

    goto :goto_0

    .line 1542
    :pswitch_1
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 1543
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1545
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getBooleanFromString(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1548
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(IZ)J

    move-result-wide v2

    .line 1550
    cmp-long v4, v2, v6

    if-eqz v4, :cond_5

    cmp-long v2, v2, v8

    if-lez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    .line 1561
    :pswitch_2
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(IZ)J

    move-result-wide v2

    .line 1563
    cmp-long v4, v2, v6

    if-eqz v4, :cond_6

    cmp-long v2, v2, v8

    if-lez v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    .line 1581
    :sswitch_0
    const-string v0, "Required type conversion not allowed"

    const-string v1, "22018"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1590
    :cond_7
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_8

    .line 1591
    const-string v1, "getBoolean()"

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v3

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v0, p1

    const/4 v0, 0x7

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    .line 1596
    :cond_8
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1598
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getBooleanFromString(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 1540
    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1567
    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_0
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_0
        0x46 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7d0 -> :sswitch_0
        0x7d2 -> :sswitch_0
        0x7d3 -> :sswitch_0
        0x7d4 -> :sswitch_0
        0x7d5 -> :sswitch_0
        0x7d6 -> :sswitch_0
    .end sparse-switch

    .line 1591
    :array_0
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1634
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getByte(I)B
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1659
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_2

    .line 1660
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1662
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 1663
    :cond_0
    const/4 v0, 0x0

    .line 1669
    :goto_0
    return v0

    .line 1666
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getByteFromString(Ljava/lang/String;I)B

    move-result v0

    goto :goto_0

    .line 1669
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeByte(I)B

    move-result v0

    goto :goto_0
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1678
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getByte(I)B

    move-result v0

    return v0
.end method

.method public getBytes(I)[B
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1747
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(IZ)[B

    move-result-object v0

    return-object v0
.end method

.method protected getBytes(IZ)[B
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1751
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_2

    .line 1752
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 1754
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 1756
    add-int/lit8 v0, p1, -0x1

    .line 1758
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1759
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 1764
    :goto_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v1, :cond_1

    .line 1765
    const/4 v0, 0x0

    .line 1771
    :goto_1
    return-object v0

    .line 1761
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    goto :goto_0

    .line 1768
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    goto :goto_1

    .line 1771
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBytes(IZ)[B

    move-result-object v0

    goto :goto_1
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1780
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytesSize()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1793
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    .line 1795
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1797
    instance-of v1, v3, Lcom/mysql/jdbc/RowDataStatic;

    if-eqz v1, :cond_0

    .line 1800
    invoke-interface {v3}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v4

    move v1, v0

    .line 1802
    :goto_0
    if-ge v1, v4, :cond_1

    .line 1803
    invoke-interface {v3, v1}, Lcom/mysql/jdbc/RowData;->getAt(I)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mysql/jdbc/ResultSetRow;->getBytesSize()I

    move-result v2

    add-int/2addr v2, v0

    .line 1802
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    .line 1809
    :cond_0
    const/4 v0, -0x1

    :cond_1
    return v0
.end method

.method protected getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1817
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1818
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    .line 1819
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v0

    monitor-exit v1

    .line 1823
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    monitor-exit v1

    goto :goto_0

    .line 1824
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCharacterStream(I)Ljava/io/Reader;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1843
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_1

    .line 1844
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 1846
    add-int/lit8 v0, p1, -0x1

    .line 1848
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 1851
    const/4 v0, 0x0

    .line 1859
    :goto_0
    return-object v0

    .line 1854
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 1856
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->getReader(I)Ljava/io/Reader;

    move-result-object v0

    goto :goto_0

    .line 1859
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeCharacterStream(I)Ljava/io/Reader;

    move-result-object v0

    goto :goto_0
.end method

.method public getCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1878
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object v0

    return-object v0
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
    .line 1901
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_1

    .line 1902
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getStringForClob(I)Ljava/lang/String;

    move-result-object v1

    .line 1904
    if-nez v1, :cond_0

    .line 1905
    const/4 v0, 0x0

    .line 1911
    :goto_0
    return-object v0

    .line 1908
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/Clob;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/Clob;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    goto :goto_0

    .line 1911
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeClob(I)Ljava/sql/Clob;

    move-result-object v0

    goto :goto_0
.end method

.method public getClob(Ljava/lang/String;)Ljava/sql/Clob;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1926
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getClob(I)Ljava/sql/Clob;

    move-result-object v0

    return-object v0
.end method

.method public getConcurrency()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1943
    const/16 v0, 0x3ef

    return v0
.end method

.method public getCursorName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1969
    const-string v0, "ResultSet.Positioned_Update_not_supported"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1C00"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getDate(I)Ljava/sql/Date;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1985
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDate(ILjava/util/Calendar;)Ljava/sql/Date;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 2005
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-eqz v1, :cond_1

    .line 2006
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    .line 2032
    :cond_0
    :goto_0
    return-object v0

    .line 2009
    :cond_1
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastDateParsing:Z

    if-nez v1, :cond_2

    .line 2010
    invoke-virtual {p0, p1, v4}, Lcom/mysql/jdbc/ResultSetImpl;->getStringInternal(IZ)Ljava/lang/String;

    move-result-object v1

    .line 2012
    if-eqz v1, :cond_0

    .line 2016
    invoke-direct {p0, v1, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getDateFromString(Ljava/lang/String;ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    goto :goto_0

    .line 2019
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 2021
    add-int/lit8 v2, p1, -0x1

    .line 2022
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1, v2, v3, p0, p2}, Lcom/mysql/jdbc/ResultSetRow;->getDateFast(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object v1

    .line 2023
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v3, v2}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_4

    .line 2025
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    goto :goto_0

    .line 2030
    :cond_4
    iput-boolean v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    move-object v0, v1

    .line 2032
    goto :goto_0
.end method

.method public getDate(Ljava/lang/String;)Ljava/sql/Date;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2041
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getDate(I)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2060
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2242
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_0

    .line 2243
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDoubleInternal(I)D

    move-result-wide v0

    .line 2246
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDouble(I)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2255
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method protected getDoubleInternal(I)D
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2275
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDoubleInternal(Ljava/lang/String;I)D

    move-result-wide v0

    return-wide v0
.end method

.method protected getDoubleInternal(Ljava/lang/String;I)D
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const-wide v2, 0x47b99999843e2660L

    const-wide v0, 0x369ff868bf4d956aL

    .line 2294
    if-nez p1, :cond_1

    .line 2295
    const-wide/16 v0, 0x0

    .line 2332
    :cond_0
    :goto_0
    return-wide v0

    .line 2298
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 2299
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v0

    int-to-double v0, v0

    goto :goto_0

    .line 2302
    :cond_2
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 2304
    iget-boolean v6, p0, Lcom/mysql/jdbc/ResultSetImpl;->useStrictFloatingPoint:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_9

    .line 2306
    const-wide/high16 v6, 0x41e0

    cmpl-double v6, v4, v6

    if-nez v6, :cond_3

    .line 2308
    const-wide v0, 0x41dfffffffc00000L

    goto :goto_0

    .line 2309
    :cond_3
    const-wide v6, 0x3cd203afa0000020L

    cmpl-double v6, v4, v6

    if-nez v6, :cond_4

    .line 2311
    const-wide v0, 0x3cd203af9ee75616L

    goto :goto_0

    .line 2312
    :cond_4
    const-wide v6, 0x430c6bf51fffffe0L

    cmpl-double v6, v4, v6

    if-nez v6, :cond_5

    .line 2313
    const-wide v0, 0x430c6bf52633fff8L

    goto :goto_0

    .line 2314
    :cond_5
    const-wide v6, 0x369fffffffffff92L

    cmpl-double v6, v4, v6

    if-eqz v6, :cond_0

    .line 2316
    const-wide v6, 0x36a00001262d4ab6L

    cmpl-double v6, v4, v6

    if-eqz v6, :cond_0

    .line 2318
    const-wide v0, 0x47b9999980000018L

    cmpl-double v0, v4, v0

    if-nez v0, :cond_6

    move-wide v0, v2

    .line 2319
    goto :goto_0

    .line 2320
    :cond_6
    const-wide v0, -0x3e20000390000000L

    cmpl-double v0, v4, v0

    if-nez v0, :cond_7

    .line 2321
    const-wide/high16 v0, -0x3e20

    goto :goto_0

    .line 2322
    :cond_7
    const-wide v0, 0x47b99997ca7b0cf0L

    cmpl-double v0, v4, v0

    if-nez v0, :cond_9

    move-wide v0, v2

    .line 2323
    goto :goto_0

    .line 2328
    :catch_0
    move-exception v0

    .line 2329
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p2, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_8

    .line 2330
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v0

    .line 2332
    long-to-double v0, v0

    goto/16 :goto_0

    .line 2335
    :cond_8
    const-string v0, "ResultSet.Bad_format_for_number"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_9
    move-wide v0, v4

    goto/16 :goto_0
.end method

.method protected getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;
    .locals 1

    .prologue
    .line 7894
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    return-object v0
.end method

.method public getFetchDirection()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2349
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2350
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fetchDirection:I

    monitor-exit v1

    return v0

    .line 2351
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFetchSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2363
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2364
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fetchSize:I

    monitor-exit v1

    return v0

    .line 2365
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFirstCharOfQuery()C
    .locals 2

    .prologue
    .line 2376
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2377
    :try_start_1
    iget-char v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->firstCharOfQuery:C

    monitor-exit v1

    return v0

    .line 2378
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2379
    :catch_0
    move-exception v0

    .line 2380
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFloat(I)F
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2396
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_0

    .line 2399
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2401
    invoke-direct {p0, v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getFloatFromString(Ljava/lang/String;I)F

    move-result v0

    .line 2404
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeFloat(I)F

    move-result v0

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2413
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getFloat(I)F

    move-result v0

    return v0
.end method

.method protected getGmtCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 7886
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->gmtCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 7887
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->gmtCalendar:Ljava/util/Calendar;

    .line 7890
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->gmtCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getInt(I)I
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v7, -0x1

    .line 2475
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 2476
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 2478
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v2, :cond_9

    .line 2479
    add-int/lit8 v2, p1, -0x1

    .line 2481
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v3, v2}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2482
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2561
    :cond_0
    :goto_0
    return v0

    .line 2485
    :cond_1
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2487
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 2488
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v0

    .line 2490
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v2, :cond_3

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 2491
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {p0, v2, p1, v3}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 2494
    :cond_3
    long-to-int v0, v0

    goto :goto_0

    .line 2497
    :cond_4
    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastIntParsing:Z

    if-eqz v3, :cond_6

    .line 2498
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v3, v2}, Lcom/mysql/jdbc/ResultSetRow;->length(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 2499
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v0

    goto :goto_0

    .line 2502
    :cond_5
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v3, v2}, Lcom/mysql/jdbc/ResultSetRow;->isFloatingPointNumber(I)Z

    move-result v3

    .line 2504
    if-nez v3, :cond_6

    .line 2506
    :try_start_0
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getIntWithOverflowCheck(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2507
    :catch_0
    move-exception v0

    .line 2509
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v0, v2, v1, v3}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->parseIntAsDouble(ILjava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 2511
    :catch_1
    move-exception v0

    .line 2515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultSet.Invalid_value_for_getInt()_-____74"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1, v2, v3, v4}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2525
    :cond_6
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v1

    .line 2526
    if-eqz v1, :cond_0

    .line 2530
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 2531
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v0

    goto/16 :goto_0

    .line 2534
    :cond_7
    const-string v0, "e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_8

    const-string v0, "E"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_8

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_8

    .line 2535
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2537
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/mysql/jdbc/ResultSetImpl;->checkForIntegerTruncation(I[BI)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 2549
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 2551
    :goto_1
    :try_start_4
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->parseIntAsDouble(ILjava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v0

    goto/16 :goto_0

    .line 2543
    :cond_8
    :try_start_5
    invoke-direct {p0, p1, v1}, Lcom/mysql/jdbc/ResultSetImpl;->parseIntAsDouble(ILjava/lang/String;)I

    move-result v0

    .line 2545
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0}, Lcom/mysql/jdbc/ResultSetImpl;->checkForIntegerTruncation(I[BI)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 2552
    :catch_3
    move-exception v1

    .line 2556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultSet.Invalid_value_for_getInt()_-____74"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

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

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2561
    :cond_9
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(I)I

    move-result v0

    goto/16 :goto_0

    .line 2549
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2570
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2653
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2738
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2782
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 2784
    new-instance v0, Lcom/mysql/jdbc/ResultSetMetaData;

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUseOldAliasMetadataBehavior()Z

    move-result v2

    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v3

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mysql/jdbc/ResultSetMetaData;-><init>([Lcom/mysql/jdbc/Field;ZZLcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0
.end method

.method protected getNativeArray(I)Ljava/sql/Array;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2801
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected getNativeAsciiStream(I)Ljava/io/InputStream;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2828
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 2830
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBinaryStream(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected getNativeBigDecimal(I)Ljava/math/BigDecimal;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2848
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 2850
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getDecimals()I

    move-result v0

    .line 2852
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method protected getNativeBigDecimal(II)Ljava/math/BigDecimal;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2870
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 2874
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v1, v0, v1

    .line 2876
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    .line 2878
    if-nez v0, :cond_0

    .line 2879
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2881
    const/4 v0, 0x0

    .line 2895
    :goto_0
    return-object v0

    .line 2884
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2886
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2892
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v0

    .line 2895
    :goto_1
    invoke-direct {p0, v0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getBigDecimalFromString(Ljava/lang/String;II)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 2889
    :pswitch_0
    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2886
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getNativeBinaryStream(I)Ljava/io/InputStream;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 2916
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 2918
    add-int/lit8 v1, p1, -0x1

    .line 2920
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v2, v1}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2921
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2943
    :cond_0
    :goto_0
    return-object v0

    .line 2926
    :cond_1
    iput-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2928
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 2937
    invoke-virtual {p0, p1, v3}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBytes(IZ)[B

    move-result-object v1

    .line 2939
    if-eqz v1, :cond_0

    .line 2940
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    .line 2934
    :sswitch_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->getBinaryInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 2928
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_0
        -0x4 -> :sswitch_0
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_0
        0x7d4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getNativeBlob(I)Ljava/sql/Blob;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2958
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 2960
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 2962
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    .line 2964
    if-nez v0, :cond_0

    .line 2965
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2970
    :goto_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v1, :cond_1

    .line 2971
    const/4 v0, 0x0

    .line 2994
    :goto_1
    return-object v0

    .line 2967
    :cond_0
    iput-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    goto :goto_0

    .line 2974
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    .line 2978
    packed-switch v1, :pswitch_data_0

    .line 2987
    invoke-virtual {p0, p1, v3}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBytes(IZ)[B

    move-result-object v0

    .line 2990
    :goto_2
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getEmulateLocators()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2991
    new-instance v1, Lcom/mysql/jdbc/Blob;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/mysql/jdbc/Blob;-><init>([BLcom/mysql/jdbc/ExceptionInterceptor;)V

    move-object v0, v1

    goto :goto_1

    .line 2983
    :pswitch_0
    check-cast v0, [B

    check-cast v0, [B

    goto :goto_2

    .line 2994
    :cond_2
    new-instance v0, Lcom/mysql/jdbc/BlobFromLocator;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/mysql/jdbc/BlobFromLocator;-><init>(Lcom/mysql/jdbc/ResultSetImpl;ILcom/mysql/jdbc/ExceptionInterceptor;)V

    goto :goto_1

    .line 2978
    :pswitch_data_0
    .packed-switch 0xf9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getNativeByte(I)B
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3027
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeByte(IZ)B

    move-result v0

    return v0
.end method

.method protected getNativeByte(IZ)B
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/16 v7, -0x80

    const/16 v6, 0x7f

    const/4 v1, 0x0

    const/4 v5, -0x6

    .line 3031
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 3033
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 3035
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    .line 3037
    if-nez v0, :cond_1

    .line 3038
    iput-boolean v8, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    move v0, v1

    .line 3139
    :cond_0
    :goto_0
    return v0

    .line 3043
    :cond_1
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3045
    add-int/lit8 v2, p1, -0x1

    .line 3047
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v3, v3, v2

    .line 3049
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 3133
    :pswitch_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_2

    .line 3134
    const-string v1, "getByte()"

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v3

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v0, v2

    const/4 v0, 0x6

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    .line 3139
    :cond_2
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getByteFromString(Ljava/lang/String;I)B

    move-result v0

    goto :goto_0

    .line 3051
    :pswitch_1
    add-int/lit8 v0, v2, 0x1

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v0

    .line 3053
    if-eqz p2, :cond_4

    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v3, :cond_4

    const-wide/16 v3, -0x80

    cmp-long v3, v0, v3

    if-ltz v3, :cond_3

    const-wide/16 v3, 0x7f

    cmp-long v3, v0, v3

    if-lez v3, :cond_4

    .line 3054
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v3, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3057
    :cond_4
    long-to-int v0, v0

    int-to-byte v0, v0

    goto :goto_0

    .line 3059
    :pswitch_2
    check-cast v0, [B

    check-cast v0, [B

    aget-byte v0, v0, v1

    .line 3061
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3065
    if-ltz v0, :cond_6

    int-to-short v0, v0

    .line 3067
    :goto_1
    if-eqz p2, :cond_5

    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v1, :cond_5

    .line 3068
    if-le v0, v6, :cond_5

    .line 3069
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3073
    :cond_5
    int-to-byte v0, v0

    goto :goto_0

    .line 3065
    :cond_6
    add-int/lit16 v0, v0, 0x100

    int-to-short v0, v0

    goto :goto_1

    .line 3077
    :pswitch_3
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result v0

    .line 3079
    if-eqz p2, :cond_8

    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v1, :cond_8

    .line 3080
    if-lt v0, v7, :cond_7

    if-le v0, v6, :cond_8

    .line 3081
    :cond_7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3085
    :cond_8
    int-to-byte v0, v0

    goto/16 :goto_0

    .line 3088
    :pswitch_4
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(IZ)I

    move-result v0

    .line 3090
    if-eqz p2, :cond_a

    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v1, :cond_a

    .line 3091
    if-lt v0, v7, :cond_9

    if-le v0, v6, :cond_a

    .line 3092
    :cond_9
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3096
    :cond_a
    int-to-byte v0, v0

    goto/16 :goto_0

    .line 3099
    :pswitch_5
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeFloat(I)F

    move-result v0

    .line 3101
    if-eqz p2, :cond_c

    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v1, :cond_c

    .line 3102
    const/high16 v1, -0x3d00

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_b

    const/high16 v1, 0x42fe

    cmpl-float v1, v0, v1

    if-lez v1, :cond_c

    .line 3104
    :cond_b
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3108
    :cond_c
    float-to-int v0, v0

    int-to-byte v0, v0

    goto/16 :goto_0

    .line 3111
    :pswitch_6
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDouble(I)D

    move-result-wide v0

    .line 3113
    if-eqz p2, :cond_e

    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v3, :cond_e

    .line 3114
    const-wide/high16 v3, -0x3fa0

    cmpg-double v3, v0, v3

    if-ltz v3, :cond_d

    const-wide v3, 0x405fc00000000000L

    cmpl-double v3, v0, v3

    if-lez v3, :cond_e

    .line 3115
    :cond_d
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v3, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3119
    :cond_e
    double-to-int v0, v0

    int-to-byte v0, v0

    goto/16 :goto_0

    .line 3122
    :pswitch_7
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0, v1, v8}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(IZZ)J

    move-result-wide v0

    .line 3124
    if-eqz p2, :cond_10

    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v3, :cond_10

    .line 3125
    const-wide/16 v3, -0x80

    cmp-long v3, v0, v3

    if-ltz v3, :cond_f

    const-wide/16 v3, 0x7f

    cmp-long v3, v0, v3

    if-lez v3, :cond_10

    .line 3126
    :cond_f
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v3, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3130
    :cond_10
    long-to-int v0, v0

    int-to-byte v0, v0

    goto/16 :goto_0

    .line 3049
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3134
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected getNativeBytes(IZ)[B
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3159
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 3161
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 3163
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    .line 3165
    if-nez v0, :cond_0

    .line 3166
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3171
    :goto_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v1, :cond_1

    .line 3172
    const/4 v0, 0x0

    .line 3208
    :goto_1
    return-object v0

    .line 3168
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    goto :goto_0

    .line 3175
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v2, p1, -0x1

    aget-object v2, v1, v2

    .line 3177
    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    .line 3180
    if-eqz p2, :cond_2

    .line 3181
    const/16 v1, 0xfc

    .line 3184
    :cond_2
    sparse-switch v1, :sswitch_data_0

    .line 3202
    :cond_3
    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v1

    .line 3204
    const/4 v2, -0x3

    if-eq v1, v2, :cond_4

    const/4 v2, -0x2

    if-ne v1, v2, :cond_5

    .line 3205
    :cond_4
    check-cast v0, [B

    check-cast v0, [B

    goto :goto_1

    .line 3190
    :sswitch_0
    check-cast v0, [B

    check-cast v0, [B

    goto :goto_1

    .line 3195
    :sswitch_1
    instance-of v1, v0, [B

    if-eqz v1, :cond_3

    .line 3196
    check-cast v0, [B

    check-cast v0, [B

    goto :goto_1

    .line 3208
    :cond_5
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getBytesFromString(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    .line 3184
    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_1
        0x10 -> :sswitch_0
        0xf9 -> :sswitch_0
        0xfa -> :sswitch_0
        0xfb -> :sswitch_0
        0xfc -> :sswitch_0
        0xfd -> :sswitch_1
        0xfe -> :sswitch_1
    .end sparse-switch
.end method

.method protected getNativeCharacterStream(I)Ljava/io/Reader;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3227
    add-int/lit8 v1, p1, -0x1

    .line 3229
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 3245
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getStringForClob(I)Ljava/lang/String;

    move-result-object v1

    .line 3247
    if-nez v1, :cond_1

    .line 3251
    :goto_0
    return-object v0

    .line 3234
    :sswitch_0
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v2, v1}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3235
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    goto :goto_0

    .line 3240
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3242
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->getReader(I)Ljava/io/Reader;

    move-result-object v0

    goto :goto_0

    .line 3251
    :cond_1
    invoke-direct {p0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getCharacterStreamFromString(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    goto :goto_0

    .line 3229
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_0
        0xc -> :sswitch_0
        0x7d5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getNativeClob(I)Ljava/sql/Clob;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3266
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getStringForClob(I)Ljava/lang/String;

    move-result-object v0

    .line 3268
    if-nez v0, :cond_0

    .line 3269
    const/4 v0, 0x0

    .line 3272
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getClobFromString(Ljava/lang/String;)Ljava/sql/Clob;

    move-result-object v0

    goto :goto_0
.end method

.method protected getNativeDate(I)Ljava/sql/Date;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3577
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method protected getNativeDate(ILjava/util/Calendar;)Ljava/sql/Date;
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 3597
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 3598
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 3600
    add-int/lit8 v1, p1, -0x1

    .line 3602
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v4

    .line 3606
    const/16 v0, 0xa

    if-ne v4, v0, :cond_0

    .line 3608
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v0, v1, v3, p0, p2}, Lcom/mysql/jdbc/ResultSetRow;->getNativeDate(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    .line 3622
    :goto_0
    if-nez v0, :cond_3

    .line 3624
    iput-boolean v9, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3631
    :goto_1
    return-object v2

    .line 3610
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    .line 3612
    :goto_2
    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v6, v9

    .line 3614
    :goto_3
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    const/16 v3, 0x5b

    iget-object v7, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/mysql/jdbc/ResultSetRow;->getNativeDateTimeValue(ILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Date;

    goto :goto_0

    .line 3610
    :cond_1
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    goto :goto_2

    :cond_2
    move v6, v10

    .line 3612
    goto :goto_3

    .line 3629
    :cond_3
    iput-boolean v10, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    move-object v2, v0

    .line 3631
    goto :goto_1
.end method

.method getNativeDateViaParseConversion(I)Ljava/sql/Date;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3635
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_0

    .line 3636
    const-string v1, "getDate()"

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v3

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v2, p1, -0x1

    aget-object v4, v0, v2

    const/4 v0, 0x1

    new-array v5, v0, [I

    const/4 v0, 0x0

    const/16 v2, 0xa

    aput v2, v5, v0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    .line 3640
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v0

    .line 3642
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getDateFromString(Ljava/lang/String;ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method protected getNativeDouble(I)D
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3657
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 3658
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 3660
    add-int/lit8 v2, p1, -0x1

    .line 3662
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3663
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3665
    const-wide/16 v0, 0x0

    .line 3720
    :goto_0
    return-wide v0

    .line 3668
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3670
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, v2

    .line 3672
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3712
    :pswitch_0
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v3

    .line 3714
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_1

    .line 3715
    const-string v1, "getDouble()"

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v0, v2

    const/4 v0, 0x6

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    .line 3720
    :cond_1
    add-int/lit8 v0, v2, 0x1

    invoke-direct {p0, v3, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getDoubleFromString(Ljava/lang/String;I)D

    move-result-wide v0

    goto :goto_0

    .line 3674
    :pswitch_1
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/ResultSetRow;->getNativeDouble(I)D

    move-result-wide v0

    goto :goto_0

    .line 3676
    :pswitch_2
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3677
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeByte(I)B

    move-result v0

    int-to-double v0, v0

    goto :goto_0

    .line 3680
    :cond_2
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result v0

    int-to-double v0, v0

    goto :goto_0

    .line 3683
    :pswitch_3
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3684
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result v0

    int-to-double v0, v0

    goto :goto_0

    .line 3687
    :cond_3
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(I)I

    move-result v0

    int-to-double v0, v0

    goto :goto_0

    .line 3690
    :pswitch_4
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3691
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(I)I

    move-result v0

    int-to-double v0, v0

    goto :goto_0

    .line 3694
    :cond_4
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(I)J

    move-result-wide v0

    long-to-double v0, v0

    goto :goto_0

    .line 3696
    :pswitch_5
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(I)J

    move-result-wide v1

    .line 3698
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3699
    long-to-double v0, v1

    goto/16 :goto_0

    .line 3702
    :cond_5
    invoke-static {v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->convertLongToUlong(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 3706
    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    goto/16 :goto_0

    .line 3708
    :pswitch_6
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeFloat(I)F

    move-result v0

    float-to-double v0, v0

    goto/16 :goto_0

    .line 3710
    :pswitch_7
    add-int/lit8 v0, v2, 0x1

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v0

    long-to-double v0, v0

    goto/16 :goto_0

    .line 3672
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 3715
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected getNativeFloat(I)F
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x6

    .line 3736
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 3737
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 3739
    add-int/lit8 v2, p1, -0x1

    .line 3741
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3742
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3744
    const/4 v0, 0x0

    .line 3814
    :goto_0
    return v0

    .line 3747
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3749
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, v2

    .line 3751
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3806
    :pswitch_0
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v3

    .line 3808
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_1

    .line 3809
    const-string v1, "getFloat()"

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v0, v2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    .line 3814
    :cond_1
    add-int/lit8 v0, v2, 0x1

    invoke-direct {p0, v3, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getFloatFromString(Ljava/lang/String;I)F

    move-result v0

    goto :goto_0

    .line 3753
    :pswitch_1
    add-int/lit8 v0, v2, 0x1

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v0

    .line 3755
    long-to-float v0, v0

    goto :goto_0

    .line 3760
    :pswitch_2
    new-instance v0, Ljava/lang/Double;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDouble(I)D

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/lang/Double;-><init>(D)V

    .line 3762
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v1

    .line 3764
    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v3, :cond_2

    const/high16 v3, -0x80

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_3

    :cond_2
    const/high16 v3, 0x7f80

    cmpl-float v1, v1, v3

    if-nez v1, :cond_4

    .line 3765
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0, v0, v1, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3768
    :cond_4
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDouble(I)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0

    .line 3770
    :pswitch_3
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3771
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeByte(I)B

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    .line 3774
    :cond_5
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    .line 3777
    :pswitch_4
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3778
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result v0

    int-to-float v0, v0

    goto/16 :goto_0

    .line 3781
    :cond_6
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(I)I

    move-result v0

    int-to-float v0, v0

    goto/16 :goto_0

    .line 3784
    :pswitch_5
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3785
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(I)I

    move-result v0

    int-to-float v0, v0

    goto/16 :goto_0

    .line 3788
    :cond_7
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(I)J

    move-result-wide v0

    long-to-float v0, v0

    goto/16 :goto_0

    .line 3790
    :pswitch_6
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(I)J

    move-result-wide v1

    .line 3792
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3793
    long-to-float v0, v1

    goto/16 :goto_0

    .line 3796
    :cond_8
    invoke-static {v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->convertLongToUlong(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 3800
    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    goto/16 :goto_0

    .line 3803
    :pswitch_7
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/ResultSetRow;->getNativeFloat(I)F

    move-result v0

    goto/16 :goto_0

    .line 3751
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3809
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected getNativeInt(I)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3830
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(IZ)I

    move-result v0

    return v0
.end method

.method protected getNativeInt(IZ)I
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const-wide v10, 0x41dfffffffc00000L

    const-wide/high16 v8, -0x3e20

    const-wide/32 v6, 0x7fffffff

    const/4 v5, 0x4

    const/4 v0, 0x0

    .line 3834
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 3835
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 3837
    add-int/lit8 v2, p1, -0x1

    .line 3839
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3840
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3931
    :cond_0
    :goto_0
    return v0

    .line 3845
    :cond_1
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3847
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v2

    .line 3849
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 3923
    :pswitch_0
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v3

    .line 3925
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_2

    .line 3926
    const-string v1, "getInt()"

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v0, v2

    const/4 v0, 0x6

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    .line 3931
    :cond_2
    add-int/lit8 v0, v2, 0x1

    invoke-direct {p0, v3, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getIntFromString(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 3851
    :pswitch_1
    add-int/lit8 v0, v2, 0x1

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v0

    .line 3853
    if-eqz p2, :cond_4

    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v3, :cond_4

    const-wide/32 v3, -0x80000000

    cmp-long v3, v0, v3

    if-ltz v3, :cond_3

    cmp-long v3, v0, v6

    if-lez v3, :cond_4

    .line 3854
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v3, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3857
    :cond_4
    long-to-int v0, v0

    goto :goto_0

    .line 3859
    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeByte(IZ)B

    move-result v0

    .line 3861
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-eqz v1, :cond_0

    if-gez v0, :cond_0

    .line 3865
    add-int/lit16 v0, v0, 0x100

    goto :goto_0

    .line 3868
    :pswitch_3
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(IZ)S

    move-result v0

    .line 3870
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-eqz v1, :cond_0

    if-gez v0, :cond_0

    .line 3874
    const/high16 v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    .line 3878
    :pswitch_4
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/ResultSetRow;->getNativeInt(I)I

    move-result v0

    .line 3880
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3884
    if-ltz v0, :cond_6

    int-to-long v0, v0

    .line 3886
    :goto_1
    if-eqz p2, :cond_5

    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v3, :cond_5

    cmp-long v3, v0, v6

    if-lez v3, :cond_5

    .line 3887
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v3, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3890
    :cond_5
    long-to-int v0, v0

    goto/16 :goto_0

    .line 3884
    :cond_6
    int-to-long v0, v0

    const-wide v3, 0x100000000L

    add-long/2addr v0, v3

    goto :goto_1

    .line 3892
    :pswitch_5
    add-int/lit8 v1, v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v3}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(IZZ)J

    move-result-wide v0

    .line 3894
    if-eqz p2, :cond_8

    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v3, :cond_8

    .line 3895
    const-wide/32 v3, -0x80000000

    cmp-long v3, v0, v3

    if-ltz v3, :cond_7

    cmp-long v3, v0, v6

    if-lez v3, :cond_8

    .line 3896
    :cond_7
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v3, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3900
    :cond_8
    long-to-int v0, v0

    goto/16 :goto_0

    .line 3902
    :pswitch_6
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDouble(I)D

    move-result-wide v0

    .line 3904
    if-eqz p2, :cond_a

    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v3, :cond_a

    .line 3905
    cmpg-double v3, v0, v8

    if-ltz v3, :cond_9

    cmpl-double v3, v0, v10

    if-lez v3, :cond_a

    .line 3906
    :cond_9
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v3, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3910
    :cond_a
    double-to-int v0, v0

    goto/16 :goto_0

    .line 3912
    :pswitch_7
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeFloat(I)F

    move-result v0

    float-to-double v0, v0

    .line 3914
    if-eqz p2, :cond_c

    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v3, :cond_c

    .line 3915
    cmpg-double v3, v0, v8

    if-ltz v3, :cond_b

    cmpl-double v3, v0, v10

    if-lez v3, :cond_c

    .line 3916
    :cond_b
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v3, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3920
    :cond_c
    double-to-int v0, v0

    goto/16 :goto_0

    .line 3849
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3926
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected getNativeLong(I)J
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 3947
    invoke-virtual {p0, p1, v0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(IZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getNativeLong(IZZ)J
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const-wide/high16 v8, 0x43e0

    const-wide/high16 v6, -0x3c20

    const/4 v1, 0x0

    const/4 v5, -0x5

    .line 3951
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 3952
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 3954
    add-int/lit8 v2, p1, -0x1

    .line 3956
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3957
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3959
    const-wide/16 v0, 0x0

    .line 4038
    :cond_0
    :goto_0
    return-wide v0

    .line 3962
    :cond_1
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3964
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v3, v0, v2

    .line 3966
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4030
    :pswitch_0
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v3

    .line 4032
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_2

    .line 4033
    const-string v1, "getLong()"

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v0, v2

    const/4 v0, 0x6

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    .line 4038
    :cond_2
    add-int/lit8 v0, v2, 0x1

    invoke-direct {p0, v3, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getLongFromString(Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_0

    .line 3968
    :pswitch_1
    add-int/lit8 v0, v2, 0x1

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v0

    goto :goto_0

    .line 3970
    :pswitch_2
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3971
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeByte(I)B

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 3974
    :cond_3
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 3976
    :pswitch_3
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3977
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 3980
    :cond_4
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(IZ)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 3983
    :pswitch_4
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 3986
    :pswitch_5
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(IZ)I

    move-result v0

    .line 3988
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-eqz v1, :cond_5

    if-ltz v0, :cond_6

    .line 3989
    :cond_5
    int-to-long v0, v0

    goto :goto_0

    .line 3992
    :cond_6
    int-to-long v0, v0

    const-wide v2, 0x100000000L

    add-long/2addr v0, v2

    goto/16 :goto_0

    .line 3994
    :pswitch_6
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/ResultSetRow;->getNativeLong(I)J

    move-result-wide v0

    .line 3996
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    .line 4000
    invoke-static {v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->convertLongToUlong(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 4002
    if-eqz p2, :cond_8

    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/math/BigInteger;

    const-wide v3, 0x7fffffffffffffffL

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_7

    new-instance v1, Ljava/math/BigInteger;

    const-wide/high16 v3, -0x8000

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_8

    .line 4004
    :cond_7
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v1, v3, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 4007
    :cond_8
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getLongFromString(Ljava/lang/String;I)J

    move-result-wide v0

    goto/16 :goto_0

    .line 4010
    :pswitch_7
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDouble(I)D

    move-result-wide v0

    .line 4012
    if-eqz p2, :cond_a

    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v3, :cond_a

    .line 4013
    cmpg-double v3, v0, v6

    if-ltz v3, :cond_9

    cmpl-double v3, v0, v8

    if-lez v3, :cond_a

    .line 4014
    :cond_9
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v3, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 4018
    :cond_a
    double-to-long v0, v0

    goto/16 :goto_0

    .line 4020
    :pswitch_8
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeFloat(I)F

    move-result v0

    float-to-double v0, v0

    .line 4022
    if-eqz p2, :cond_c

    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v3, :cond_c

    .line 4023
    cmpg-double v3, v0, v6

    if-ltz v3, :cond_b

    cmpl-double v3, v0, v8

    if-lez v3, :cond_c

    .line 4024
    :cond_b
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v3, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 4028
    :cond_c
    double-to-long v0, v0

    goto/16 :goto_0

    .line 3966
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 4033
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected getNativeRef(I)Ljava/sql/Ref;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4055
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected getNativeShort(I)S
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4070
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(IZ)S

    move-result v0

    return v0
.end method

.method protected getNativeShort(IZ)S
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v9, -0x8000

    const-wide/16 v7, 0x7fff

    const/16 v6, 0x7fff

    const/4 v0, 0x0

    const/4 v5, 0x5

    .line 4074
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 4075
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 4077
    add-int/lit8 v2, p1, -0x1

    .line 4079
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4080
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4194
    :cond_0
    :goto_0
    return v0

    .line 4085
    :cond_1
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4087
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v2

    .line 4089
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 4186
    :pswitch_0
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v3

    .line 4188
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_2

    .line 4189
    const-string v1, "getShort()"

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v0, v2

    const/4 v0, 0x6

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    .line 4194
    :cond_2
    add-int/lit8 v0, v2, 0x1

    invoke-direct {p0, v3, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getShortFromString(Ljava/lang/String;I)S

    move-result v0

    goto :goto_0

    .line 4091
    :pswitch_1
    add-int/lit8 v0, v2, 0x1

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v0

    .line 4093
    if-eqz p2, :cond_4

    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v3, :cond_4

    const-wide/16 v3, -0x8000

    cmp-long v3, v0, v3

    if-ltz v3, :cond_3

    cmp-long v3, v0, v7

    if-lez v3, :cond_4

    .line 4094
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v3, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 4097
    :cond_4
    long-to-int v0, v0

    int-to-short v0, v0

    goto :goto_0

    .line 4100
    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeByte(IZ)B

    move-result v0

    .line 4102
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-eqz v1, :cond_5

    if-ltz v0, :cond_6

    .line 4103
    :cond_5
    int-to-short v0, v0

    goto :goto_0

    .line 4106
    :cond_6
    add-int/lit16 v0, v0, 0x100

    int-to-short v0, v0

    goto :goto_0

    .line 4110
    :pswitch_3
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/ResultSetRow;->getNativeShort(I)S

    move-result v0

    .line 4112
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4116
    const v1, 0xffff

    and-int/2addr v0, v1

    .line 4118
    if-eqz p2, :cond_7

    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v1, :cond_7

    if-le v0, v6, :cond_7

    .line 4119
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 4122
    :cond_7
    int-to-short v0, v0

    goto/16 :goto_0

    .line 4125
    :pswitch_4
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-nez v1, :cond_b

    .line 4126
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(IZ)I

    move-result v0

    .line 4128
    if-eqz p2, :cond_8

    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v1, :cond_8

    if-gt v0, v6, :cond_9

    :cond_8
    if-ge v0, v9, :cond_a

    .line 4129
    :cond_9
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 4132
    :cond_a
    int-to-short v0, v0

    goto/16 :goto_0

    .line 4135
    :cond_b
    add-int/lit8 v1, v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v3}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(IZZ)J

    move-result-wide v0

    .line 4137
    if-eqz p2, :cond_c

    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v3, :cond_c

    cmp-long v3, v0, v7

    if-lez v3, :cond_c

    .line 4138
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v3, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 4141
    :cond_c
    long-to-int v0, v0

    int-to-short v0, v0

    goto/16 :goto_0

    .line 4144
    :pswitch_5
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3, v0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(IZZ)J

    move-result-wide v3

    .line 4146
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-nez v0, :cond_f

    .line 4147
    if-eqz p2, :cond_e

    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v0, :cond_e

    .line 4148
    const-wide/16 v0, -0x8000

    cmp-long v0, v3, v0

    if-ltz v0, :cond_d

    cmp-long v0, v3, v7

    if-lez v0, :cond_e

    .line 4149
    :cond_d
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0, v0, v1, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 4153
    :cond_e
    long-to-int v0, v3

    int-to-short v0, v0

    goto/16 :goto_0

    .line 4156
    :cond_f
    invoke-static {v3, v4}, Lcom/mysql/jdbc/ResultSetImpl;->convertLongToUlong(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 4158
    if-eqz p2, :cond_11

    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v1, :cond_11

    new-instance v1, Ljava/math/BigInteger;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_10

    new-instance v1, Ljava/math/BigInteger;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_11

    .line 4160
    :cond_10
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v1, v3, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 4163
    :cond_11
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getIntFromString(Ljava/lang/String;I)I

    move-result v0

    int-to-short v0, v0

    goto/16 :goto_0

    .line 4166
    :pswitch_6
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDouble(I)D

    move-result-wide v0

    .line 4168
    if-eqz p2, :cond_13

    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v3, :cond_13

    .line 4169
    const-wide/high16 v3, -0x3f20

    cmpg-double v3, v0, v3

    if-ltz v3, :cond_12

    const-wide v3, 0x40dfffc000000000L

    cmpl-double v3, v0, v3

    if-lez v3, :cond_13

    .line 4170
    :cond_12
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v3, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 4174
    :cond_13
    double-to-int v0, v0

    int-to-short v0, v0

    goto/16 :goto_0

    .line 4176
    :pswitch_7
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeFloat(I)F

    move-result v0

    .line 4178
    if-eqz p2, :cond_15

    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v1, :cond_15

    .line 4179
    const/high16 v1, -0x3900

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_14

    const v1, 0x46fffe00

    cmpl-float v1, v0, v1

    if-lez v1, :cond_15

    .line 4180
    :cond_14
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 4184
    :cond_15
    float-to-int v0, v0

    int-to-short v0, v0

    goto/16 :goto_0

    .line 4089
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 4189
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected getNativeString(I)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4210
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 4211
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 4213
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    if-nez v0, :cond_0

    .line 4214
    const-string v0, "ResultSet.Query_generated_no_fields_for_ResultSet_133"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1002"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4218
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4221
    const/4 v0, 0x0

    .line 4250
    :cond_1
    :goto_0
    return-object v0

    .line 4224
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4228
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v1, v0, v1

    .line 4231
    invoke-direct {p0, p1, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeConvertToString(ILcom/mysql/jdbc/Field;)Ljava/lang/String;

    move-result-object v0

    .line 4232
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    .line 4234
    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isZeroFill()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 4235
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 4237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4239
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getLength()J

    move-result-wide v4

    int-to-long v1, v2

    sub-long/2addr v4, v1

    .line 4241
    const-wide/16 v1, 0x0

    :goto_1
    cmp-long v6, v1, v4

    if-gez v6, :cond_3

    .line 4242
    const/16 v6, 0x30

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4241
    const-wide/16 v6, 0x1

    add-long/2addr v1, v6

    goto :goto_1

    .line 4245
    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4247
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getNativeTimeViaParseConversion(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Time;
    .locals 6
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
    .line 4288
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_0

    .line 4289
    const-string v1, "getTime()"

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v3

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v2, p1, -0x1

    aget-object v4, v0, v2

    const/4 v0, 0x1

    new-array v5, v0, [I

    const/4 v0, 0x0

    const/16 v2, 0xb

    aput v2, v5, v0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    .line 4293
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p1

    move-object v4, p3

    move v5, p4

    .line 4295
    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->getTimeFromString(Ljava/lang/String;Ljava/util/Calendar;ILjava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method getNativeTimestampViaParseConversion(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;
    .locals 6
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
    .line 4338
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_0

    .line 4339
    const-string v1, "getTimestamp()"

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v3

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v2, p1, -0x1

    aget-object v4, v0, v2

    const/4 v0, 0x2

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    .line 4343
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 4345
    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestampFromString(ILjava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    .line 4339
    nop

    :array_0
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected getNativeURL(I)Ljava/net/URL;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4379
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4381
    if-nez v1, :cond_0

    .line 4382
    const/4 v0, 0x0

    .line 4386
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4387
    :catch_0
    move-exception v0

    .line 4388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultSet.Malformed_URL____141"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected getNativeUnicodeStream(I)Ljava/io/InputStream;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4370
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 4372
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getNextResultSet()Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 1

    .prologue
    .line 4397
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->nextResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4421
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 4422
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 4424
    add-int/lit8 v1, p1, -0x1

    .line 4426
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v2, v1}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4427
    iput-boolean v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4555
    :cond_0
    :goto_0
    return-object v0

    .line 4432
    :cond_1
    iput-boolean v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4435
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v2, v1

    .line 4437
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 4555
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4439
    :sswitch_0
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_2

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isSingleBit()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4440
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getObjectDeserializingIfNeeded(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 4442
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 4445
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 4448
    :sswitch_2
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4449
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getByte(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 4452
    :cond_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 4456
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 4460
    :sswitch_4
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    .line 4461
    :cond_4
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 4464
    :cond_5
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 4468
    :sswitch_5
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-nez v1, :cond_6

    .line 4469
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 4472
    :cond_6
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4474
    if-eqz v1, :cond_0

    .line 4479
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4480
    :catch_0
    move-exception v0

    .line 4481
    const-string v0, "ResultSet.Bad_format_for_BigInteger"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4488
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4492
    if-eqz v1, :cond_0

    .line 4493
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 4494
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v4}, Ljava/math/BigDecimal;-><init>(I)V

    goto/16 :goto_0

    .line 4500
    :cond_7
    :try_start_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 4501
    :catch_1
    move-exception v0

    .line 4502
    const-string v0, "ResultSet.Bad_format_for_BigDecimal"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4513
    :sswitch_7
    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getFloat(I)F

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    goto/16 :goto_0

    .line 4517
    :sswitch_8
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDouble(I)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_0

    .line 4521
    :sswitch_9
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isOpaqueBinary()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4522
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4525
    :cond_8
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object v0

    goto/16 :goto_0

    .line 4527
    :sswitch_a
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isOpaqueBinary()Z

    move-result v0

    if-nez v0, :cond_9

    .line 4528
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getStringForClob(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4531
    :cond_9
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object v0

    goto/16 :goto_0

    .line 4536
    :sswitch_b
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_a

    .line 4537
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object v0

    goto/16 :goto_0

    .line 4539
    :cond_a
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getObjectDeserializingIfNeeded(I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 4542
    :sswitch_c
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v0

    if-nez v0, :cond_b

    .line 4543
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getShort(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto/16 :goto_0

    .line 4546
    :cond_b
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDate(I)Ljava/sql/Date;

    move-result-object v0

    goto/16 :goto_0

    .line 4549
    :sswitch_d
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTime(I)Ljava/sql/Time;

    move-result-object v0

    goto/16 :goto_0

    .line 4552
    :sswitch_e
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object v0

    goto/16 :goto_0

    .line 4437
    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_0
        -0x6 -> :sswitch_2
        -0x5 -> :sswitch_5
        -0x4 -> :sswitch_b
        -0x3 -> :sswitch_b
        -0x2 -> :sswitch_b
        -0x1 -> :sswitch_a
        0x1 -> :sswitch_9
        0x2 -> :sswitch_6
        0x3 -> :sswitch_6
        0x4 -> :sswitch_4
        0x5 -> :sswitch_3
        0x6 -> :sswitch_8
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0xc -> :sswitch_9
        0x10 -> :sswitch_1
        0x5b -> :sswitch_c
        0x5c -> :sswitch_d
        0x5d -> :sswitch_e
    .end sparse-switch
.end method

.method public getObject(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
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
    .line 4599
    if-nez p2, :cond_0

    .line 4600
    const-string v0, "Type parameter can not be null"

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4603
    :cond_0
    const-class v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4604
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4638
    :goto_0
    return-object v0

    .line 4605
    :cond_1
    const-class v0, Ljava/math/BigDecimal;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4606
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 4607
    :cond_2
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4608
    :cond_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 4609
    :cond_4
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4610
    :cond_5
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 4611
    :cond_6
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4612
    :cond_7
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 4613
    :cond_8
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4614
    :cond_9
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 4615
    :cond_a
    const-class v0, Ljava/lang/Double;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4616
    :cond_b
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_0

    .line 4617
    :cond_c
    const-class v0, [B

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4618
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object v0

    goto/16 :goto_0

    .line 4619
    :cond_d
    const-class v0, Ljava/sql/Date;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4620
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDate(I)Ljava/sql/Date;

    move-result-object v0

    goto/16 :goto_0

    .line 4621
    :cond_e
    const-class v0, Ljava/sql/Time;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4622
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTime(I)Ljava/sql/Time;

    move-result-object v0

    goto/16 :goto_0

    .line 4623
    :cond_f
    const-class v0, Ljava/sql/Timestamp;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4624
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object v0

    goto/16 :goto_0

    .line 4625
    :cond_10
    const-class v0, Lcom/mysql/jdbc/Clob;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4626
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getClob(I)Ljava/sql/Clob;

    move-result-object v0

    goto/16 :goto_0

    .line 4627
    :cond_11
    const-class v0, Lcom/mysql/jdbc/Blob;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4628
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBlob(I)Ljava/sql/Blob;

    move-result-object v0

    goto/16 :goto_0

    .line 4629
    :cond_12
    const-class v0, Ljava/sql/Array;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4630
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getArray(I)Ljava/sql/Array;

    move-result-object v0

    goto/16 :goto_0

    .line 4631
    :cond_13
    const-class v0, Ljava/sql/Ref;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4632
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getRef(I)Ljava/sql/Ref;

    move-result-object v0

    goto/16 :goto_0

    .line 4633
    :cond_14
    const-class v0, Ljava/net/URL;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4634
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getURL(I)Ljava/net/URL;

    move-result-object v0

    goto/16 :goto_0

    .line 4636
    :cond_15
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoDeserialize()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4638
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 4639
    :catch_0
    move-exception v0

    .line 4640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conversion not supported for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 4642
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4644
    throw v1

    .line 4648
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Conversion not supported for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getObject(ILjava/util/Map;)Ljava/lang/Object;
    .locals 1
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
    .line 4674
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4698
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
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
    .line 4655
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
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
    .line 4717
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getObject(ILjava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObjectStoredProc(II)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4721
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 4722
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 4724
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v1

    .line 4726
    if-nez v1, :cond_1

    .line 4727
    iput-boolean v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4829
    :cond_0
    :goto_0
    return-object v0

    .line 4732
    :cond_1
    iput-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4735
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    .line 4737
    sparse-switch p2, :sswitch_data_0

    .line 4829
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4741
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 4744
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 4747
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 4751
    :sswitch_3
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 4752
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 4755
    :cond_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 4759
    :sswitch_4
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4760
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 4763
    :cond_4
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 4768
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4771
    if-eqz v1, :cond_0

    .line 4772
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 4773
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3}, Ljava/math/BigDecimal;-><init>(I)V

    goto :goto_0

    .line 4779
    :cond_5
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4780
    :catch_0
    move-exception v0

    .line 4781
    const-string v0, "ResultSet.Bad_format_for_BigDecimal"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4792
    :sswitch_6
    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getFloat(I)F

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    goto/16 :goto_0

    .line 4796
    :sswitch_7
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getRunningCTS13()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4797
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getFloat(I)F

    move-result v1

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_0

    .line 4799
    :cond_6
    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getFloat(I)F

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    goto/16 :goto_0

    .line 4803
    :sswitch_8
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDouble(I)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_0

    .line 4807
    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4809
    :sswitch_a
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getStringForClob(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4813
    :sswitch_b
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object v0

    goto/16 :goto_0

    .line 4816
    :sswitch_c
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4817
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getShort(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto/16 :goto_0

    .line 4820
    :cond_7
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDate(I)Ljava/sql/Date;

    move-result-object v0

    goto/16 :goto_0

    .line 4823
    :sswitch_d
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTime(I)Ljava/sql/Time;

    move-result-object v0

    goto/16 :goto_0

    .line 4826
    :sswitch_e
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object v0

    goto/16 :goto_0

    .line 4737
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_0
        -0x6 -> :sswitch_1
        -0x5 -> :sswitch_4
        -0x4 -> :sswitch_b
        -0x3 -> :sswitch_b
        -0x2 -> :sswitch_b
        -0x1 -> :sswitch_a
        0x1 -> :sswitch_9
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x4 -> :sswitch_3
        0x5 -> :sswitch_2
        0x6 -> :sswitch_7
        0x7 -> :sswitch_6
        0x8 -> :sswitch_8
        0xc -> :sswitch_9
        0x10 -> :sswitch_0
        0x5b -> :sswitch_c
        0x5c -> :sswitch_d
        0x5d -> :sswitch_e
    .end sparse-switch
.end method

.method public getObjectStoredProc(ILjava/util/Map;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4834
    invoke-virtual {p0, p1, p3}, Lcom/mysql/jdbc/ResultSetImpl;->getObjectStoredProc(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObjectStoredProc(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4838
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getObjectStoredProc(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObjectStoredProc(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4842
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/ResultSetImpl;->getObjectStoredProc(ILjava/util/Map;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRef(I)Ljava/sql/Ref;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4858
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 4859
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getRef(Ljava/lang/String;)Ljava/sql/Ref;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4875
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getRef(I)Ljava/sql/Ref;

    move-result-object v0

    return-object v0
.end method

.method public getRow()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4891
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 4893
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->getCurrentRowNumber()I

    move-result v0

    .line 4897
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->isDynamic()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4898
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4899
    :cond_0
    const/4 v0, 0x0

    .line 4908
    :goto_0
    return v0

    .line 4901
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4905
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getServerInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4918
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4919
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->serverInfo:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 4920
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4921
    :catch_0
    move-exception v0

    .line 4922
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getShort(I)S
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 4966
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 4967
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 4969
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_b

    .line 4970
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4971
    iput-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5050
    :cond_0
    :goto_0
    return v1

    .line 4974
    :cond_1
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4976
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v4, p1, -0x1

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v4, 0x10

    if-ne v0, v4, :cond_4

    .line 4977
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v0

    .line 4979
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v2, :cond_3

    const-wide/16 v2, -0x8000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    const-wide/16 v2, 0x7fff

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 4980
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {p0, v2, p1, v3}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 4983
    :cond_3
    long-to-int v0, v0

    int-to-short v1, v0

    goto :goto_0

    .line 4986
    :cond_4
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastIntParsing:Z

    if-eqz v0, :cond_8

    .line 4987
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v4

    .line 4989
    array-length v0, v4

    if-nez v0, :cond_5

    .line 4990
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v0

    int-to-short v1, v0

    goto :goto_0

    :cond_5
    move v0, v1

    .line 4995
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_c

    .line 4996
    aget-byte v5, v4, v0

    int-to-char v5, v5

    const/16 v6, 0x65

    if-eq v5, v6, :cond_6

    aget-byte v5, v4, v0

    int-to-char v5, v5

    const/16 v6, 0x45

    if-ne v5, v6, :cond_7

    :cond_6
    move v0, v3

    .line 5003
    :goto_2
    if-nez v0, :cond_8

    .line 5005
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v4, v0}, Lcom/mysql/jdbc/ResultSetImpl;->parseShortWithOverflowCheck(I[BLjava/lang/String;)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 4995
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5006
    :catch_0
    move-exception v0

    .line 5008
    :try_start_1
    invoke-static {v4}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->parseShortAsDouble(ILjava/lang/String;)S
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 5009
    :catch_1
    move-exception v0

    .line 5013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultSet.Invalid_value_for_getShort()_-____96"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 5022
    :cond_8
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 5023
    if-eqz v0, :cond_0

    .line 5027
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    .line 5028
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v0

    int-to-short v1, v0

    goto/16 :goto_0

    .line 5031
    :cond_9
    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_a

    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_a

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_a

    .line 5032
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->parseShortWithOverflowCheck(I[BLjava/lang/String;)S

    move-result v1

    goto/16 :goto_0

    .line 5036
    :cond_a
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->parseShortAsDouble(ILjava/lang/String;)S
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v1

    goto/16 :goto_0

    .line 5038
    :catch_2
    move-exception v0

    move-object v0, v2

    .line 5040
    :goto_3
    :try_start_4
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->parseShortAsDouble(ILjava/lang/String;)S
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v1

    goto/16 :goto_0

    .line 5041
    :catch_3
    move-exception v1

    .line 5045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultSet.Invalid_value_for_getShort()_-____96"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

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

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 5050
    :cond_b
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result v1

    goto/16 :goto_0

    .line 5038
    :catch_4
    move-exception v1

    goto :goto_3

    :cond_c
    move v0, v1

    goto/16 :goto_2
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5059
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getStatement()Ljava/sql/Statement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5102
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5103
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wrapperStatement:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 5104
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wrapperStatement:Ljava/sql/Statement;

    monitor-exit v1

    .line 5121
    :goto_0
    return-object v0

    .line 5107
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    monitor-exit v1

    goto :goto_0

    .line 5108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5110
    :catch_0
    move-exception v0

    .line 5111
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->retainOwningStatement:Z

    if-nez v0, :cond_1

    .line 5112
    const-string v0, "Operation not allowed on closed ResultSet. Statements can be retained over result set closure by setting the connection property \"retainStatementAfterResultSetClose\" to \"true\"."

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 5117
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wrapperStatement:Ljava/sql/Statement;

    if-eqz v0, :cond_2

    .line 5118
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wrapperStatement:Ljava/sql/Statement;

    goto :goto_0

    .line 5121
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5138
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    .line 5140
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->padCharsWithSpace:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 5141
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    .line 5143
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_0

    .line 5144
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getLength()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMaxBytesPerCharacter()I

    move-result v1

    div-int v1, v2, v1

    .line 5146
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 5148
    if-ge v2, v1, :cond_0

    .line 5149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5150
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5152
    sub-int v0, v1, v2

    .line 5154
    sget-object v1, Lcom/mysql/jdbc/ResultSetImpl;->EMPTY_SPACE:[C

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 5156
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5161
    :cond_0
    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5177
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getStringInternal(IZ)Ljava/lang/String;
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 5214
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_c

    .line 5215
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 5216
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 5218
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    if-nez v0, :cond_0

    .line 5219
    const-string v0, "ResultSet.Query_generated_no_fields_for_ResultSet_99"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1002"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 5225
    :cond_0
    add-int/lit8 v0, p1, -0x1

    .line 5227
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5228
    iput-boolean v12, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5328
    :goto_0
    return-object v2

    .line 5233
    :cond_1
    iput-boolean v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5235
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v3, v1, v0

    .line 5239
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    const/16 v4, 0x10

    if-ne v1, v4, :cond_4

    .line 5240
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->isSingleBit()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5241
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    .line 5243
    array-length v1, v0

    if-nez v1, :cond_2

    .line 5244
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 5247
    :cond_2
    aget-byte v0, v0, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 5250
    :cond_3
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 5253
    :cond_4
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 5255
    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v6, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v4, v0, v1, v6}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v1

    .line 5261
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v4, 0xd

    if-ne v0, v4, :cond_7

    .line 5262
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v2, v1

    .line 5263
    goto :goto_0

    .line 5266
    :cond_5
    invoke-direct {p0, v1, p1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getDateFromString(Ljava/lang/String;ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    .line 5268
    if-nez v0, :cond_6

    .line 5269
    iput-boolean v12, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    goto :goto_0

    .line 5274
    :cond_6
    iput-boolean v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5276
    invoke-virtual {v0}, Ljava/sql/Date;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 5281
    :cond_7
    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNoDatetimeStringSync()Z

    move-result v0

    if-nez v0, :cond_8

    .line 5282
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_8
    move-object v2, v1

    .line 5325
    goto :goto_0

    .line 5284
    :pswitch_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->getTimeFromString(Ljava/lang/String;Ljava/util/Calendar;ILjava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v0

    .line 5286
    if-nez v0, :cond_9

    .line 5287
    iput-boolean v12, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    goto/16 :goto_0

    .line 5292
    :cond_9
    iput-boolean v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5294
    invoke-virtual {v0}, Ljava/sql/Time;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 5297
    :pswitch_1
    invoke-direct {p0, v1, p1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getDateFromString(Ljava/lang/String;ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    .line 5299
    if-nez v0, :cond_a

    .line 5300
    iput-boolean v12, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    goto/16 :goto_0

    .line 5305
    :cond_a
    iput-boolean v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5307
    invoke-virtual {v0}, Ljava/sql/Date;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 5309
    :pswitch_2
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v10

    move-object v6, p0

    move v7, p1

    move-object v8, v2

    move-object v9, v1

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestampFromString(ILjava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v0

    .line 5311
    if-nez v0, :cond_b

    .line 5312
    iput-boolean v12, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    goto/16 :goto_0

    .line 5317
    :cond_b
    iput-boolean v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5319
    invoke-virtual {v0}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 5328
    :cond_c
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 5282
    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
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
    .line 5343
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getTimeInternal(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public getTime(ILjava/util/Calendar;)Ljava/sql/Time;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5362
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getTimeInternal(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0
.end method

.method public getTime(Ljava/lang/String;)Ljava/sql/Time;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5377
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getTime(I)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public getTime(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Time;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5396
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getTime(ILjava/util/Calendar;)Ljava/sql/Time;

    move-result-object v0

    return-object v0
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
    .line 5591
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestampInternal(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5611
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestampInternal(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0
.end method

.method public getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5620
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5640
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5944
    iget v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->resultSetType:I

    return v0
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
    .line 6000
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6002
    if-nez v1, :cond_0

    .line 6003
    const/4 v0, 0x0

    .line 6007
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6008
    :catch_0
    move-exception v0

    .line 6009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultSet.Malformed_URL____104"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
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
    .line 6018
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6020
    if-nez v1, :cond_0

    .line 6021
    const/4 v0, 0x0

    .line 6025
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6026
    :catch_0
    move-exception v0

    .line 6027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultSet.Malformed_URL____107"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getUnicodeStream(I)Ljava/io/InputStream;
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
    .line 5967
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_0

    .line 5968
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 5970
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 5973
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBinaryStream(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getUnicodeStream(Ljava/lang/String;)Ljava/io/InputStream;
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
    .line 5985
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getUnicodeStream(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateCount()J
    .locals 2

    .prologue
    .line 5989
    iget-wide v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateCount:J

    return-wide v0
.end method

.method public getUpdateID()J
    .locals 2

    .prologue
    .line 5993
    iget-wide v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateId:J

    return-wide v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6052
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6053
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    monitor-exit v1

    return-object v0

    .line 6054
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initializeFromCachedMetaData(Lcom/mysql/jdbc/CachedResultSetMetaData;)V
    .locals 1
    .parameter

    .prologue
    .line 904
    iget-object v0, p1, Lcom/mysql/jdbc/CachedResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    .line 905
    iget-object v0, p1, Lcom/mysql/jdbc/CachedResultSetMetaData;->columnNameToIndex:Ljava/util/Map;

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    .line 906
    iget-object v0, p1, Lcom/mysql/jdbc/CachedResultSetMetaData;->fullColumnNameToIndex:Ljava/util/Map;

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    .line 907
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->hasBuiltIndexMapping:Z

    .line 908
    return-void
.end method

.method public initializeWithMetadata()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/RowData;->setMetadata([Lcom/mysql/jdbc/Field;)V

    .line 460
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnToIndexCache:Ljava/util/Map;

    .line 462
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->profileSql:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseUsageAdvisor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnUsed:[Z

    .line 464
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->pointOfOrigin:Ljava/lang/String;

    .line 465
    sget v0, Lcom/mysql/jdbc/ResultSetImpl;->resultCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mysql/jdbc/ResultSetImpl;->resultCounter:I

    iput v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->resultId:I

    .line 466
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseUsageAdvisor()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    .line 467
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v0}, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->getInstance(Lcom/mysql/jdbc/MySQLConnection;)Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getGatherPerformanceMetrics()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 471
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->incrementNumberOfResultSetsCreated()V

    .line 473
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 475
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 476
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v0, v1

    .line 478
    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v0

    .line 480
    if-nez v0, :cond_2

    .line 481
    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v0

    .line 484
    :cond_2
    if-eqz v0, :cond_4

    .line 485
    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 486
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 490
    :cond_3
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 494
    :cond_5
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->reportNumberOfTablesAccessed(I)V

    .line 496
    :cond_6
    monitor-exit v2

    .line 497
    return-void

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public insertRow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6068
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public isAfterLast()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6085
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6086
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->isAfterLast()Z

    move-result v0

    .line 6088
    monitor-exit v1

    return v0

    .line 6089
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBeforeFirst()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6106
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6107
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->isBeforeFirst()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 6108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isClosed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6729
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isClosed:Z

    return v0
.end method

.method public isFirst()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6124
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6125
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->isFirst()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 6126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isLast()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6143
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6144
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->isLast()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 6145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public last()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 6202
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 6204
    const/4 v1, 0x1

    .line 6206
    :try_start_0
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v3}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 6226
    :goto_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 6228
    monitor-exit v2

    return v0

    .line 6210
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    if-eqz v0, :cond_1

    .line 6211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 6214
    :cond_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    if-eqz v0, :cond_2

    .line 6215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 6218
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v0, :cond_3

    .line 6219
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ResultSetRow;->closeOpenStreams()V

    .line 6222
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->beforeLast()V

    .line 6223
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->next()Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    move v0, v1

    goto :goto_0

    .line 6229
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public moveToCurrentRow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6250
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public moveToInsertRow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6270
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public next()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 6288
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6290
    :try_start_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    if-eqz v2, :cond_0

    .line 6291
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 6294
    :cond_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    if-eqz v2, :cond_1

    .line 6295
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 6300
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult()Z

    move-result v2

    if-nez v2, :cond_2

    .line 6301
    const-string v0, "ResultSet.ResultSet_is_from_UPDATE._No_Data_115"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 6327
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6305
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v2, :cond_3

    .line 6306
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v2}, Lcom/mysql/jdbc/ResultSetRow;->closeOpenStreams()V

    .line 6309
    :cond_3
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 6324
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 6326
    monitor-exit v1

    return v0

    .line 6312
    :cond_5
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->next()Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 6314
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v2, :cond_4

    .line 6317
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->clearWarnings()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6319
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public populateCachedMetaData(Lcom/mysql/jdbc/CachedResultSetMetaData;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 897
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    iput-object v0, p1, Lcom/mysql/jdbc/CachedResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    .line 898
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    iput-object v0, p1, Lcom/mysql/jdbc/CachedResultSetMetaData;->columnNameToIndex:Ljava/util/Map;

    .line 899
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    iput-object v0, p1, Lcom/mysql/jdbc/CachedResultSetMetaData;->fullColumnNameToIndex:Ljava/util/Map;

    .line 900
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    iput-object v0, p1, Lcom/mysql/jdbc/CachedResultSetMetaData;->metadata:Ljava/sql/ResultSetMetaData;

    .line 901
    return-void
.end method

.method public prev()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 6517
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6519
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->getCurrentRowNumber()I

    move-result v2

    .line 6521
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v3, :cond_0

    .line 6522
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v3}, Lcom/mysql/jdbc/ResultSetRow;->closeOpenStreams()V

    .line 6527
    :cond_0
    add-int/lit8 v3, v2, -0x1

    if-ltz v3, :cond_2

    .line 6528
    add-int/lit8 v0, v2, -0x1

    .line 6529
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2, v0}, Lcom/mysql/jdbc/RowData;->setCurrentRow(I)V

    .line 6530
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2, v0}, Lcom/mysql/jdbc/RowData;->getAt(I)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 6532
    const/4 v0, 0x1

    .line 6543
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 6545
    monitor-exit v1

    return v0

    .line 6533
    :cond_2
    add-int/lit8 v3, v2, -0x1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 6534
    add-int/lit8 v2, v2, -0x1

    .line 6535
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v3, v2}, Lcom/mysql/jdbc/RowData;->setCurrentRow(I)V

    .line 6536
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    goto :goto_0

    .line 6546
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public previous()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6567
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6568
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    if-eqz v0, :cond_0

    .line 6569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 6572
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    if-eqz v0, :cond_1

    .line 6573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 6576
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->prev()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 6577
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public realClose(Z)V
    .locals 24
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 6593
    if-nez v2, :cond_0

    .line 6723
    :goto_0
    return-void

    .line 6597
    :cond_0
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 6601
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mysql/jdbc/ResultSetImpl;->isClosed:Z

    if-eqz v2, :cond_1

    .line 6602
    monitor-exit v18

    goto :goto_0

    .line 6722
    :catchall_0
    move-exception v2

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 6606
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v2, :cond_12

    .line 6610
    if-nez p1, :cond_2

    .line 6611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/ResultSetImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-object/from16 v19, v0

    new-instance v2, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v3, 0x0

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v5, :cond_6

    const-string v5, "N/A"

    :goto_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/mysql/jdbc/ResultSetImpl;->connectionId:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v8, :cond_7

    const/4 v8, -0x1

    :goto_2
    move-object/from16 v0, p0

    iget v9, v0, Lcom/mysql/jdbc/ResultSetImpl;->resultId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    sget-object v14, Lcom/mysql/jdbc/Constants;->MILLIS_I18N:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/ResultSetImpl;->pointOfOrigin:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "ResultSet.ResultSet_implicitly_closed_by_driver"

    invoke-static/range {v17 .. v17}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v2 .. v17}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 6617
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    instance-of v2, v2, Lcom/mysql/jdbc/RowDataStatic;

    if-eqz v2, :cond_4

    .line 6621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getResultSetSizeThreshold()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 6622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/ResultSetImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-object/from16 v19, v0

    new-instance v2, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v3, 0x0

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v5, :cond_8

    const-string v5, "ResultSet.N/A_159"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/mysql/jdbc/ResultSetImpl;->connectionId:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v8, :cond_9

    const/4 v8, -0x1

    :goto_4
    move-object/from16 v0, p0

    iget v9, v0, Lcom/mysql/jdbc/ResultSetImpl;->resultId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    sget-object v14, Lcom/mysql/jdbc/Constants;->MILLIS_I18N:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/ResultSetImpl;->pointOfOrigin:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "ResultSet.Too_Large_Result_Set"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/mysql/jdbc/MySQLConnection;->getResultSetSizeThreshold()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v2 .. v17}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 6630
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->isLast()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 6632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/ResultSetImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-object/from16 v19, v0

    new-instance v2, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v3, 0x0

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v5, :cond_a

    const-string v5, "ResultSet.N/A_159"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_5
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/mysql/jdbc/ResultSetImpl;->connectionId:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v8, :cond_b

    const/4 v8, -0x1

    :goto_6
    move-object/from16 v0, p0

    iget v9, v0, Lcom/mysql/jdbc/ResultSetImpl;->resultId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    sget-object v14, Lcom/mysql/jdbc/Constants;->MILLIS_I18N:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/ResultSetImpl;->pointOfOrigin:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "ResultSet.Possible_incomplete_traversal_of_result_set"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getRow()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v2 .. v17}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 6645
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ResultSetImpl;->columnUsed:[Z

    array-length v2, v2

    if-lez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->wasEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 6646
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v2, "ResultSet.The_following_columns_were_never_referenced"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6648
    const/4 v3, 0x0

    .line 6650
    const/4 v2, 0x0

    move/from16 v23, v2

    move v2, v3

    move/from16 v3, v23

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/ResultSetImpl;->columnUsed:[Z

    array-length v4, v4

    if-ge v3, v4, :cond_11

    .line 6651
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/ResultSetImpl;->columnUsed:[Z

    aget-boolean v4, v4, v3

    if-nez v4, :cond_5

    .line 6652
    if-nez v2, :cond_c

    .line 6653
    const/4 v2, 0x1

    .line 6658
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getFullName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6650
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 6611
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    iget-object v5, v5, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v8}, Lcom/mysql/jdbc/StatementImpl;->getId()I

    move-result v8

    goto/16 :goto_2

    .line 6622
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    iget-object v5, v5, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v8}, Lcom/mysql/jdbc/StatementImpl;->getId()I

    move-result v8

    goto/16 :goto_4

    .line 6632
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    iget-object v5, v5, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    goto/16 :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v8}, Lcom/mysql/jdbc/StatementImpl;->getId()I

    move-result v8

    goto/16 :goto_6

    .line 6655
    :cond_c
    const-string v4, ", "

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_8

    .line 6671
    :catchall_1
    move-exception v2

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-eqz v3, :cond_d

    if-eqz p1, :cond_d

    .line 6672
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/mysql/jdbc/StatementImpl;->removeOpenResultSet(Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    .line 6675
    :cond_d
    const/4 v4, 0x0

    .line 6677
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_e

    .line 6679
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v3}, Lcom/mysql/jdbc/RowData;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 6685
    :cond_e
    :goto_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->statementUsedForFetchingRows:Lcom/mysql/jdbc/PreparedStatement;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_1c

    .line 6687
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->statementUsedForFetchingRows:Lcom/mysql/jdbc/PreparedStatement;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/mysql/jdbc/PreparedStatement;->realClose(ZZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v3, v4

    .line 6697
    :cond_f
    :goto_a
    const/4 v4, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    .line 6698
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    .line 6699
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    .line 6700
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    .line 6701
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mysql/jdbc/ResultSetImpl;->columnToIndexCache:Ljava/util/Map;

    .line 6702
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mysql/jdbc/ResultSetImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 6703
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    .line 6705
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mysql/jdbc/ResultSetImpl;->retainOwningStatement:Z

    if-nez v4, :cond_10

    .line 6706
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    .line 6709
    :cond_10
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mysql/jdbc/ResultSetImpl;->catalog:Ljava/lang/String;

    .line 6710
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mysql/jdbc/ResultSetImpl;->serverInfo:Ljava/lang/String;

    .line 6711
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 6712
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mysql/jdbc/ResultSetImpl;->fastDefaultCal:Ljava/util/Calendar;

    .line 6713
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mysql/jdbc/ResultSetImpl;->fastClientCal:Ljava/util/Calendar;

    .line 6714
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 6716
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mysql/jdbc/ResultSetImpl;->isClosed:Z

    .line 6718
    if-eqz v3, :cond_19

    .line 6719
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 6662
    :cond_11
    if-eqz v2, :cond_12

    .line 6663
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/ResultSetImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-object/from16 v19, v0

    new-instance v2, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v3, 0x0

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v5, :cond_17

    const-string v5, "N/A"

    :goto_b
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/mysql/jdbc/ResultSetImpl;->connectionId:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v8, :cond_18

    const/4 v8, -0x1

    :goto_c
    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    sget-object v14, Lcom/mysql/jdbc/Constants;->MILLIS_I18N:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/ResultSetImpl;->pointOfOrigin:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v2 .. v17}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 6671
    :cond_12
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-eqz v2, :cond_13

    if-eqz p1, :cond_13

    .line 6672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/mysql/jdbc/StatementImpl;->removeOpenResultSet(Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    .line 6675
    :cond_13
    const/4 v3, 0x0

    .line 6677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v2, :cond_14

    .line 6679
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_2

    .line 6685
    :cond_14
    :goto_d
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ResultSetImpl;->statementUsedForFetchingRows:Lcom/mysql/jdbc/PreparedStatement;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v2, :cond_1b

    .line 6687
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/ResultSetImpl;->statementUsedForFetchingRows:Lcom/mysql/jdbc/PreparedStatement;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/mysql/jdbc/PreparedStatement;->realClose(ZZ)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_3

    move-object v2, v3

    .line 6697
    :cond_15
    :goto_e
    const/4 v3, 0x0

    :try_start_c
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    .line 6698
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    .line 6699
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    .line 6700
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    .line 6701
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->columnToIndexCache:Ljava/util/Map;

    .line 6702
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 6703
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    .line 6705
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->retainOwningStatement:Z

    if-nez v3, :cond_16

    .line 6706
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    .line 6709
    :cond_16
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->catalog:Ljava/lang/String;

    .line 6710
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->serverInfo:Ljava/lang/String;

    .line 6711
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 6712
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->fastDefaultCal:Ljava/util/Calendar;

    .line 6713
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->fastClientCal:Ljava/util/Calendar;

    .line 6714
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 6716
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/mysql/jdbc/ResultSetImpl;->isClosed:Z

    .line 6718
    if-eqz v2, :cond_1a

    .line 6719
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 6663
    :cond_17
    :try_start_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    iget-object v5, v5, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    goto/16 :goto_b

    :cond_18
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v8}, Lcom/mysql/jdbc/StatementImpl;->getId()I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result v8

    goto/16 :goto_c

    .line 6671
    :cond_19
    :try_start_e
    throw v2

    .line 6722
    :cond_1a
    monitor-exit v18

    goto/16 :goto_0

    .line 6680
    :catch_0
    move-exception v3

    move-object v4, v3

    .line 6681
    goto/16 :goto_9

    .line 6688
    :catch_1
    move-exception v3

    .line 6689
    if-eqz v4, :cond_f

    .line 6690
    invoke-virtual {v4, v3}, Ljava/sql/SQLException;->setNextException(Ljava/sql/SQLException;)V

    move-object v3, v4

    goto/16 :goto_a

    .line 6680
    :catch_2
    move-exception v2

    move-object v3, v2

    .line 6681
    goto/16 :goto_d

    .line 6688
    :catch_3
    move-exception v2

    .line 6689
    if-eqz v3, :cond_15

    .line 6690
    invoke-virtual {v3, v2}, Ljava/sql/SQLException;->setNextException(Ljava/sql/SQLException;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-object v2, v3

    goto/16 :goto_e

    :cond_1b
    move-object v2, v3

    goto/16 :goto_e

    :cond_1c
    move-object v3, v4

    goto/16 :goto_a
.end method

.method public reallyResult()Z
    .locals 1

    .prologue
    .line 6733
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    if-eqz v0, :cond_0

    .line 6734
    const/4 v0, 0x1

    .line 6737
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult:Z

    goto :goto_0
.end method

.method public redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    .locals 3
    .parameter

    .prologue
    .line 888
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    .line 890
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 891
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Field;->setUseOldNameMetadata(Z)V

    .line 892
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Field;->setConnection(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 890
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 894
    :cond_0
    return-void
.end method

.method public refreshRow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6760
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public relative(I)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 6786
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6788
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 6789
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 6791
    monitor-exit v1

    .line 6803
    :goto_0
    return v0

    .line 6794
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v2, :cond_1

    .line 6795
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v2}, Lcom/mysql/jdbc/ResultSetRow;->closeOpenStreams()V

    .line 6798
    :cond_1
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2, p1}, Lcom/mysql/jdbc/RowData;->moveRowRelative(I)V

    .line 6799
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v3}, Lcom/mysql/jdbc/RowData;->getCurrentRowNumber()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mysql/jdbc/RowData;->getAt(I)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 6801
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 6803
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->isBeforeFirst()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    monitor-exit v1

    goto :goto_0

    .line 6804
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public rowDeleted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6822
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public rowInserted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6839
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public rowUpdated()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6856
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected setBinaryEncoded()V
    .locals 1

    .prologue
    .line 6864
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    .line 6865
    return-void
.end method

.method public setFetchDirection(I)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 6883
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6884
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_0

    .line 6885
    :try_start_0
    const-string v0, "ResultSet.Illegal_value_for_fetch_direction_64"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 6890
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6889
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fetchDirection:I

    .line 6890
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6891
    return-void
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
    .line 6910
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6911
    if-gez p1, :cond_0

    .line 6912
    :try_start_0
    const-string v0, "ResultSet.Value_must_be_between_0_and_getMaxRows()_66"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 6917
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6916
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fetchSize:I

    .line 6917
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6918
    return-void
.end method

.method public setFirstCharOfQuery(C)V
    .locals 2
    .parameter

    .prologue
    .line 6929
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6930
    :try_start_1
    iput-char p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->firstCharOfQuery:C

    .line 6931
    monitor-exit v1

    .line 6935
    return-void

    .line 6931
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 6932
    :catch_0
    move-exception v0

    .line 6933
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected declared-synchronized setNextResultSet(Lcom/mysql/jdbc/ResultSetInternalMethods;)V
    .locals 1
    .parameter

    .prologue
    .line 6943
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->nextResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6944
    monitor-exit p0

    return-void

    .line 6943
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOwningStatement(Lcom/mysql/jdbc/StatementImpl;)V
    .locals 2
    .parameter

    .prologue
    .line 6948
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6949
    :try_start_1
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    .line 6950
    monitor-exit v1

    .line 6954
    return-void

    .line 6950
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 6951
    :catch_0
    move-exception v0

    .line 6952
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected declared-synchronized setResultSetConcurrency(I)V
    .locals 2
    .parameter

    .prologue
    .line 6964
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6965
    :try_start_1
    iput p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->resultSetConcurrency:I

    .line 6966
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6970
    monitor-exit p0

    return-void

    .line 6966
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 6967
    :catch_0
    move-exception v0

    .line 6968
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6964
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setResultSetType(I)V
    .locals 2
    .parameter

    .prologue
    .line 6981
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6982
    :try_start_1
    iput p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->resultSetType:I

    .line 6983
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6987
    monitor-exit p0

    return-void

    .line 6983
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 6984
    :catch_0
    move-exception v0

    .line 6985
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6981
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setServerInfo(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 6997
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6998
    :try_start_1
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->serverInfo:Ljava/lang/String;

    .line 6999
    monitor-exit v1

    .line 7003
    return-void

    .line 6999
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 7000
    :catch_0
    move-exception v0

    .line 7001
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized setStatementUsedForFetchingRows(Lcom/mysql/jdbc/PreparedStatement;)V
    .locals 2
    .parameter

    .prologue
    .line 7007
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7008
    :try_start_1
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->statementUsedForFetchingRows:Lcom/mysql/jdbc/PreparedStatement;

    .line 7009
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7013
    monitor-exit p0

    return-void

    .line 7009
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 7010
    :catch_0
    move-exception v0

    .line 7011
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 7007
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWrapperStatement(Ljava/sql/Statement;)V
    .locals 2
    .parameter

    .prologue
    .line 7021
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7022
    :try_start_1
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wrapperStatement:Ljava/sql/Statement;

    .line 7023
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7027
    monitor-exit p0

    return-void

    .line 7023
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 7024
    :catch_0
    move-exception v0

    .line 7025
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 7021
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 7067
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult:Z

    if-eqz v0, :cond_0

    .line 7068
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7071
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result set representing update count of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public updateArray(ILjava/sql/Array;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7078
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public updateArray(Ljava/lang/String;Ljava/sql/Array;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7085
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public updateAsciiStream(ILjava/io/InputStream;I)V
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
    .line 7107
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V
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
    .line 7128
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/ResultSetImpl;->updateAsciiStream(ILjava/io/InputStream;I)V

    .line 7129
    return-void
.end method

.method public updateBigDecimal(ILjava/math/BigDecimal;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7147
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7165
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateBigDecimal(ILjava/math/BigDecimal;)V

    .line 7166
    return-void
.end method

.method public updateBinaryStream(ILjava/io/InputStream;I)V
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
    .line 7187
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V
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
    .line 7208
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/ResultSetImpl;->updateBinaryStream(ILjava/io/InputStream;I)V

    .line 7209
    return-void
.end method

.method public updateBlob(ILjava/sql/Blob;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7215
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateBlob(Ljava/lang/String;Ljava/sql/Blob;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7222
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateBoolean(IZ)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7241
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateBoolean(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7259
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateBoolean(IZ)V

    .line 7260
    return-void
.end method

.method public updateByte(IB)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7278
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateByte(Ljava/lang/String;B)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7296
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateByte(IB)V

    .line 7297
    return-void
.end method

.method public updateBytes(I[B)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7315
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateBytes(Ljava/lang/String;[B)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7333
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateBytes(I[B)V

    .line 7334
    return-void
.end method

.method public updateCharacterStream(ILjava/io/Reader;I)V
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
    .line 7355
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V
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
    .line 7376
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/ResultSetImpl;->updateCharacterStream(ILjava/io/Reader;I)V

    .line 7377
    return-void
.end method

.method public updateClob(ILjava/sql/Clob;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7383
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public updateClob(Ljava/lang/String;Ljava/sql/Clob;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7390
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateClob(ILjava/sql/Clob;)V

    .line 7391
    return-void
.end method

.method public updateDate(ILjava/sql/Date;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7409
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateDate(Ljava/lang/String;Ljava/sql/Date;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7427
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateDate(ILjava/sql/Date;)V

    .line 7428
    return-void
.end method

.method public updateDouble(ID)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7446
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateDouble(Ljava/lang/String;D)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7464
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/ResultSetImpl;->updateDouble(ID)V

    .line 7465
    return-void
.end method

.method public updateFloat(IF)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7483
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateFloat(Ljava/lang/String;F)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7501
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateFloat(IF)V

    .line 7502
    return-void
.end method

.method public updateInt(II)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7520
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateInt(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7538
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateInt(II)V

    .line 7539
    return-void
.end method

.method public updateLong(IJ)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7557
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateLong(Ljava/lang/String;J)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7575
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/ResultSetImpl;->updateLong(IJ)V

    .line 7576
    return-void
.end method

.method public updateNull(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7592
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateNull(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7608
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->updateNull(I)V

    .line 7609
    return-void
.end method

.method public updateObject(ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7627
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateObject(ILjava/lang/Object;I)V
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
    .line 7650
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7668
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateObject(ILjava/lang/Object;)V

    .line 7669
    return-void
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;I)V
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
    .line 7690
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateObject(ILjava/lang/Object;)V

    .line 7691
    return-void
.end method

.method public updateRef(ILjava/sql/Ref;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7697
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public updateRef(Ljava/lang/String;Ljava/sql/Ref;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7704
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public updateRow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7717
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateShort(IS)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7736
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateShort(Ljava/lang/String;S)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7754
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateShort(IS)V

    .line 7755
    return-void
.end method

.method public updateString(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7773
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7791
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateString(ILjava/lang/String;)V

    .line 7792
    return-void
.end method

.method public updateTime(ILjava/sql/Time;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7810
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateTime(Ljava/lang/String;Ljava/sql/Time;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7828
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateTime(ILjava/sql/Time;)V

    .line 7829
    return-void
.end method

.method public updateTimestamp(ILjava/sql/Timestamp;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7847
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7865
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateTimestamp(ILjava/sql/Timestamp;)V

    .line 7866
    return-void
.end method

.method public wasNull()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 7880
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return v0
.end method
