.class public Lcom/mysql/jdbc/MysqlIO;
.super Ljava/lang/Object;
.source "MysqlIO.java"


# static fields
.field protected static final AUTH_411_OVERHEAD:I = 0x21

.field private static final CLIENT_CAN_HANDLE_EXPIRED_PASSWORD:I = 0x400000

.field private static final CLIENT_COMPRESS:I = 0x20

.field private static final CLIENT_CONNECT_ATTRS:I = 0x100000

.field protected static final CLIENT_CONNECT_WITH_DB:I = 0x8

.field private static final CLIENT_DEPRECATE_EOF:I = 0x1000000

.field private static final CLIENT_FOUND_ROWS:I = 0x2

.field private static final CLIENT_INTERACTIVE:I = 0x400

.field private static final CLIENT_LOCAL_FILES:I = 0x80

.field private static final CLIENT_LONG_FLAG:I = 0x4

.field private static final CLIENT_LONG_PASSWORD:I = 0x1

.field private static final CLIENT_MULTI_RESULTS:I = 0x20000

.field private static final CLIENT_MULTI_STATEMENTS:I = 0x10000

.field private static final CLIENT_PLUGIN_AUTH:I = 0x80000

.field private static final CLIENT_PLUGIN_AUTH_LENENC_CLIENT_DATA:I = 0x200000

.field private static final CLIENT_PROTOCOL_41:I = 0x200

.field protected static final CLIENT_RESERVED:I = 0x4000

.field protected static final CLIENT_SECURE_CONNECTION:I = 0x8000

.field private static final CLIENT_SESSION_TRACK:I = 0x800000

.field protected static final CLIENT_SSL:I = 0x800

.field private static final CLIENT_TRANSACTIONS:I = 0x2000

.field private static final CODE_PAGE_1252:Ljava/lang/String; = "Cp1252"

.field protected static final COMP_HEADER_LENGTH:I = 0x3

.field private static final EXPLAINABLE_STATEMENT:Ljava/lang/String; = "SELECT"

.field private static final EXPLAINABLE_STATEMENT_EXTENSION:[Ljava/lang/String; = null

.field private static final FALSE_SCRAMBLE:Ljava/lang/String; = "xxxxxxxx"

.field protected static final HEADER_LENGTH:I = 0x4

.field protected static final INITIAL_PACKET_SIZE:I = 0x400

.field private static final MAX_PACKET_DUMP_LENGTH:I = 0x400

.field protected static final MAX_QUERY_SIZE_TO_EXPLAIN:I = 0x100000

.field protected static final MAX_QUERY_SIZE_TO_LOG:I = 0x400

.field protected static final MIN_COMPRESS_LEN:I = 0x32

.field private static final NONE:Ljava/lang/String; = "none"

.field protected static final NULL_LENGTH:I = -0x1

.field public static final SEED_LENGTH:I = 0x14

.field static final SERVER_MORE_RESULTS_EXISTS:I = 0x8

.field private static final SERVER_QUERY_NO_GOOD_INDEX_USED:I = 0x10

.field private static final SERVER_QUERY_NO_INDEX_USED:I = 0x20

.field private static final SERVER_QUERY_WAS_SLOW:I = 0x800

.field private static final SERVER_STATUS_AUTOCOMMIT:I = 0x2

.field private static final SERVER_STATUS_CURSOR_EXISTS:I = 0x40

.field private static final SERVER_STATUS_IN_TRANS:I = 0x1

.field protected static final ZERO_DATETIME_VALUE_MARKER:Ljava/lang/String; = "0000-00-00 00:00:00"

.field protected static final ZERO_DATE_VALUE_MARKER:Ljava/lang/String; = "0000-00-00"

.field private static jvmPlatformCharset:Ljava/lang/String;

.field private static maxBufferSize:I


# instance fields
.field private authPluginDataLength:I

.field private authenticationPlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/AuthenticationPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private autoGenerateTestcaseScript:Z

.field private checkPacketSequence:Z

.field private clientDefaultAuthenticationPlugin:Ljava/lang/String;

.field private clientDefaultAuthenticationPluginName:Ljava/lang/String;

.field protected clientParam:J

.field private colDecimalNeedsBump:Z

.field private commandCount:I

.field private compressBufRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/mysql/jdbc/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private compressedPacketSequence:B

.field protected connection:Lcom/mysql/jdbc/MySQLConnection;

.field private deflater:Ljava/util/zip/Deflater;

.field private disabledAuthenticationPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private enablePacketDebug:Z

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field private hadWarnings:Z

.field private has41NewNewProt:Z

.field private hasLongColumnInfo:Z

.field protected host:Ljava/lang/String;

.field private isInteractiveClient:Z

.field protected lastPacketReceivedTimeMs:J

.field protected lastPacketSentTimeMs:J

.field private loadFileBufRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/mysql/jdbc/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private logSlowQueries:Z

.field private maxAllowedPacket:I

.field protected maxThreeBytes:I

.field public mysqlConnection:Ljava/net/Socket;

.field protected mysqlInput:Ljava/io/InputStream;

.field protected mysqlOutput:Ljava/io/BufferedOutputStream;

.field private needToGrabQueryFromPacket:Z

.field private oldServerStatus:I

.field private packetDebugRingBuffer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private packetHeaderBuf:[B

.field private packetSequence:B

.field private packetSequenceReset:Z

.field private platformDbCharsetMatches:Z

.field protected port:I

.field private profileSql:Z

.field private protocolVersion:B

.field private queryBadIndexUsed:Z

.field private queryNoIndexUsed:Z

.field private queryTimingUnits:Ljava/lang/String;

.field private readPacketSequence:B

.field private reusablePacket:Lcom/mysql/jdbc/Buffer;

.field protected seed:Ljava/lang/String;

.field private sendPacket:Lcom/mysql/jdbc/Buffer;

.field protected serverCapabilities:I

.field protected serverCharsetIndex:I

.field private serverDefaultAuthenticationPluginName:Ljava/lang/String;

.field private serverMajorVersion:I

.field private serverMinorVersion:I

.field private serverQueryWasSlow:Z

.field private serverStatus:I

.field private serverSubMinorVersion:I

.field private serverVersion:Ljava/lang/String;

.field private sharedSendPacket:Lcom/mysql/jdbc/Buffer;

.field private slowQueryThreshold:J

.field protected socketFactory:Lcom/mysql/jdbc/SocketFactory;

.field private socketFactoryClassName:Ljava/lang/String;

.field private splitBufRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/mysql/jdbc/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private statementExecutionDepth:I

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

.field private streamingData:Lcom/mysql/jdbc/RowData;

.field private threadId:J

.field private traceProtocol:Z

.field private use41Extensions:Z

.field private useAutoSlowLog:Z

.field private useBufferRowSizeThreshold:I

.field private useCompression:Z

.field private useConnectWithDb:Z

.field private useDirectRowUnpack:Z

.field private useNanosForElapsedTime:Z

.field private useNewLargePackets:Z

.field private useNewUpdateCounts:Z

.field private warningCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 81
    const v0, 0xffff

    sput v0, Lcom/mysql/jdbc/MysqlIO;->maxBufferSize:I

    .line 120
    sput-object v2, Lcom/mysql/jdbc/MysqlIO;->jvmPlatformCharset:Ljava/lang/String;

    .line 129
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "INSERT"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    const-string v3, "UPDATE"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v3, "REPLACE"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "DELETE"

    aput-object v3, v0, v1

    sput-object v0, Lcom/mysql/jdbc/MysqlIO;->EXPLAINABLE_STATEMENT_EXTENSION:[Ljava/lang/String;

    .line 139
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->getEncoding()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/MysqlIO;->jvmPlatformCharset:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 143
    if-eqz v1, :cond_0

    .line 144
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 142
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 143
    :goto_1
    if-eqz v1, :cond_1

    .line 144
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 142
    :cond_1
    :goto_2
    throw v0

    .line 146
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0

    .line 142
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;II)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequenceReset:Z

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetDebugRingBuffer:Ljava/util/LinkedList;

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->host:Ljava/lang/String;

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverVersion:Ljava/lang/String;

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactoryClassName:Ljava/lang/String;

    .line 193
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->colDecimalNeedsBump:Z

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->has41NewNewProt:Z

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->hasLongColumnInfo:Z

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->isInteractiveClient:Z

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->logSlowQueries:Z

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->platformDbCharsetMatches:Z

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->queryBadIndexUsed:Z

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->queryNoIndexUsed:Z

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverQueryWasSlow:Z

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useNewLargePackets:Z

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useNewUpdateCounts:Z

    .line 218
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 219
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    .line 220
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequence:Z

    .line 222
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    .line 223
    const/high16 v0, 0x10

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->maxAllowedPacket:I

    .line 224
    const v0, 0xfd02ff

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    .line 225
    const/16 v0, 0xcea

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->port:I

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverMajorVersion:I

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverMinorVersion:I

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverSubMinorVersion:I

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    .line 233
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 234
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    .line 235
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->enablePacketDebug:Z

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useDirectRowUnpack:Z

    .line 247
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->commandCount:I

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->authPluginDataLength:I

    .line 1388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->authenticationPlugins:Ljava/util/Map;

    .line 1393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->disabledAuthenticationPlugins:Ljava/util/List;

    .line 1397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPlugin:Ljava/lang/String;

    .line 1401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPluginName:Ljava/lang/String;

    .line 1405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverDefaultAuthenticationPluginName:Ljava/lang/String;

    .line 2555
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    .line 276
    iput-object p5, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 278
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEnablePacketDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetDebugRingBuffer:Ljava/util/LinkedList;

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getTraceProtocol()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    .line 283
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoSlowLog()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useAutoSlowLog:Z

    .line 285
    iput p7, p0, Lcom/mysql/jdbc/MysqlIO;->useBufferRowSizeThreshold:I

    .line 286
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseDirectRowUnpack()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useDirectRowUnpack:Z

    .line 288
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLogSlowQueries()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->logSlowQueries:Z

    .line 290
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    .line 291
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    .line 293
    iput p2, p0, Lcom/mysql/jdbc/MysqlIO;->port:I

    .line 294
    iput-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->host:Ljava/lang/String;

    .line 296
    iput-object p4, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactoryClassName:Ljava/lang/String;

    .line 297
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlIO;->createSocketFactory()Lcom/mysql/jdbc/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;

    .line 298
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->host:Ljava/lang/String;

    iget v2, p0, Lcom/mysql/jdbc/MysqlIO;->port:I

    invoke-interface {v0, v1, v2, p3}, Lcom/mysql/jdbc/SocketFactory;->connect(Ljava/lang/String;ILjava/util/Properties;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    if-eqz p6, :cond_1

    .line 305
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0, p6}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 311
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;

    invoke-interface {v0}, Lcom/mysql/jdbc/SocketFactory;->beforeHandshake()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    .line 313
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseReadAheadInput()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 314
    new-instance v0, Lcom/mysql/jdbc/util/ReadAheadInputStream;

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x4000

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getTraceProtocol()Z

    move-result v3

    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mysql/jdbc/util/ReadAheadInputStream;-><init>(Ljava/io/InputStream;IZLcom/mysql/jdbc/log/Log;)V

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    .line 322
    :goto_1
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    .line 324
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getInteractiveClient()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->isInteractiveClient:Z

    .line 325
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getProfileSql()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    .line 326
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoGenerateTestcaseScript()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->autoGenerateTestcaseScript:Z

    .line 328
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->logSlowQueries:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->autoGenerateTestcaseScript:Z

    if-eqz v0, :cond_6

    :cond_2
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->needToGrabQueryFromPacket:Z

    .line 330
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseNanosForElapsedTime()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/mysql/jdbc/TimeUtil;->nanoTimeAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useNanosForElapsedTime:Z

    .line 333
    const-string v0, "Nanoseconds"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->queryTimingUnits:Ljava/lang/String;

    .line 338
    :goto_3
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLogSlowQueries()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 339
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlIO;->calculateSlowQueryThreshold()V

    .line 344
    :cond_3
    return-void

    .line 316
    :cond_4
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->useUnbufferedInput()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 317
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 341
    :catch_0
    move-exception v5

    .line 342
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 319
    :cond_5
    :try_start_3
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    goto/16 :goto_1

    .line 328
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 335
    :cond_7
    const-string v0, "Milliseconds"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->queryTimingUnits:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 306
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method private addAuthenticationPlugin(Lcom/mysql/jdbc/AuthenticationPlugin;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1511
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1512
    invoke-interface {p1}, Lcom/mysql/jdbc/AuthenticationPlugin;->getProtocolPluginName()Ljava/lang/String;

    move-result-object v4

    .line 1513
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->disabledAuthenticationPlugins:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->disabledAuthenticationPlugins:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1514
    :goto_0
    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->disabledAuthenticationPlugins:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->disabledAuthenticationPlugins:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v1

    .line 1516
    :goto_1
    if-nez v0, :cond_0

    if-eqz v5, :cond_4

    .line 1518
    :cond_0
    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPlugin:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1519
    const-string v5, "Connection.BadDisabledAuthenticationPlugin"

    new-array v1, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    move-object v0, v3

    :goto_2
    aput-object v0, v1, v2

    invoke-static {v5, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_1
    move v0, v2

    .line 1513
    goto :goto_0

    :cond_2
    move v5, v2

    .line 1514
    goto :goto_1

    :cond_3
    move-object v0, v4

    .line 1519
    goto :goto_2

    .line 1523
    :cond_4
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->authenticationPlugins:Ljava/util/Map;

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPlugin:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1525
    iput-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPluginName:Ljava/lang/String;

    move v2, v1

    .line 1529
    :cond_5
    return v2
.end method

.method private adjustStartForFieldLength(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x1

    const/16 v0, 0xfb

    .line 764
    if-ge p2, v0, :cond_0

    .line 776
    :goto_0
    return p1

    .line 768
    :cond_0
    if-lt p2, v0, :cond_1

    if-ge p2, v1, :cond_1

    .line 769
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 772
    :cond_1
    if-lt p2, v1, :cond_2

    const/high16 v0, 0x100

    if-ge p2, v0, :cond_2

    .line 773
    add-int/lit8 p1, p1, 0x3

    goto :goto_0

    .line 776
    :cond_2
    add-int/lit8 p1, p1, 0x8

    goto :goto_0
.end method

.method private alignPacketSize(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3123
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, p2, -0x1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method private appendCharsetByteForHandshake(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5042
    const/4 v0, 0x0

    .line 5043
    if-eqz p2, :cond_0

    .line 5044
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {p2, v0}, Lcom/mysql/jdbc/CharsetMapping;->getCollationIndexForJavaEncoding(Ljava/lang/String;Ljava/sql/Connection;)I

    move-result v0

    .line 5046
    :cond_0
    if-nez v0, :cond_1

    .line 5047
    const/16 v0, 0x21

    .line 5049
    :cond_1
    const/16 v1, 0xff

    if-le v0, v1, :cond_2

    .line 5050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid character set index for encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 5053
    :cond_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 5054
    return-void
.end method

.method private appendDeadlockStatusInformation(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 3997
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIncludeInnodbStatusInDeadlockExceptions()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "40"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "41"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    if-nez v0, :cond_1

    .line 4002
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "SHOW ENGINE INNODB STATUS"

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v6, 0x3eb

    const/16 v7, 0x3ef

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/mysql/jdbc/MysqlIO;->sqlQueryDirect(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/Buffer;IIIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 4005
    :try_start_1
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4006
    const-string v0, "\n\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4007
    const-string v0, "Status"

    invoke-interface {v1, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4018
    :goto_0
    if-eqz v1, :cond_1

    .line 4019
    :goto_1
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 4024
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIncludeThreadDumpInDeadlockExceptions()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4025
    const-string v0, "\n\n*** Java threads running at time of deadlock ***\n\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4027
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getThreadMXBean()Ljava/lang/management/ThreadMXBean;

    move-result-object v0

    .line 4028
    invoke-interface {v0}, Ljava/lang/management/ThreadMXBean;->getAllThreadIds()[J

    move-result-object v1

    .line 4030
    const v2, 0x7fffffff

    invoke-interface {v0, v1, v2}, Ljava/lang/management/ThreadMXBean;->getThreadInfo([JI)[Ljava/lang/management/ThreadInfo;

    move-result-object v1

    .line 4031
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4033
    array-length v3, v1

    move v0, v11

    :goto_2
    if-ge v0, v3, :cond_5

    aget-object v4, v1, v0

    .line 4034
    if-eqz v4, :cond_2

    .line 4035
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4033
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4009
    :cond_3
    :try_start_2
    const-string v0, "\n\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4010
    const-string v0, "MysqlIO.NoInnoDBStatusFound"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 4012
    :catch_0
    move-exception v0

    .line 4013
    :goto_3
    :try_start_3
    const-string v2, "\n\n"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4014
    const-string v2, "MysqlIO.InnoDBStatusFailed"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4015
    const-string v2, "\n\n"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4016
    invoke-static {v0}, Lcom/mysql/jdbc/Util;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4018
    if-eqz v1, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v12

    :goto_4
    if-eqz v1, :cond_4

    .line 4019
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 4018
    :cond_4
    throw v0

    .line 4039
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/management/ThreadInfo;

    .line 4042
    const/16 v2, 0x22

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4043
    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->getThreadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4044
    const-string v2, "\" tid="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4045
    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->getThreadId()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4046
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4047
    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->getThreadState()Ljava/lang/Thread$State;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4049
    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->getLockName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 4050
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " on lock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->getLockName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4052
    :cond_7
    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->isSuspended()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4053
    const-string v2, " (suspended)"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4055
    :cond_8
    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->isInNative()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4056
    const-string v2, " (running in native)"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4059
    :cond_9
    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 4061
    array-length v3, v2

    if-lez v3, :cond_a

    .line 4062
    const-string v3, " in "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4063
    aget-object v3, v2, v11

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4064
    const-string v3, "."

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4065
    aget-object v3, v2, v11

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4066
    const-string v3, "()"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4069
    :cond_a
    const-string v3, "\n"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4071
    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->getLockOwnerName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 4072
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t owned by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->getLockOwnerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->getLockOwnerId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4073
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    move v0, v11

    .line 4076
    :goto_5
    array-length v3, v2

    if-ge v0, v3, :cond_6

    .line 4077
    aget-object v3, v2, v0

    .line 4078
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4079
    const-string v3, "\n"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4076
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4083
    :cond_c
    return-void

    .line 4018
    :catchall_1
    move-exception v0

    goto/16 :goto_4

    .line 4012
    :catch_1
    move-exception v0

    move-object v1, v12

    goto/16 :goto_3
.end method

.method private buildResultSetWithRows(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;IIZ)Lcom/mysql/jdbc/ResultSetImpl;
    .locals 6
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
    const/4 v5, 0x0

    .line 3130
    packed-switch p6, :pswitch_data_0

    .line 3146
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->getInstance(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;Z)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v0

    .line 3152
    :goto_0
    return-object v0

    .line 3132
    :pswitch_0
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->getInstance(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;Z)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v0

    .line 3134
    if-eqz p7, :cond_0

    .line 3135
    invoke-virtual {v0}, Lcom/mysql/jdbc/ResultSetImpl;->setBinaryEncoded()V

    .line 3149
    :cond_0
    :goto_1
    invoke-virtual {v0, p5}, Lcom/mysql/jdbc/ResultSetImpl;->setResultSetType(I)V

    .line 3150
    invoke-virtual {v0, p6}, Lcom/mysql/jdbc/ResultSetImpl;->setResultSetConcurrency(I)V

    goto :goto_0

    .line 3141
    :pswitch_1
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v5, 0x1

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->getInstance(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;Z)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v0

    goto :goto_1

    .line 3130
    nop

    :pswitch_data_0
    .packed-switch 0x3ef
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private buildResultSetWithUpdates(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetImpl;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3158
    const/4 v4, 0x0

    .line 3161
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useNewUpdateCounts:Z

    if-eqz v0, :cond_3

    .line 3162
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->newReadLength()J

    move-result-wide v0

    .line 3163
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->newReadLength()J

    move-result-wide v2

    .line 3169
    :goto_0
    iget-boolean v5, p0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    if-eqz v5, :cond_1

    .line 3171
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v5

    iput v5, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 3173
    iget v5, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    invoke-direct {p0, v5}, Lcom/mysql/jdbc/MysqlIO;->checkTransactionState(I)V

    .line 3175
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v5

    iput v5, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    .line 3177
    iget v5, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    if-lez v5, :cond_0

    .line 3178
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    .line 3181
    :cond_0
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->readByte()B

    .line 3183
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlIO;->setServerSlowQueryFlags()V

    .line 3186
    :cond_1
    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->isReadInfoMsgEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3187
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getErrorMessageEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v6, v4

    .line 3197
    :goto_1
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->getInstance(JJLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v1

    .line 3199
    if-eqz v6, :cond_2

    move-object v0, v1

    .line 3200
    check-cast v0, Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, v6}, Lcom/mysql/jdbc/ResultSetImpl;->setServerInfo(Ljava/lang/String;)V

    .line 3203
    :cond_2
    check-cast v1, Lcom/mysql/jdbc/ResultSetImpl;

    return-object v1

    .line 3165
    :cond_3
    :try_start_1
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->readLength()J

    move-result-wide v0

    .line 3166
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->readLength()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 3189
    :catch_0
    move-exception v0

    .line 3190
    const-string v1, "S1000"

    invoke-static {v1}, Lcom/mysql/jdbc/SQLError;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1000"

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;ILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 3192
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3194
    throw v1

    :cond_4
    move-object v6, v4

    goto :goto_1
.end method

.method private calculateSlowQueryThreshold()V
    .locals 4

    .prologue
    .line 2901
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getSlowQueryThresholdMillis()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->slowQueryThreshold:J

    .line 2903
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseNanosForElapsedTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2904
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getSlowQueryThresholdNanos()J

    move-result-wide v0

    .line 2906
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 2907
    iput-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->slowQueryThreshold:J

    .line 2912
    :cond_0
    :goto_0
    return-void

    .line 2909
    :cond_1
    iget-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->slowQueryThreshold:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->slowQueryThreshold:J

    goto :goto_0
.end method

.method private changeDatabaseTo(Ljava/lang/String;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1958
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1973
    :cond_0
    :goto_0
    return-void

    .line 1963
    :cond_1
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1964
    :catch_0
    move-exception v5

    .line 1965
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCreateDatabaseIfNotExist()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1966
    const/4 v1, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE DATABASE IF NOT EXISTS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, v8

    move v4, v7

    move-object v5, v8

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    move-object v0, p0

    move v1, v9

    move-object v2, p1

    move-object v3, v8

    move v4, v7

    move-object v5, v8

    move v6, v7

    .line 1967
    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    goto :goto_0

    .line 1969
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private checkConfidentiality(Lcom/mysql/jdbc/AuthenticationPlugin;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1574
    invoke-interface {p1}, Lcom/mysql/jdbc/AuthenticationPlugin;->requiresConfidentiality()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->isSSLEstablished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1575
    const-string v0, "Connection.AuthenticationPluginRequiresSSL"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/mysql/jdbc/AuthenticationPlugin;->getProtocolPluginName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1578
    :cond_0
    return-void
.end method

.method private checkErrorPacket(I)Lcom/mysql/jdbc/Buffer;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3898
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 3903
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlIO;->reuseAndReadPacket(Lcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/Buffer;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 3912
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket(Lcom/mysql/jdbc/Buffer;)V

    .line 3914
    return-object v0

    .line 3904
    :catch_0
    move-exception v0

    .line 3906
    throw v0

    .line 3907
    :catch_1
    move-exception v5

    .line 3908
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private checkErrorPacket(Lcom/mysql/jdbc/Buffer;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x6

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 3919
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v0

    .line 3922
    if-ne v0, v5, :cond_8

    .line 3926
    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    const/16 v1, 0x9

    if-le v0, v1, :cond_6

    .line 3927
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v7

    .line 3931
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getErrorMessageEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v0

    .line 3933
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x23

    if-ne v1, v4, :cond_4

    .line 3936
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v8, :cond_3

    .line 3937
    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 3938
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3940
    const-string v1, "HY000"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3941
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseSqlStateCodes()Z

    move-result v1

    invoke-static {v7, v1}, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState(IZ)Ljava/lang/String;

    move-result-object v6

    .line 3950
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    .line 3952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3954
    invoke-static {v6}, Lcom/mysql/jdbc/SQLError;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3956
    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getUseOnlyServerErrorMessages()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3957
    if-eqz v4, :cond_1

    .line 3958
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3959
    const-string v5, "MysqlIO.68"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3963
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3965
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseOnlyServerErrorMessages()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3966
    if-eqz v4, :cond_2

    .line 3967
    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3971
    :cond_2
    invoke-direct {p0, v6, v1}, Lcom/mysql/jdbc/MysqlIO;->appendDeadlockStatusInformation(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3973
    if-eqz v6, :cond_5

    const-string v0, "22"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3974
    new-instance v0, Lcom/mysql/jdbc/MysqlDataTruncation;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/mysql/jdbc/MysqlDataTruncation;-><init>(Ljava/lang/String;IZZIII)V

    throw v0

    .line 3944
    :cond_3
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseSqlStateCodes()Z

    move-result v1

    invoke-static {v7, v1}, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState(IZ)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 3947
    :cond_4
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseSqlStateCodes()Z

    move-result v1

    invoke-static {v7, v1}, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState(IZ)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 3976
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    iget-object v10, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move v8, v2

    invoke-static/range {v5 .. v10}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3979
    :cond_6
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getErrorMessageEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v0

    .line 3980
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    .line 3982
    const-string v1, "MysqlIO.70"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v5, :cond_7

    .line 3983
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S0022"

    invoke-static {v3}, Lcom/mysql/jdbc/SQLError;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "S0022"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    iget-object v8, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move v6, v2

    invoke-static/range {v3 .. v8}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3987
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "MysqlIO.72"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3988
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3989
    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S1000"

    invoke-static {v3}, Lcom/mysql/jdbc/SQLError;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    iget-object v8, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move v6, v2

    invoke-static/range {v3 .. v8}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3994
    :cond_8
    return-void
.end method

.method private checkForOutstandingStreamingData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3213
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    if-eqz v0, :cond_1

    .line 3214
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getClobberStreamingResults()Z

    move-result v0

    .line 3216
    if-nez v0, :cond_0

    .line 3217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MysqlIO.39"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MysqlIO.40"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MysqlIO.41"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MysqlIO.42"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3222
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->getOwner()Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->realClose(Z)V

    .line 3225
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    .line 3227
    :cond_1
    return-void
.end method

.method private checkPacketSequencing(B)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/16 v2, -0x80

    .line 3637
    if-ne p1, v2, :cond_0

    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    .line 3638
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Packets out of order, expected packet # -128, but received packet # "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3642
    :cond_0
    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    if-ne v0, v3, :cond_1

    if-eqz p1, :cond_1

    .line 3643
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Packets out of order, expected packet # -1, but received packet # "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3647
    :cond_1
    if-eq p1, v2, :cond_2

    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    if-eq v0, v3, :cond_2

    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    add-int/lit8 v0, v0, 0x1

    if-eq p1, v0, :cond_2

    .line 3648
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Packets out of order, expected packet # "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", but received packet # "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3652
    :cond_2
    return-void
.end method

.method private checkTransactionState(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4970
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4971
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->inTransactionOnServer()Z

    move-result v1

    .line 4973
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 4974
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->transactionCompleted()V

    .line 4978
    :cond_0
    :goto_1
    return-void

    .line 4970
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4975
    :cond_2
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 4976
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->transactionBegun()V

    goto :goto_1
.end method

.method private compressPacket(Lcom/mysql/jdbc/Buffer;II)Lcom/mysql/jdbc/Buffer;
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
    const/4 v0, 0x0

    .line 3247
    const/16 v1, 0x32

    if-ge p3, v1, :cond_0

    .line 3248
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v1

    move v2, p3

    move p3, v0

    .line 3273
    :goto_0
    new-instance v3, Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v4, v2, 0x7

    invoke-direct {v3, v4}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 3275
    invoke-virtual {v3, v0}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 3276
    invoke-virtual {v3, v2}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    .line 3277
    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    invoke-virtual {v3, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 3278
    invoke-virtual {v3, p3}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    .line 3279
    invoke-virtual {v3, v1, p2, v2}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 3281
    return-object v3

    .line 3251
    :cond_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v2

    .line 3252
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 3254
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    if-nez v3, :cond_1

    .line 3255
    new-instance v3, Ljava/util/zip/Deflater;

    invoke-direct {v3}, Ljava/util/zip/Deflater;-><init>()V

    iput-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    .line 3257
    :cond_1
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->reset()V

    .line 3258
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3, v2, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 3259
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    .line 3261
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v2, v1}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v2

    .line 3263
    if-le v2, p3, :cond_2

    .line 3265
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v1

    move v2, p3

    move p3, v0

    .line 3266
    goto :goto_0

    :cond_2
    move p2, v0

    .line 3269
    goto :goto_0
.end method

.method private createSocketFactory()Lcom/mysql/jdbc/SocketFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3326
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactoryClassName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3327
    const-string v0, "MysqlIO.75"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "08001"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3332
    :catch_0
    move-exception v0

    .line 3333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MysqlIO.76"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactoryClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MysqlIO.77"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "08001"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 3336
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3338
    throw v1

    .line 3331
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactoryClassName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/SocketFactory;

    check-cast v0, Lcom/mysql/jdbc/SocketFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method

.method private enqueuePacketForDebugging(ZZI[BLcom/mysql/jdbc/Buffer;)V
    .locals 5
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
    const/4 v3, 0x0

    const/16 v4, 0x400

    .line 3344
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetDebugRingBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getPacketDebugBufferSize()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 3345
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetDebugRingBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 3350
    :cond_0
    if-nez p1, :cond_4

    .line 3351
    invoke-virtual {p5}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3353
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v1, v2, 0x4

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 3355
    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 3356
    invoke-virtual {v0, p4}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 3357
    invoke-virtual {p5, v3, v2}, Lcom/mysql/jdbc/Buffer;->getBytes(II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 3359
    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/Buffer;->dump(I)Ljava/lang/String;

    move-result-object v3

    .line 3361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x60

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3363
    const-string v0, "Server "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3365
    if-eqz p2, :cond_3

    const-string v0, "(re-used) "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3367
    invoke-virtual {p5}, Lcom/mysql/jdbc/Buffer;->toSuperString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3368
    const-string v0, " --------------------> Client\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3369
    const-string v0, "\nPacket payload:\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3370
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3372
    if-ne v2, v4, :cond_1

    .line 3373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nNote: Packet of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes truncated to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes.\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    move-object v0, v1

    .line 3393
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetDebugRingBuffer:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 3394
    return-void

    .line 3365
    :cond_3
    const-string v0, "(new) "

    goto :goto_0

    .line 3376
    :cond_4
    invoke-static {v4, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3378
    invoke-virtual {p5, v1}, Lcom/mysql/jdbc/Buffer;->dump(I)Ljava/lang/String;

    move-result-object v2

    .line 3380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x44

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3382
    const-string v3, "Client "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3383
    invoke-virtual {p5}, Lcom/mysql/jdbc/Buffer;->toSuperString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3384
    const-string v3, "--------------------> Server\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3385
    const-string v3, "\nPacket payload:\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3386
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3388
    if-ne v1, v4, :cond_2

    .line 3389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nNote: Packet of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes truncated to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes.\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private final extractNativeEncodedColumn(Lcom/mysql/jdbc/Buffer;[Lcom/mysql/jdbc/Field;I[[B)V
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
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 4500
    aget-object v0, p2, p3

    .line 4502
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 4569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MysqlIO.97"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MysqlIO.98"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MysqlIO.99"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MysqlIO.100"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4508
    :sswitch_0
    const/4 v0, 0x1

    new-array v0, v0, [B

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v1

    aput-byte v1, v0, v2

    aput-object v0, p4, p3

    .line 4574
    :goto_0
    :sswitch_1
    return-void

    .line 4514
    :sswitch_2
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v0

    aput-object v0, p4, p3

    goto :goto_0

    .line 4519
    :sswitch_3
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v0

    aput-object v0, p4, p3

    goto :goto_0

    .line 4523
    :sswitch_4
    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v0

    aput-object v0, p4, p3

    goto :goto_0

    .line 4527
    :sswitch_5
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v0

    aput-object v0, p4, p3

    goto :goto_0

    .line 4531
    :sswitch_6
    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v0

    aput-object v0, p4, p3

    goto :goto_0

    .line 4535
    :sswitch_7
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    long-to-int v0, v0

    .line 4537
    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v0

    aput-object v0, p4, p3

    goto :goto_0

    .line 4542
    :sswitch_8
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    long-to-int v0, v0

    .line 4544
    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v0

    aput-object v0, p4, p3

    goto :goto_0

    .line 4549
    :sswitch_9
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    long-to-int v0, v0

    .line 4551
    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v0

    aput-object v0, p4, p3

    goto :goto_0

    .line 4565
    :sswitch_a
    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/Buffer;->readLenByteArray(I)[B

    move-result-object v0

    aput-object v0, p4, p3

    goto :goto_0

    .line 4502
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_1
        0x7 -> :sswitch_9
        0x8 -> :sswitch_4
        0x9 -> :sswitch_3
        0xa -> :sswitch_8
        0xb -> :sswitch_7
        0xc -> :sswitch_9
        0xd -> :sswitch_2
        0xf -> :sswitch_a
        0x10 -> :sswitch_a
        0xf5 -> :sswitch_a
        0xf6 -> :sswitch_a
        0xf9 -> :sswitch_a
        0xfa -> :sswitch_a
        0xfb -> :sswitch_a
        0xfc -> :sswitch_a
        0xfd -> :sswitch_a
        0xfe -> :sswitch_a
        0xff -> :sswitch_a
    .end sparse-switch
.end method

.method private getAuthenticationPlugin(Ljava/lang/String;)Lcom/mysql/jdbc/AuthenticationPlugin;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1550
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->authenticationPlugins:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/AuthenticationPlugin;

    .line 1552
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/mysql/jdbc/AuthenticationPlugin;->isReusable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1554
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/AuthenticationPlugin;

    move-object v1, v0

    .line 1555
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getProperties()Ljava/util/Properties;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/mysql/jdbc/AuthenticationPlugin;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1564
    :cond_0
    return-object v1

    .line 1556
    :catch_0
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 1557
    const-string v3, "Connection.BadAuthenticationPlugin"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 1559
    invoke-virtual {v2, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1560
    throw v2
.end method

.method private getConnectionAttributesAsProperties(Ljava/lang/String;)Ljava/util/Properties;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1911
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 1913
    if-eqz p1, :cond_1

    .line 1914
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1915
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 1916
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1917
    if-lez v6, :cond_0

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 1918
    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1915
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1926
    :cond_1
    const-string v0, "_client_name"

    const-string v1, "MySQL Connector Java"

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1927
    const-string v0, "_client_version"

    const-string v1, "5.1.46"

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1928
    const-string v0, "_runtime_vendor"

    sget-object v1, Lcom/mysql/jdbc/NonRegisteringDriver;->RUNTIME_VENDOR:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1929
    const-string v0, "_runtime_version"

    sget-object v1, Lcom/mysql/jdbc/NonRegisteringDriver;->RUNTIME_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1930
    const-string v0, "_client_license"

    const-string v1, "GPL"

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1932
    return-object v2
.end method

.method static getMaxBuf()I
    .locals 1

    .prologue
    .line 967
    sget v0, Lcom/mysql/jdbc/MysqlIO;->maxBufferSize:I

    return v0
.end method

.method private static final getPacketDumpToLog(Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x400

    .line 2990
    if-ge p1, v2, :cond_0

    .line 2991
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/Buffer;->dump(I)Ljava/lang/String;

    move-result-object v0

    .line 3000
    :goto_0
    return-object v0

    .line 2994
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2995
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/Buffer;->dump(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2996
    const-string v1, "MysqlIO.36"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2997
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2998
    const-string v1, "MysqlIO.37"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3000
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadAuthenticationPlugins()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 1426
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultAuthenticationPlugin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPlugin:Ljava/lang/String;

    .line 1427
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPlugin:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPlugin:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1428
    :cond_0
    const-string v0, "Connection.BadDefaultAuthenticationPlugin"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPlugin:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1434
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDisabledAuthenticationPlugins()Ljava/lang/String;

    move-result-object v0

    .line 1435
    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1436
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->disabledAuthenticationPlugins:Ljava/util/List;

    .line 1437
    const-string v2, ","

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 1438
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1439
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1440
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->disabledAuthenticationPlugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1444
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->authenticationPlugins:Ljava/util/Map;

    .line 1447
    new-instance v0, Lcom/mysql/jdbc/authentication/MysqlOldPasswordPlugin;

    invoke-direct {v0}, Lcom/mysql/jdbc/authentication/MysqlOldPasswordPlugin;-><init>()V

    .line 1448
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getProperties()Ljava/util/Properties;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/mysql/jdbc/AuthenticationPlugin;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 1449
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlIO;->addAuthenticationPlugin(Lcom/mysql/jdbc/AuthenticationPlugin;)Z

    move-result v0

    .line 1451
    new-instance v2, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;

    invoke-direct {v2}, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;-><init>()V

    .line 1452
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getProperties()Ljava/util/Properties;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/mysql/jdbc/AuthenticationPlugin;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 1453
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/MysqlIO;->addAuthenticationPlugin(Lcom/mysql/jdbc/AuthenticationPlugin;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 1457
    :cond_3
    new-instance v2, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;

    invoke-direct {v2}, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;-><init>()V

    .line 1458
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getProperties()Ljava/util/Properties;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/mysql/jdbc/AuthenticationPlugin;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 1459
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/MysqlIO;->addAuthenticationPlugin(Lcom/mysql/jdbc/AuthenticationPlugin;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 1463
    :cond_4
    new-instance v2, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;

    invoke-direct {v2}, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;-><init>()V

    .line 1464
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getProperties()Ljava/util/Properties;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/mysql/jdbc/AuthenticationPlugin;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 1465
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/MysqlIO;->addAuthenticationPlugin(Lcom/mysql/jdbc/AuthenticationPlugin;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 1469
    :cond_5
    new-instance v2, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;

    invoke-direct {v2}, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;-><init>()V

    .line 1470
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getProperties()Ljava/util/Properties;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/mysql/jdbc/AuthenticationPlugin;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 1471
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/MysqlIO;->addAuthenticationPlugin(Lcom/mysql/jdbc/AuthenticationPlugin;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 1476
    :cond_6
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getAuthenticationPlugins()Ljava/lang/String;

    move-result-object v2

    .line 1477
    if-eqz v2, :cond_8

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1479
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getProperties()Ljava/util/Properties;

    move-result-object v4

    const-string v5, "Connection.BadAuthenticationPlugin"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v3, v4, v2, v5, v6}, Lcom/mysql/jdbc/Util;->loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;

    move-result-object v2

    .line 1482
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/Extension;

    .line 1483
    check-cast v0, Lcom/mysql/jdbc/AuthenticationPlugin;

    .line 1484
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlIO;->addAuthenticationPlugin(Lcom/mysql/jdbc/AuthenticationPlugin;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_2
    move v2, v0

    .line 1485
    goto :goto_1

    :cond_7
    move v0, v2

    .line 1491
    :cond_8
    if-nez v0, :cond_9

    .line 1492
    const-string v0, "Connection.DefaultAuthenticationPluginIsNotListed"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPlugin:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1497
    :cond_9
    return-void

    :cond_a
    move v0, v2

    goto :goto_2
.end method

.method private negotiateSSLConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
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
    .line 4889
    invoke-static {}, Lcom/mysql/jdbc/ExportControlled;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4890
    new-instance v0, Lcom/mysql/jdbc/ConnectionFeatureNotAvailableException;

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mysql/jdbc/ConnectionFeatureNotAvailableException;-><init>(Lcom/mysql/jdbc/MySQLConnection;JLjava/lang/Exception;)V

    throw v0

    .line 4893
    :cond_0
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 4894
    iget-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v2, 0x8000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 4897
    :cond_1
    iget-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 4899
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v0, p4}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 4901
    iget-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    if-eqz v1, :cond_2

    .line 4902
    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {v0, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4903
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4904
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getEncodingForHandshake()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/MysqlIO;->appendCharsetByteForHandshake(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;)V

    .line 4905
    const/16 v1, 0x17

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 4910
    :goto_0
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 4912
    invoke-static {p0}, Lcom/mysql/jdbc/ExportControlled;->transformSocketToSSLSocket(Lcom/mysql/jdbc/MysqlIO;)V

    .line 4913
    return-void

    .line 4907
    :cond_2
    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    goto :goto_0
.end method

.method private preserveOldTransactionState()V
    .locals 2

    .prologue
    .line 4981
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    and-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 4982
    return-void
.end method

.method private proceedHandshakeWithPluggableAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/Buffer;)V
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
    .line 1605
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->authenticationPlugins:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 1606
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->loadAuthenticationPlugins()V

    .line 1609
    :cond_0
    const/4 v8, 0x0

    .line 1610
    const/16 v6, 0x10

    .line 1611
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    move v5, v4

    .line 1612
    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    .line 1614
    :goto_1
    add-int/2addr v5, v6

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x7

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v12, v4, 0x21

    .line 1616
    const/4 v7, 0x0

    .line 1618
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1619
    const/4 v5, 0x0

    .line 1622
    const/4 v6, 0x0

    .line 1624
    const/16 v4, 0x64

    move v9, v5

    move v5, v4

    move-object v4, v7

    move v7, v6

    move v6, v8

    move-object/from16 v8, p4

    .line 1626
    :goto_2
    add-int/lit8 v10, v5, -0x1

    if-lez v5, :cond_14

    .line 1628
    if-nez v9, :cond_12

    .line 1630
    if-eqz v8, :cond_10

    .line 1632
    invoke-virtual {v8}, Lcom/mysql/jdbc/Buffer;->isOKPacket()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1633
    const-string v5, "Connection.UnexpectedAuthenticationApproval"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v4}, Lcom/mysql/jdbc/AuthenticationPlugin;->getProtocolPluginName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4

    .line 1611
    :cond_1
    const/4 v4, 0x0

    move v5, v4

    goto :goto_0

    .line 1612
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 1640
    :cond_3
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v14, 0xaa201

    or-long/2addr v4, v14

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1645
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getAllowMultiQueries()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1646
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v14, 0x10000

    or-long/2addr v4, v14

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1649
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const/high16 v5, 0x40

    and-int/2addr v4, v5

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getDisconnectOnExpiredPasswords()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1650
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v14, 0x400000

    or-long/2addr v4, v14

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1652
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const/high16 v5, 0x10

    and-int/2addr v4, v5

    if-eqz v4, :cond_6

    const-string v4, "none"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionAttributes()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1653
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v14, 0x100000

    or-long/2addr v4, v14

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1655
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const/high16 v5, 0x20

    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    .line 1656
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v14, 0x200000

    or-long/2addr v4, v14

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1659
    :cond_7
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mysql/jdbc/MysqlIO;->has41NewNewProt:Z

    .line 1660
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    .line 1662
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getUseSSL()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1663
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v12}, Lcom/mysql/jdbc/MysqlIO;->negotiateSSLConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1666
    :cond_8
    const/4 v4, 0x0

    .line 1668
    move-object/from16 v0, p0

    iget v5, v0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const/high16 v9, 0x8

    and-int/2addr v5, v9

    if-eqz v5, :cond_a

    .line 1669
    const/4 v4, 0x5

    const/4 v5, 0x5

    const/16 v9, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v9}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x5

    const/4 v5, 0x6

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v9}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x5

    const/4 v5, 0x6

    const/4 v9, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v9}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1670
    :cond_9
    const-string v4, "ASCII"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/mysql/jdbc/MysqlIO;->authPluginDataLength:I

    invoke-virtual {v8, v4, v5, v9}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;I)Ljava/lang/String;

    move-result-object v4

    .line 1676
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mysql/jdbc/MysqlIO;->getAuthenticationPlugin(Ljava/lang/String;)Lcom/mysql/jdbc/AuthenticationPlugin;

    move-result-object v5

    .line 1677
    if-nez v5, :cond_e

    .line 1681
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPluginName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mysql/jdbc/MysqlIO;->getAuthenticationPlugin(Ljava/lang/String;)Lcom/mysql/jdbc/AuthenticationPlugin;

    move-result-object v4

    move v5, v6

    .line 1694
    :goto_4
    invoke-interface {v4}, Lcom/mysql/jdbc/AuthenticationPlugin;->getProtocolPluginName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/mysql/jdbc/MysqlIO;->serverDefaultAuthenticationPluginName:Ljava/lang/String;

    .line 1696
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mysql/jdbc/MysqlIO;->checkConfidentiality(Lcom/mysql/jdbc/AuthenticationPlugin;)V

    .line 1697
    new-instance v6, Lcom/mysql/jdbc/Buffer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    invoke-static {v9}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    move-object v9, v8

    move v8, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v4

    .line 1774
    :goto_5
    if-eqz v8, :cond_1b

    const/4 v4, 0x0

    :goto_6
    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v7, v0, v4}, Lcom/mysql/jdbc/AuthenticationPlugin;->setAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    invoke-interface {v7, v5, v13}, Lcom/mysql/jdbc/AuthenticationPlugin;->nextAuthenticationStep(Lcom/mysql/jdbc/Buffer;Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 1781
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2a

    .line 1782
    if-nez v9, :cond_1e

    .line 1783
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getEncodingForHandshake()Ljava/lang/String;

    move-result-object v5

    .line 1786
    new-instance v14, Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v4, v12, 0x1

    invoke-direct {v14, v4}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 1787
    const/16 v4, 0x11

    invoke-virtual {v14, v4}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1790
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v5, v4}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1793
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v4

    const/16 v15, 0x100

    if-ge v4, v15, :cond_1c

    .line 1795
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v14, v4}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1796
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v15

    const/16 v16, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v4

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v4}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 1801
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-eqz v4, :cond_1d

    .line 1802
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v5, v4}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1808
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5}, Lcom/mysql/jdbc/MysqlIO;->appendCharsetByteForHandshake(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;)V

    .line 1810
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1813
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const/high16 v15, 0x8

    and-int/2addr v4, v15

    if-eqz v4, :cond_b

    .line 1814
    invoke-interface {v7}, Lcom/mysql/jdbc/AuthenticationPlugin;->getProtocolPluginName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v14, v4, v5, v15}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1818
    :cond_b
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v17, 0x100000

    and-long v15, v15, v17

    const-wide/16 v17, 0x0

    cmp-long v4, v15, v17

    if-eqz v4, :cond_c

    .line 1819
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5, v4}, Lcom/mysql/jdbc/MysqlIO;->sendConnectionAttributes(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1820
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1823
    :cond_c
    invoke-virtual {v14}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    move v5, v10

    move-object v4, v7

    move v7, v6

    move v6, v8

    move-object v8, v9

    move v9, v11

    .line 1825
    goto/16 :goto_2

    .line 1672
    :cond_d
    const-string v4, "ASCII"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 1682
    :cond_e
    sget-object v9, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->PLUGIN_NAME:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->isSSLEstablished()Z

    move-result v9

    if-nez v9, :cond_2b

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v9}, Lcom/mysql/jdbc/MySQLConnection;->getServerRSAPublicKeyFile()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2b

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v9}, Lcom/mysql/jdbc/MySQLConnection;->getAllowPublicKeyRetrieval()Z

    move-result v9

    if-nez v9, :cond_2b

    .line 1690
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPluginName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/mysql/jdbc/MysqlIO;->getAuthenticationPlugin(Ljava/lang/String;)Lcom/mysql/jdbc/AuthenticationPlugin;

    move-result-object v5

    .line 1691
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPluginName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v19, v5

    move v5, v4

    move-object/from16 v4, v19

    goto/16 :goto_4

    :cond_f
    const/4 v4, 0x0

    goto :goto_9

    .line 1700
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->serverDefaultAuthenticationPluginName:Ljava/lang/String;

    if-nez v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPluginName:Ljava/lang/String;

    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mysql/jdbc/MysqlIO;->getAuthenticationPlugin(Ljava/lang/String;)Lcom/mysql/jdbc/AuthenticationPlugin;

    move-result-object v5

    .line 1703
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/mysql/jdbc/MysqlIO;->checkConfidentiality(Lcom/mysql/jdbc/AuthenticationPlugin;)V

    .line 1708
    new-instance v4, Lcom/mysql/jdbc/Buffer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    invoke-static {v9}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    move-object v9, v8

    move v8, v6

    move v6, v7

    move-object v7, v5

    move-object v5, v4

    goto/16 :goto_5

    .line 1700
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->serverDefaultAuthenticationPluginName:Ljava/lang/String;

    goto :goto_a

    .line 1714
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v8

    .line 1715
    const/4 v5, 0x0

    .line 1716
    move-object/from16 v0, p0

    iget-byte v7, v0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    add-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    move-object/from16 v0, p0

    iput-byte v7, v0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 1717
    move-object/from16 v0, p0

    iget-byte v7, v0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    add-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    move-object/from16 v0, p0

    iput-byte v7, v0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    .line 1719
    if-nez v4, :cond_13

    .line 1722
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->serverDefaultAuthenticationPluginName:Ljava/lang/String;

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->serverDefaultAuthenticationPluginName:Ljava/lang/String;

    :goto_b
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mysql/jdbc/MysqlIO;->getAuthenticationPlugin(Ljava/lang/String;)Lcom/mysql/jdbc/AuthenticationPlugin;

    move-result-object v4

    .line 1726
    :cond_13
    invoke-virtual {v8}, Lcom/mysql/jdbc/Buffer;->isOKPacket()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1728
    invoke-virtual {v8}, Lcom/mysql/jdbc/Buffer;->newReadLength()J

    .line 1729
    invoke-virtual {v8}, Lcom/mysql/jdbc/Buffer;->newReadLength()J

    .line 1731
    move-object/from16 v0, p0

    iget v5, v0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    .line 1732
    invoke-virtual {v8}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 1735
    invoke-interface {v4}, Lcom/mysql/jdbc/AuthenticationPlugin;->destroy()V

    .line 1883
    :cond_14
    if-nez v10, :cond_27

    .line 1884
    const-string v4, "CommunicationsException.TooManyAuthenticationPluginNegotiations"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4

    .line 1722
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPluginName:Ljava/lang/String;

    goto :goto_b

    .line 1738
    :cond_16
    invoke-virtual {v8}, Lcom/mysql/jdbc/Buffer;->isAuthMethodSwitchRequestPacket()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 1739
    const/4 v7, 0x0

    .line 1742
    const-string v6, "ASCII"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v6

    .line 1745
    invoke-interface {v4}, Lcom/mysql/jdbc/AuthenticationPlugin;->getProtocolPluginName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17

    .line 1746
    invoke-interface {v4}, Lcom/mysql/jdbc/AuthenticationPlugin;->destroy()V

    .line 1747
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/mysql/jdbc/MysqlIO;->getAuthenticationPlugin(Ljava/lang/String;)Lcom/mysql/jdbc/AuthenticationPlugin;

    move-result-object v4

    .line 1749
    if-nez v4, :cond_18

    .line 1750
    const-string v4, "Connection.BadAuthenticationPlugin"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4

    .line 1754
    :cond_17
    invoke-interface {v4}, Lcom/mysql/jdbc/AuthenticationPlugin;->reset()V

    .line 1757
    :cond_18
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mysql/jdbc/MysqlIO;->checkConfidentiality(Lcom/mysql/jdbc/AuthenticationPlugin;)V

    .line 1758
    new-instance v6, Lcom/mysql/jdbc/Buffer;

    const-string v9, "ASCII"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    move-object v9, v8

    move v8, v7

    move-object v7, v4

    move-object/from16 v19, v6

    move v6, v5

    move-object/from16 v5, v19

    .line 1760
    goto/16 :goto_5

    .line 1762
    :cond_19
    const/4 v7, 0x5

    const/4 v9, 0x5

    const/16 v11, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9, v11}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1763
    new-instance v7, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v8}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v9

    invoke-virtual {v8}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v11

    invoke-virtual {v8}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v14

    sub-int/2addr v11, v14

    invoke-virtual {v8, v9, v11}, Lcom/mysql/jdbc/Buffer;->getBytes(II)[B

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    move-object v9, v8

    move v8, v6

    move v6, v5

    move-object v5, v7

    move-object v7, v4

    goto/16 :goto_5

    .line 1765
    :cond_1a
    const/4 v5, 0x1

    .line 1766
    new-instance v7, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v8}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v11

    invoke-virtual {v8}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v14

    sub-int/2addr v11, v14

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v8, v9, v11}, Lcom/mysql/jdbc/Buffer;->getBytes(II)[B

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    move-object v9, v8

    move v8, v6

    move v6, v5

    move-object v5, v7

    move-object v7, v4

    goto/16 :goto_5

    :cond_1b
    move-object/from16 v4, p2

    .line 1774
    goto/16 :goto_6

    .line 1776
    :catch_0
    move-exception v4

    .line 1777
    invoke-virtual {v4}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static {v5, v6, v4, v7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4

    .line 1798
    :cond_1c
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    goto/16 :goto_7

    .line 1805
    :cond_1d
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    goto/16 :goto_8

    .line 1825
    :cond_1e
    invoke-virtual {v9}, Lcom/mysql/jdbc/Buffer;->isAuthMethodSwitchRequestPacket()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1827
    new-instance v5, Lcom/mysql/jdbc/Buffer;

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v5, v4}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 1828
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v14

    const/4 v15, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v4

    invoke-virtual {v5, v14, v15, v4}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 1829
    invoke-virtual {v5}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    move v5, v10

    move-object v4, v7

    move v7, v6

    move v6, v8

    move-object v8, v9

    move v9, v11

    goto/16 :goto_2

    .line 1831
    :cond_1f
    invoke-virtual {v9}, Lcom/mysql/jdbc/Buffer;->isRawPacket()Z

    move-result v4

    if-nez v4, :cond_20

    if-eqz v6, :cond_22

    .line 1833
    :cond_20
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/Buffer;

    .line 1834
    new-instance v14, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v15

    add-int/lit8 v15, v15, 0x4

    invoke-direct {v14, v15}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 1835
    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v15

    const/16 v16, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v4

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v4}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 1836
    invoke-virtual {v14}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    goto :goto_c

    :cond_21
    move v5, v10

    move-object v4, v7

    move v7, v6

    move v6, v8

    move-object v8, v9

    move v9, v11

    goto/16 :goto_2

    .line 1841
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getEncodingForHandshake()Ljava/lang/String;

    move-result-object v14

    .line 1843
    new-instance v15, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v15, v12}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 1844
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {v15, v4, v5}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1845
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v4, v4

    invoke-virtual {v15, v4, v5}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1847
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/mysql/jdbc/MysqlIO;->appendCharsetByteForHandshake(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;)V

    .line 1849
    const/16 v4, 0x17

    new-array v4, v4, [B

    invoke-virtual {v15, v4}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 1852
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v14, v4}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1854
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const/high16 v5, 0x20

    and-int/2addr v4, v5

    if-eqz v4, :cond_26

    .line 1856
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/Buffer;

    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v5}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/mysql/jdbc/Buffer;->writeLenBytes([B)V

    .line 1863
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-eqz v4, :cond_23

    .line 1864
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v14, v4}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1867
    :cond_23
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const/high16 v5, 0x8

    and-int/2addr v4, v5

    if-eqz v4, :cond_24

    .line 1868
    invoke-interface {v7}, Lcom/mysql/jdbc/AuthenticationPlugin;->getProtocolPluginName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v15, v4, v14, v5}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1872
    :cond_24
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v16, 0x100000

    and-long v4, v4, v16

    const-wide/16 v16, 0x0

    cmp-long v4, v4, v16

    if-eqz v4, :cond_25

    .line 1873
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14, v4}, Lcom/mysql/jdbc/MysqlIO;->sendConnectionAttributes(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1876
    :cond_25
    invoke-virtual {v15}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    move v5, v10

    move-object v4, v7

    move v7, v6

    move v6, v8

    move-object v8, v9

    move v9, v11

    .line 1877
    goto/16 :goto_2

    .line 1859
    :cond_26
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v15, v4}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1860
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v5

    const/16 v16, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v4

    move/from16 v0, v16

    invoke-virtual {v15, v5, v0, v4}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    goto :goto_d

    .line 1890
    :cond_27
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getUseCompression()Z

    move-result v4

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    instance-of v4, v4, Lcom/mysql/jdbc/CompressedInputStream;

    if-nez v4, :cond_28

    .line 1892
    new-instance v4, Ljava/util/zip/Deflater;

    invoke-direct {v4}, Ljava/util/zip/Deflater;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    .line 1893
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    .line 1894
    new-instance v4, Lcom/mysql/jdbc/CompressedInputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-direct {v4, v5, v6}, Lcom/mysql/jdbc/CompressedInputStream;-><init>(Lcom/mysql/jdbc/Connection;Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    .line 1897
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-nez v4, :cond_29

    .line 1898
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/MysqlIO;->changeDatabaseTo(Ljava/lang/String;)V

    .line 1902
    :cond_29
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;

    invoke-interface {v4}, Lcom/mysql/jdbc/SocketFactory;->afterHandshake()Ljava/net/Socket;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1907
    return-void

    .line 1903
    :catch_1
    move-exception v9

    .line 1904
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v10

    invoke-static/range {v4 .. v10}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4

    :cond_2a
    move v5, v10

    move-object v4, v7

    move v7, v6

    move v6, v8

    move-object v8, v9

    move v9, v11

    goto/16 :goto_2

    :cond_2b
    move-object v4, v5

    move v5, v6

    goto/16 :goto_4
.end method

.method private final readFully(Ljava/io/InputStream;[BII)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3004
    if-gez p4, :cond_0

    .line 3005
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    move v0, v1

    .line 3010
    :goto_0
    if-ge v0, p4, :cond_2

    .line 3011
    add-int v2, p3, v0

    sub-int v3, p4, v0

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 3013
    if-gez v2, :cond_1

    .line 3014
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "MysqlIO.EOF"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3017
    :cond_1
    add-int/2addr v0, v2

    .line 3018
    goto :goto_0

    .line 3020
    :cond_2
    return v0
.end method

.method private readRemainingMultiPackets(Lcom/mysql/jdbc/Buffer;B)I
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 3581
    const/4 v0, 0x0

    .line 3584
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    invoke-direct {p0, v1, v2, v4, v8}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v1

    .line 3585
    if-ge v1, v8, :cond_1

    .line 3586
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 3587
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MysqlIO.47"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3590
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int v5, v1, v2

    .line 3591
    if-nez v0, :cond_2

    .line 3592
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v0, v5}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 3595
    :cond_2
    iget-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->useNewLargePackets:Z

    if-nez v1, :cond_3

    if-ne v5, v7, :cond_3

    .line 3596
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    .line 3627
    :goto_0
    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 3628
    invoke-virtual {p1, v7}, Lcom/mysql/jdbc/Buffer;->setWasMultiPacket(Z)V

    .line 3629
    return v5

    .line 3600
    :cond_3
    add-int/lit8 v1, p2, 0x1

    int-to-byte p2, v1

    .line 3601
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    if-eq p2, v1, :cond_4

    .line 3602
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MysqlIO.49"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3606
    :cond_4
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 3609
    invoke-virtual {v0, v5}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    .line 3612
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v1

    .line 3615
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-direct {p0, v2, v1, v4, v5}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v6

    .line 3617
    if-eq v6, v5, :cond_5

    .line 3618
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MysqlIO.50"

    invoke-static {v8}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "MysqlIO.51"

    invoke-static {v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v5

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3624
    :cond_5
    invoke-virtual {p1, v1, v4, v5}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 3625
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    if-eq v5, v1, :cond_0

    goto :goto_0
.end method

.method private final readServerStatusForResultSets(Lcom/mysql/jdbc/Buffer;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 3285
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    if-eqz v0, :cond_2

    .line 3286
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    .line 3288
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->isEOFDeprecated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3290
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->newReadLength()J

    .line 3291
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->newReadLength()J

    .line 3293
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    .line 3294
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 3295
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlIO;->checkTransactionState(I)V

    .line 3297
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    .line 3298
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    if-lez v0, :cond_0

    .line 3299
    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    .line 3302
    :cond_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    .line 3304
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isReadInfoMsgEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3305
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getErrorMessageEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    .line 3320
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlIO;->setServerSlowQueryFlags()V

    .line 3322
    :cond_2
    return-void

    .line 3310
    :cond_3
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    .line 3311
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    if-lez v0, :cond_4

    .line 3312
    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    .line 3315
    :cond_4
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    .line 3316
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 3317
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlIO;->checkTransactionState(I)V

    goto :goto_0
.end method

.method private readSingleRowSet(JIIZ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/RowData;
    .locals 11
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
    .line 3398
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3400
    invoke-static/range {p6 .. p6}, Lcom/mysql/jdbc/MysqlIO;->useBufferRowExplicit([Lcom/mysql/jdbc/Field;)Z

    move-result v6

    .line 3403
    long-to-int v2, p1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v1, p6

    move/from16 v3, p5

    move v4, p4

    invoke-virtual/range {v0 .. v8}, Lcom/mysql/jdbc/MysqlIO;->nextRow([Lcom/mysql/jdbc/Field;IZIZZZLcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v1

    .line 3405
    const/4 v0, 0x0

    .line 3407
    if-eqz v1, :cond_3

    .line 3408
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3409
    const/4 v0, 0x1

    move v9, v0

    move-object v0, v1

    .line 3412
    :goto_0
    if-eqz v0, :cond_1

    .line 3413
    long-to-int v2, p1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v1, p6

    move/from16 v3, p5

    move v4, p4

    invoke-virtual/range {v0 .. v8}, Lcom/mysql/jdbc/MysqlIO;->nextRow([Lcom/mysql/jdbc/Field;IZIZZZLcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v1

    .line 3415
    if-eqz v1, :cond_2

    .line 3416
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    if-ge v9, p3, :cond_2

    .line 3417
    :cond_0
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3418
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    move-object v0, v1

    goto :goto_0

    .line 3423
    :cond_1
    new-instance v0, Lcom/mysql/jdbc/RowDataStatic;

    invoke-direct {v0, v10}, Lcom/mysql/jdbc/RowDataStatic;-><init>(Ljava/util/List;)V

    .line 3425
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move v9, v0

    move-object v0, v1

    goto :goto_0
.end method

.method private reclaimLargeReusablePacket()V
    .locals 2

    .prologue
    .line 3450
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getCapacity()I

    move-result v0

    const/high16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 3451
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    .line 3453
    :cond_0
    return-void
.end method

.method private reclaimLargeSharedSendPacket()V
    .locals 2

    .prologue
    .line 4180
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getCapacity()I

    move-result v0

    const/high16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 4181
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    .line 4183
    :cond_0
    return-void
.end method

.method private final reuseAndReadPacket(Lcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/Buffer;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3462
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/MysqlIO;->reuseAndReadPacket(Lcom/mysql/jdbc/Buffer;I)Lcom/mysql/jdbc/Buffer;

    move-result-object v0

    return-object v0
.end method

.method private final reuseAndReadPacket(Lcom/mysql/jdbc/Buffer;I)Lcom/mysql/jdbc/Buffer;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3468
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->setWasMultiPacket(Z)V

    .line 3471
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 3472
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 3474
    if-ge v0, v4, :cond_0

    .line 3475
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 3476
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MysqlIO.43"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 3561
    :catch_0
    move-exception v5

    .line 3562
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3479
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int v8, v0, v1

    .line 3484
    :goto_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    if-eqz v0, :cond_1

    .line 3485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3487
    const-string v1, "MysqlIO.44"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3488
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3489
    const-string v1, "MysqlIO.45"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3490
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/mysql/jdbc/StringUtils;->dumpAsHex([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3492
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 3495
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v1, 0x3

    aget-byte v9, v0, v1

    .line 3497
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequenceReset:Z

    if-nez v0, :cond_5

    .line 3498
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->enablePacketDebug:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequence:Z

    if-eqz v0, :cond_2

    .line 3499
    invoke-direct {p0, v9}, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequencing(B)V

    .line 3505
    :cond_2
    :goto_1
    iput-byte v9, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    .line 3508
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 3514
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v0

    array-length v0, v0

    if-gt v0, v8, :cond_3

    .line 3515
    add-int/lit8 v0, v8, 0x1

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->setByteBuffer([B)V

    .line 3519
    :cond_3
    invoke-virtual {p1, v8}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    .line 3522
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v8}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 3524
    if-eq v0, v8, :cond_6

    .line 3525
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Short read, expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, only read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 3564
    :catch_1
    move-exception v0

    .line 3567
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3571
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/mysql/jdbc/MySQLConnection;->realClose(ZZZLjava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 3574
    :goto_3
    throw v0

    :cond_4
    move v8, p2

    .line 3481
    goto/16 :goto_0

    .line 3502
    :cond_5
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequenceReset:Z

    goto :goto_1

    .line 3528
    :cond_6
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    if-eqz v0, :cond_7

    .line 3529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3531
    const-string v1, "MysqlIO.46"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3532
    invoke-static {p1, v8}, Lcom/mysql/jdbc/MysqlIO;->getPacketDumpToLog(Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3534
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 3537
    :cond_7
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->enablePacketDebug:Z

    if-eqz v0, :cond_8

    .line 3538
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/MysqlIO;->enqueuePacketForDebugging(ZZI[BLcom/mysql/jdbc/Buffer;)V

    .line 3543
    :cond_8
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    if-ne v8, v0, :cond_b

    .line 3544
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 3549
    invoke-direct {p0, p1, v9}, Lcom/mysql/jdbc/MysqlIO;->readRemainingMultiPackets(Lcom/mysql/jdbc/Buffer;B)I

    move-result v0

    move v1, v0

    move v0, v6

    .line 3552
    :goto_4
    if-nez v0, :cond_9

    .line 3553
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v0

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 3556
    :cond_9
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMaintainTimeStats()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3557
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    .line 3560
    :cond_a
    return-object p1

    .line 3568
    :catch_2
    move-exception v1

    goto :goto_2

    .line 3572
    :catch_3
    move-exception v1

    goto :goto_3

    :cond_b
    move v0, v7

    move v1, v8

    goto :goto_4
.end method

.method private secureAuth(Lcom/mysql/jdbc/Buffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
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
    const/4 v2, 0x1

    const/16 v4, 0x18

    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 4211
    if-nez p1, :cond_0

    .line 4212
    new-instance p1, Lcom/mysql/jdbc/Buffer;

    invoke-direct {p1, p2}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 4215
    :cond_0
    if-eqz p6, :cond_1

    .line 4216
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    if-eqz v0, :cond_5

    .line 4217
    invoke-virtual {p0, v1, v2, v2}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4218
    iget-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {p1, v0, v1}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4219
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4222
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 4225
    const/16 v0, 0x17

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 4237
    :cond_1
    :goto_0
    const-string v0, "Cp1252"

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p1, p3, v0, v1}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4239
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    .line 4241
    const-string v0, "xxxxxxxx"

    const-string v1, "Cp1252"

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p1, v0, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4247
    :goto_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-eqz v0, :cond_2

    .line 4248
    const-string v0, "Cp1252"

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p1, p5, v0, v1}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4251
    :cond_2
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 4256
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 4257
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->readPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v0

    .line 4259
    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 4261
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v0

    .line 4263
    array-length v1, v0

    if-ne v1, v4, :cond_3

    aget-byte v1, v0, v3

    if-eqz v1, :cond_3

    .line 4265
    aget-byte v1, v0, v3

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_7

    .line 4268
    :try_start_0
    invoke-static {p4}, Lcom/mysql/jdbc/Security;->passwordHashStage1(Ljava/lang/String;)[B

    move-result-object v1

    .line 4271
    array-length v2, v1

    new-array v2, v2, [B

    .line 4272
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4275
    invoke-static {v2, v0}, Lcom/mysql/jdbc/Security;->passwordHashStage2([B[B)[B

    move-result-object v2

    .line 4277
    array-length v3, v0

    add-int/lit8 v3, v3, -0x4

    new-array v3, v3, [B

    .line 4279
    const/4 v4, 0x4

    const/4 v5, 0x0

    array-length v6, v0

    add-int/lit8 v6, v6, -0x4

    invoke-static {v0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4281
    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 4284
    const/16 v4, 0x14

    invoke-static {v3, v0, v2, v4}, Lcom/mysql/jdbc/Security;->xorString([B[B[BI)V

    .line 4287
    const/16 v2, 0x14

    invoke-static {v0, v1, v1, v2}, Lcom/mysql/jdbc/Security;->xorString([B[B[BI)V

    .line 4289
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    const/16 v2, 0x19

    invoke-direct {v0, v2}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 4290
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 4292
    iget-byte v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 4294
    const/16 v1, 0x18

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4329
    :cond_3
    :goto_2
    return-void

    .line 4227
    :cond_4
    iget-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {p1, v0, v1}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4228
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    goto/16 :goto_0

    .line 4231
    :cond_5
    iget-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 4232
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    goto/16 :goto_0

    .line 4244
    :cond_6
    const-string v0, ""

    const-string v1, "Cp1252"

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p1, v0, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    goto/16 :goto_1

    .line 4295
    :catch_0
    move-exception v0

    .line 4296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MysqlIO.91"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MysqlIO.92"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4302
    :cond_7
    :try_start_1
    invoke-static {p4}, Lcom/mysql/jdbc/Security;->createKeyFromOldPassword(Ljava/lang/String;)[B

    move-result-object v1

    .line 4305
    array-length v2, v0

    add-int/lit8 v2, v2, -0x4

    new-array v2, v2, [B

    .line 4307
    const/4 v3, 0x4

    const/4 v4, 0x0

    array-length v5, v0

    add-int/lit8 v5, v5, -0x4

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4309
    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 4312
    const/16 v3, 0x14

    invoke-static {v2, v0, v1, v3}, Lcom/mysql/jdbc/Security;->xorString([B[B[BI)V

    .line 4315
    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/mysql/jdbc/Util;->scramble(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4317
    new-instance v1, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v1, p2}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 4318
    const-string v2, "Cp1252"

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1, v0, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4319
    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 4321
    const/16 v0, 0x18

    invoke-direct {p0, v1, v0}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 4322
    :catch_1
    move-exception v0

    .line 4323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MysqlIO.91"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MysqlIO.92"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private final send(Lcom/mysql/jdbc/Buffer;I)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 3680
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->maxAllowedPacket:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->maxAllowedPacket:I

    if-le p2, v0, :cond_0

    .line 3681
    new-instance v0, Lcom/mysql/jdbc/PacketTooBigException;

    int-to-long v1, p2

    iget v3, p0, Lcom/mysql/jdbc/MysqlIO;->maxAllowedPacket:I

    int-to-long v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mysql/jdbc/PacketTooBigException;-><init>(JJ)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3748
    :catch_0
    move-exception v5

    .line 3749
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3684
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverMajorVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_5

    add-int/lit8 v0, p2, -0x4

    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    if-ge v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    if-eqz v0, :cond_5

    add-int/lit8 v0, p2, -0x4

    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    add-int/lit8 v1, v1, -0x3

    if-lt v0, v1, :cond_5

    .line 3686
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/MysqlIO;->sendSplitPackets(Lcom/mysql/jdbc/Buffer;I)V

    .line 3734
    :goto_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->enablePacketDebug:Z

    if-eqz v0, :cond_2

    .line 3735
    const/4 v1, 0x1

    const/4 v2, 0x0

    add-int/lit8 v3, p2, 0x5

    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/MysqlIO;->enqueuePacketForDebugging(ZZI[BLcom/mysql/jdbc/Buffer;)V

    .line 3741
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    if-ne p1, v0, :cond_3

    .line 3742
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlIO;->reclaimLargeSharedSendPacket()V

    .line 3745
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMaintainTimeStats()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3746
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    .line 3752
    :cond_4
    return-void

    .line 3689
    :cond_5
    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 3692
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 3693
    add-int/lit8 v0, p2, -0x4

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    .line 3694
    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 3696
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    if-eqz v0, :cond_7

    .line 3697
    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    .line 3700
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/mysql/jdbc/MysqlIO;->compressPacket(Lcom/mysql/jdbc/Buffer;II)Lcom/mysql/jdbc/Buffer;

    move-result-object v0

    .line 3701
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    .line 3703
    iget-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    if-eqz v2, :cond_6

    .line 3704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3706
    const-string v3, "MysqlIO.57"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3707
    invoke-static {v0, v1}, Lcom/mysql/jdbc/MysqlIO;->getPacketDumpToLog(Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3708
    const-string v3, "MysqlIO.58"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3709
    invoke-static {p1, p2}, Lcom/mysql/jdbc/MysqlIO;->getPacketDumpToLog(Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3711
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    :cond_6
    move p2, v1

    .line 3730
    :goto_1
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 3731
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    goto/16 :goto_0

    .line 3715
    :cond_7
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    if-eqz v0, :cond_8

    .line 3716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3718
    const-string v1, "MysqlIO.59"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3719
    const-string v1, "host: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3720
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3721
    const-string v1, "\' threadId: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3722
    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->threadId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3723
    const-string v1, "\'\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3724
    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->dump(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3726
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_8
    move-object v0, p1

    goto :goto_1
.end method

.method private sendConnectionAttributes(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1936
    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionAttributes()Ljava/lang/String;

    move-result-object v2

    .line 1938
    new-instance v1, Lcom/mysql/jdbc/Buffer;

    const/16 v3, 0x64

    invoke-direct {v1, v3}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 1941
    :try_start_0
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/MysqlIO;->getConnectionAttributesAsProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v9

    .line 1943
    invoke-virtual {v9}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1944
    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v6

    move-object v3, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/Buffer;->writeLenString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;ZLcom/mysql/jdbc/MySQLConnection;)V

    .line 1945
    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v6

    move-object v3, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/Buffer;->writeLenString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;ZLcom/mysql/jdbc/MySQLConnection;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1948
    :catch_0
    move-exception v2

    .line 1952
    :cond_0
    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1953
    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1, v2, v3, v1}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 1955
    return-void
.end method

.method private final sendFileToServer(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;)Lcom/mysql/jdbc/ResultSetImpl;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x1000

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 3765
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    if-eqz v0, :cond_0

    .line 3766
    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    .line 3769
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->loadFileBufRef:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_4

    move-object v0, v1

    .line 3771
    :goto_0
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getMaxAllowedPacket()I

    move-result v2

    add-int/lit8 v2, v2, -0xc

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getMaxAllowedPacket()I

    move-result v3

    add-int/lit8 v3, v3, -0x10

    invoke-direct {p0, v3, v7}, Lcom/mysql/jdbc/MysqlIO;->alignPacketSize(II)I

    move-result v3

    add-int/lit8 v3, v3, -0xc

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3776
    const v3, 0xffff4

    const v4, 0xffff0

    invoke-direct {p0, v4, v7}, Lcom/mysql/jdbc/MysqlIO;->alignPacketSize(II)I

    move-result v4

    add-int/lit8 v4, v4, -0xc

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3778
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3780
    if-nez v0, :cond_1

    .line 3782
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v3, v2, 0x4

    invoke-direct {v0, v3}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 3783
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->loadFileBufRef:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 3793
    :cond_1
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 3794
    invoke-direct {p0, v0, v6}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 3796
    new-array v4, v2, [B

    .line 3801
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getAllowLoadLocalInfile()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3802
    const-string v2, "MysqlIO.LoadDataLocalNotAllowed"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3838
    :catch_0
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    .line 3839
    :goto_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MysqlIO.60"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3841
    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getParanoid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3842
    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3843
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3844
    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3847
    :cond_2
    const-string v4, "MysqlIO.63"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3849
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getParanoid()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3850
    const-string v4, "MysqlIO.64"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3851
    invoke-static {v1}, Lcom/mysql/jdbc/Util;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3854
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3856
    :catchall_0
    move-exception v1

    :goto_2
    if-eqz v2, :cond_a

    .line 3858
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 3856
    :goto_3
    throw v1

    .line 3769
    :cond_4
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->loadFileBufRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/Buffer;

    goto/16 :goto_0

    .line 3784
    :catch_1
    move-exception v0

    .line 3785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not allocate packet of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes required for LOAD DATA LOCAL INFILE operation."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Try increasing max heap allocation for JVM or decreasing server variable \'max_allowed_packet\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1001"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3808
    :cond_5
    if-eqz p1, :cond_c

    .line 3809
    :try_start_4
    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getLocalInfileInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object v3, v2

    .line 3812
    :goto_4
    if-eqz v3, :cond_6

    .line 3813
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v1, v2

    .line 3833
    :goto_5
    :try_start_5
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    if-eq v2, v5, :cond_9

    .line 3834
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 3835
    const/4 v3, 0x0

    invoke-virtual {v0, v4, v3, v2}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 3836
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    .line 3838
    :catch_2
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_1

    .line 3814
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getAllowUrlInLocalInfile()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3815
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    goto :goto_5

    .line 3818
    :cond_7
    const/16 v2, 0x3a

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v2

    if-eq v2, v5, :cond_8

    .line 3820
    :try_start_7
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3821
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    move-object v1, v2

    .line 3825
    goto :goto_5

    .line 3822
    :catch_3
    move-exception v2

    .line 3824
    :try_start_8
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 3825
    goto :goto_5

    .line 3827
    :cond_8
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-object v1, v2

    goto :goto_5

    .line 3856
    :cond_9
    if-eqz v1, :cond_b

    .line 3858
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 3876
    :goto_6
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 3877
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 3879
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v0

    .line 3881
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/MysqlIO;->buildResultSetWithUpdates(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v0

    return-object v0

    .line 3869
    :cond_a
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 3870
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 3871
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    goto/16 :goto_3

    .line 3859
    :catch_4
    move-exception v0

    .line 3860
    const-string v1, "MysqlIO.65"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 3863
    throw v0

    .line 3869
    :cond_b
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 3870
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 3871
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    goto :goto_6

    .line 3859
    :catch_5
    move-exception v0

    .line 3860
    const-string v1, "MysqlIO.65"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 3863
    throw v0

    .line 3856
    :catchall_1
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_2

    :catchall_2
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_2

    :cond_c
    move-object v3, v1

    goto/16 :goto_4
.end method

.method private final sendSplitPackets(Lcom/mysql/jdbc/Buffer;I)V
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 4095
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->splitBufRef:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_3

    move-object v3, v4

    .line 4096
    :goto_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->compressBufRef:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_4

    :cond_0
    move-object v0, v4

    .line 4102
    :goto_1
    if-nez v3, :cond_b

    .line 4103
    new-instance v3, Lcom/mysql/jdbc/Buffer;

    iget v4, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v3, v4}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 4104
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->splitBufRef:Ljava/lang/ref/SoftReference;

    move-object v6, v3

    .line 4106
    :goto_2
    iget-boolean v3, p0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    if-eqz v3, :cond_6

    .line 4107
    iget v3, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    div-int v3, p2, v3

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v3, p2

    .line 4108
    if-nez v0, :cond_5

    .line 4109
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v0, v3}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 4110
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->compressBufRef:Ljava/lang/ref/SoftReference;

    move-object v5, v0

    .line 4117
    :goto_3
    add-int/lit8 v3, p2, -0x4

    .line 4118
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    .line 4120
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v7

    move v4, v2

    move v2, v1

    .line 4125
    :goto_4
    if-ltz v3, :cond_8

    .line 4126
    iget-byte v8, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    add-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    iput-byte v8, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 4128
    if-ge v3, v0, :cond_1

    move v0, v3

    .line 4132
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 4133
    invoke-virtual {v6, v0}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    .line 4134
    iget-byte v8, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    invoke-virtual {v6, v8}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 4135
    if-lez v3, :cond_2

    .line 4136
    invoke-virtual {v6}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v8

    const/4 v9, 0x4

    invoke-static {v7, v4, v8, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4139
    :cond_2
    iget-boolean v8, p0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    if-eqz v8, :cond_7

    .line 4140
    invoke-virtual {v6}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v10

    add-int/lit8 v11, v0, 0x4

    invoke-static {v8, v9, v10, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4141
    add-int/lit8 v8, v0, 0x4

    add-int/2addr v2, v8

    .line 4147
    :goto_5
    add-int/2addr v4, v0

    .line 4148
    iget v8, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    sub-int/2addr v3, v8

    goto :goto_4

    .line 4095
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->splitBufRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/Buffer;

    move-object v3, v0

    goto/16 :goto_0

    .line 4096
    :cond_4
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->compressBufRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/Buffer;

    goto/16 :goto_1

    .line 4111
    :cond_5
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v4

    if-ge v4, v3, :cond_6

    .line 4112
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 4113
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    :cond_6
    move-object v5, v0

    goto :goto_3

    .line 4143
    :cond_7
    iget-object v8, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v9

    const/4 v10, 0x0

    add-int/lit8 v11, v0, 0x4

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 4144
    iget-object v8, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 4173
    :catch_0
    move-exception v5

    .line 4174
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4153
    :cond_8
    :try_start_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    if-eqz v0, :cond_a

    .line 4156
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    add-int/lit8 v0, v0, -0x3

    move v12, v1

    move v1, v2

    move v2, v12

    .line 4157
    :goto_6
    if-ltz v1, :cond_a

    .line 4158
    iget-byte v3, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    .line 4160
    if-ge v1, v0, :cond_9

    move v0, v1

    .line 4164
    :cond_9
    invoke-direct {p0, v5, v2, v0}, Lcom/mysql/jdbc/MysqlIO;->compressPacket(Lcom/mysql/jdbc/Buffer;II)Lcom/mysql/jdbc/Buffer;

    move-result-object v3

    .line 4165
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v4

    .line 4166
    iget-object v6, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 4167
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 4169
    add-int/2addr v2, v0

    .line 4170
    iget v3, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, -0x3

    sub-int/2addr v1, v3

    .line 4171
    goto :goto_6

    .line 4177
    :cond_a
    return-void

    :cond_b
    move-object v6, v3

    goto/16 :goto_2
.end method

.method private setServerSlowQueryFlags()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3207
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->queryBadIndexUsed:Z

    .line 3208
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->queryNoIndexUsed:Z

    .line 3209
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->serverQueryWasSlow:Z

    .line 3210
    return-void

    :cond_0
    move v0, v2

    .line 3207
    goto :goto_0

    :cond_1
    move v0, v2

    .line 3208
    goto :goto_1

    :cond_2
    move v1, v2

    .line 3209
    goto :goto_2
.end method

.method private final skipFully(Ljava/io/InputStream;J)J
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 3024
    cmp-long v0, p2, v2

    if-gez v0, :cond_0

    .line 3025
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Negative skip length not allowed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-wide v0, v2

    .line 3030
    :goto_0
    cmp-long v4, v0, p2

    if-gez v4, :cond_2

    .line 3031
    sub-long v4, p2, v0

    invoke-virtual {p1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .line 3033
    cmp-long v6, v4, v2

    if-gez v6, :cond_1

    .line 3034
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "MysqlIO.EOF"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3037
    :cond_1
    add-long/2addr v0, v4

    .line 3038
    goto :goto_0

    .line 3040
    :cond_2
    return-wide v0
.end method

.method private final skipLengthEncodedInteger(Ljava/io/InputStream;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3044
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 3046
    packed-switch v0, :pswitch_data_0

    .line 3057
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 3048
    :pswitch_0
    const-wide/16 v0, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/mysql/jdbc/MysqlIO;->skipFully(Ljava/io/InputStream;J)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3051
    :pswitch_1
    const-wide/16 v0, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/mysql/jdbc/MysqlIO;->skipFully(Ljava/io/InputStream;J)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3054
    :pswitch_2
    const-wide/16 v0, 0x8

    invoke-direct {p0, p1, v0, v1}, Lcom/mysql/jdbc/MysqlIO;->skipFully(Ljava/io/InputStream;J)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3046
    nop

    :pswitch_data_0
    .packed-switch 0xfc
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final unpackBinaryResultSetRow([Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/Buffer;I)Lcom/mysql/jdbc/ResultSetRow;
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
    .line 4461
    array-length v3, p1

    .line 4463
    new-array v4, v3, [[B

    .line 4469
    add-int/lit8 v0, v3, 0x9

    div-int/lit8 v0, v0, 0x8

    .line 4470
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    .line 4471
    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 4472
    const/4 v1, 0x4

    .line 4478
    const/4 v0, 0x0

    move v6, v0

    move v0, v1

    move v1, v2

    move v2, v6

    :goto_0
    if-ge v2, v3, :cond_3

    .line 4479
    invoke-virtual {p2, v1}, Lcom/mysql/jdbc/Buffer;->readByte(I)B

    move-result v5

    and-int/2addr v5, v0

    if-eqz v5, :cond_1

    .line 4480
    const/4 v5, 0x0

    aput-object v5, v4, v2

    .line 4489
    :goto_1
    shl-int/lit8 v0, v0, 0x1

    and-int/lit16 v5, v0, 0xff

    if-nez v5, :cond_0

    .line 4490
    const/4 v0, 0x1

    .line 4492
    add-int/lit8 v1, v1, 0x1

    .line 4478
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4482
    :cond_1
    const/16 v5, 0x3f0

    if-eq p3, v5, :cond_2

    .line 4483
    invoke-direct {p0, p2, p1, v2, v4}, Lcom/mysql/jdbc/MysqlIO;->extractNativeEncodedColumn(Lcom/mysql/jdbc/Buffer;[Lcom/mysql/jdbc/Field;I[[B)V

    goto :goto_1

    .line 4485
    :cond_2
    invoke-direct {p0, p2, p1, v2, v4}, Lcom/mysql/jdbc/MysqlIO;->unpackNativeEncodedColumn(Lcom/mysql/jdbc/Buffer;[Lcom/mysql/jdbc/Field;I[[B)V

    goto :goto_1

    .line 4496
    :cond_3
    new-instance v0, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0
.end method

.method private final unpackNativeEncodedColumn(Lcom/mysql/jdbc/Buffer;[Lcom/mysql/jdbc/Field;I[[B)V
    .locals 11
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
    .line 4577
    aget-object v0, p2, p3

    .line 4579
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 4870
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MysqlIO.97"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MysqlIO.98"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MysqlIO.99"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MysqlIO.100"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4585
    :sswitch_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v1

    .line 4587
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4588
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, p4, p3

    .line 4875
    :goto_0
    :sswitch_1
    return-void

    .line 4590
    :cond_0
    and-int/lit16 v0, v1, 0xff

    int-to-short v0, v0

    .line 4592
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, p4, p3

    goto :goto_0

    .line 4600
    :sswitch_2
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v1

    int-to-short v1, v1

    .line 4602
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4603
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, p4, p3

    goto :goto_0

    .line 4605
    :cond_1
    const v0, 0xffff

    and-int/2addr v0, v1

    .line 4607
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, p4, p3

    goto :goto_0

    .line 4615
    :sswitch_3
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readLong()J

    move-result-wide v1

    long-to-int v1, v1

    .line 4617
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4618
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, p4, p3

    goto :goto_0

    .line 4620
    :cond_2
    int-to-long v0, v1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 4622
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, p4, p3

    goto :goto_0

    .line 4629
    :sswitch_4
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readLongLong()J

    move-result-wide v1

    .line 4631
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4632
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, p4, p3

    goto :goto_0

    .line 4634
    :cond_3
    invoke-static {v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->convertLongToUlong(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 4636
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, p4, p3

    goto :goto_0

    .line 4643
    :sswitch_5
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readIntAsLong()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 4645
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, p4, p3

    goto/16 :goto_0

    .line 4651
    :sswitch_6
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readLongLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 4653
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, p4, p3

    goto/16 :goto_0

    .line 4659
    :sswitch_7
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    long-to-int v3, v0

    .line 4661
    const/4 v2, 0x0

    .line 4662
    const/4 v1, 0x0

    .line 4663
    const/4 v0, 0x0

    .line 4665
    if-eqz v3, :cond_4

    .line 4666
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    .line 4667
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readLong()J

    .line 4668
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v2

    .line 4669
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v1

    .line 4670
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v0

    .line 4672
    const/16 v4, 0x8

    if-le v3, v4, :cond_4

    .line 4673
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readLong()J

    .line 4677
    :cond_4
    const/16 v3, 0x8

    new-array v3, v3, [B

    .line 4679
    const/4 v4, 0x0

    div-int/lit8 v5, v2, 0xa

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 4680
    const/4 v4, 0x1

    rem-int/lit8 v2, v2, 0xa

    const/16 v5, 0xa

    invoke-static {v2, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    .line 4682
    const/4 v2, 0x2

    const/16 v4, 0x3a

    aput-byte v4, v3, v2

    .line 4684
    const/4 v2, 0x3

    div-int/lit8 v4, v1, 0xa

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 4685
    const/4 v2, 0x4

    rem-int/lit8 v1, v1, 0xa

    const/16 v4, 0xa

    invoke-static {v1, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v3, v2

    .line 4687
    const/4 v1, 0x5

    const/16 v2, 0x3a

    aput-byte v2, v3, v1

    .line 4689
    const/4 v1, 0x6

    div-int/lit8 v2, v0, 0xa

    const/16 v4, 0xa

    invoke-static {v2, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    .line 4690
    const/4 v1, 0x7

    rem-int/lit8 v0, v0, 0xa

    const/16 v2, 0xa

    invoke-static {v0, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    .line 4692
    aput-object v3, p4, p3

    goto/16 :goto_0

    .line 4697
    :sswitch_8
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    long-to-int v3, v0

    .line 4699
    const/4 v2, 0x0

    .line 4700
    const/4 v1, 0x0

    .line 4701
    const/4 v0, 0x0

    .line 4707
    if-eqz v3, :cond_5

    .line 4708
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v2

    .line 4709
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v1

    .line 4710
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v0

    .line 4713
    :cond_5
    if-nez v2, :cond_8

    if-nez v1, :cond_8

    if-nez v0, :cond_8

    .line 4714
    const-string v0, "convertToNull"

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4715
    const/4 v0, 0x0

    aput-object v0, p4, p3

    goto/16 :goto_0

    .line 4718
    :cond_6
    const-string v0, "exception"

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4719
    const-string v0, "Value \'0000-00-00\' can not be represented as java.sql.Date"

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4723
    :cond_7
    const/4 v2, 0x1

    .line 4724
    const/4 v1, 0x1

    .line 4725
    const/4 v0, 0x1

    .line 4728
    :cond_8
    const/16 v3, 0xa

    new-array v3, v3, [B

    .line 4730
    const/4 v4, 0x0

    div-int/lit16 v5, v2, 0x3e8

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 4732
    rem-int/lit16 v2, v2, 0x3e8

    .line 4734
    const/4 v4, 0x1

    div-int/lit8 v5, v2, 0x64

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 4736
    rem-int/lit8 v2, v2, 0x64

    .line 4738
    const/4 v4, 0x2

    div-int/lit8 v5, v2, 0xa

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 4739
    const/4 v4, 0x3

    rem-int/lit8 v2, v2, 0xa

    const/16 v5, 0xa

    invoke-static {v2, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    .line 4741
    const/4 v2, 0x4

    const/16 v4, 0x2d

    aput-byte v4, v3, v2

    .line 4743
    const/4 v2, 0x5

    div-int/lit8 v4, v1, 0xa

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 4744
    const/4 v2, 0x6

    rem-int/lit8 v1, v1, 0xa

    const/16 v4, 0xa

    invoke-static {v1, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v3, v2

    .line 4746
    const/4 v1, 0x7

    const/16 v2, 0x2d

    aput-byte v2, v3, v1

    .line 4748
    const/16 v1, 0x8

    div-int/lit8 v2, v0, 0xa

    const/16 v4, 0xa

    invoke-static {v2, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    .line 4749
    const/16 v1, 0x9

    rem-int/lit8 v0, v0, 0xa

    const/16 v2, 0xa

    invoke-static {v0, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    .line 4751
    aput-object v3, p4, p3

    goto/16 :goto_0

    .line 4757
    :sswitch_9
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    long-to-int v6, v0

    .line 4759
    const/4 v2, 0x0

    .line 4760
    const/4 v1, 0x0

    .line 4761
    const/4 v0, 0x0

    .line 4763
    const/4 v5, 0x0

    .line 4764
    const/4 v4, 0x0

    .line 4765
    const/4 v3, 0x0

    .line 4767
    const/4 v7, 0x0

    .line 4769
    if-eqz v6, :cond_9

    .line 4770
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v2

    .line 4771
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v1

    .line 4772
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v0

    .line 4774
    const/4 v8, 0x4

    if-le v6, v8, :cond_9

    .line 4775
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v5

    .line 4776
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v4

    .line 4777
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v3

    .line 4785
    :cond_9
    if-nez v2, :cond_c

    if-nez v1, :cond_c

    if-nez v0, :cond_c

    .line 4786
    const-string v0, "convertToNull"

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4787
    const/4 v0, 0x0

    aput-object v0, p4, p3

    goto/16 :goto_0

    .line 4790
    :cond_a
    const-string v0, "exception"

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4791
    const-string v0, "Value \'0000-00-00\' can not be represented as java.sql.Timestamp"

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4795
    :cond_b
    const/4 v2, 0x1

    .line 4796
    const/4 v1, 0x1

    .line 4797
    const/4 v0, 0x1

    .line 4800
    :cond_c
    const/16 v6, 0x13

    .line 4802
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 4804
    array-length v8, v7

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v6, v8

    .line 4806
    new-array v6, v6, [B

    .line 4808
    const/4 v8, 0x0

    div-int/lit16 v9, v2, 0x3e8

    const/16 v10, 0xa

    invoke-static {v9, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    .line 4810
    rem-int/lit16 v2, v2, 0x3e8

    .line 4812
    const/4 v8, 0x1

    div-int/lit8 v9, v2, 0x64

    const/16 v10, 0xa

    invoke-static {v9, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    .line 4814
    rem-int/lit8 v2, v2, 0x64

    .line 4816
    const/4 v8, 0x2

    div-int/lit8 v9, v2, 0xa

    const/16 v10, 0xa

    invoke-static {v9, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    .line 4817
    const/4 v8, 0x3

    rem-int/lit8 v2, v2, 0xa

    const/16 v9, 0xa

    invoke-static {v2, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v6, v8

    .line 4819
    const/4 v2, 0x4

    const/16 v8, 0x2d

    aput-byte v8, v6, v2

    .line 4821
    const/4 v2, 0x5

    div-int/lit8 v8, v1, 0xa

    const/16 v9, 0xa

    invoke-static {v8, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v6, v2

    .line 4822
    const/4 v2, 0x6

    rem-int/lit8 v1, v1, 0xa

    const/16 v8, 0xa

    invoke-static {v1, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v6, v2

    .line 4824
    const/4 v1, 0x7

    const/16 v2, 0x2d

    aput-byte v2, v6, v1

    .line 4826
    const/16 v1, 0x8

    div-int/lit8 v2, v0, 0xa

    const/16 v8, 0xa

    invoke-static {v2, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v6, v1

    .line 4827
    const/16 v1, 0x9

    rem-int/lit8 v0, v0, 0xa

    const/16 v2, 0xa

    invoke-static {v0, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v6, v1

    .line 4829
    const/16 v0, 0xa

    const/16 v1, 0x20

    aput-byte v1, v6, v0

    .line 4831
    const/16 v0, 0xb

    div-int/lit8 v1, v5, 0xa

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    .line 4832
    const/16 v0, 0xc

    rem-int/lit8 v1, v5, 0xa

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    .line 4834
    const/16 v0, 0xd

    const/16 v1, 0x3a

    aput-byte v1, v6, v0

    .line 4836
    const/16 v0, 0xe

    div-int/lit8 v1, v4, 0xa

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    .line 4837
    const/16 v0, 0xf

    rem-int/lit8 v1, v4, 0xa

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    .line 4839
    const/16 v0, 0x10

    const/16 v1, 0x3a

    aput-byte v1, v6, v0

    .line 4841
    const/16 v0, 0x11

    div-int/lit8 v1, v3, 0xa

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    .line 4842
    const/16 v0, 0x12

    rem-int/lit8 v1, v3, 0xa

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    .line 4844
    const/16 v0, 0x13

    const/16 v1, 0x2e

    aput-byte v1, v6, v0

    .line 4848
    const/4 v0, 0x0

    const/16 v1, 0x14

    array-length v2, v7

    invoke-static {v7, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4850
    aput-object v6, p4, p3

    goto/16 :goto_0

    .line 4865
    :sswitch_a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->readLenByteArray(I)[B

    move-result-object v0

    aput-object v0, p4, p3

    goto/16 :goto_0

    .line 4579
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_1
        0x7 -> :sswitch_9
        0x8 -> :sswitch_4
        0x9 -> :sswitch_3
        0xa -> :sswitch_8
        0xb -> :sswitch_7
        0xc -> :sswitch_9
        0xd -> :sswitch_2
        0xf -> :sswitch_a
        0x10 -> :sswitch_a
        0xf5 -> :sswitch_a
        0xf6 -> :sswitch_a
        0xf9 -> :sswitch_a
        0xfa -> :sswitch_a
        0xfb -> :sswitch_a
        0xfc -> :sswitch_a
        0xfd -> :sswitch_a
        0xfe -> :sswitch_a
    .end sparse-switch
.end method

.method public static useBufferRowExplicit([Lcom/mysql/jdbc/Field;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3429
    if-nez p0, :cond_1

    .line 3443
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 3433
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 3434
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 3433
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3439
    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 3434
    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x7d4 -> :sswitch_0
        0x7d5 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected changeUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    const/16 v3, 0x11

    const/4 v0, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 810
    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 811
    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    .line 813
    const/16 v2, 0x10

    .line 814
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    .line 815
    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 817
    :goto_1
    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v2, v0, 0x21

    .line 819
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 821
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mysql/jdbc/MysqlIO;->proceedHandshakeWithPluggableAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/Buffer;)V

    .line 859
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v6

    .line 814
    goto :goto_0

    :cond_2
    move v0, v6

    .line 815
    goto :goto_1

    .line 823
    :cond_3
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 824
    new-instance v1, Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v0, v2, 0x1

    invoke-direct {v1, v0}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 825
    invoke-virtual {v1, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 827
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v7, v7}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 828
    invoke-virtual/range {v0 .. v7}, Lcom/mysql/jdbc/MysqlIO;->secureAuth411(Lcom/mysql/jdbc/Buffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_2

    :cond_4
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 830
    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlIO;->secureAuth(Lcom/mysql/jdbc/Buffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 834
    :cond_5
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v0, v2}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 835
    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 838
    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    .line 840
    iget-byte v1, p0, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    const/16 v2, 0x9

    if-le v1, v2, :cond_7

    .line 841
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/mysql/jdbc/Util;->newCrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    .line 846
    :goto_3
    iget-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-eqz v1, :cond_8

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 848
    :goto_4
    if-eqz v7, :cond_6

    .line 849
    invoke-virtual {v0, p3}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    .line 852
    :cond_6
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 853
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    .line 855
    if-nez v7, :cond_0

    .line 856
    invoke-direct {p0, p3}, Lcom/mysql/jdbc/MysqlIO;->changeDatabaseTo(Ljava/lang/String;)V

    goto :goto_2

    .line 843
    :cond_7
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/mysql/jdbc/Util;->oldCrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move v7, v6

    .line 846
    goto :goto_4
.end method

.method protected checkErrorPacket()Lcom/mysql/jdbc/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 871
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket(I)Lcom/mysql/jdbc/Buffer;

    move-result-object v0

    return-object v0
.end method

.method protected checkForCharsetMismatch()V
    .locals 2

    .prologue
    .line 878
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 879
    sget-object v0, Lcom/mysql/jdbc/MysqlIO;->jvmPlatformCharset:Ljava/lang/String;

    .line 881
    if-nez v0, :cond_0

    .line 882
    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 885
    :cond_0
    if-nez v0, :cond_2

    .line 886
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->platformDbCharsetMatches:Z

    .line 891
    :cond_1
    :goto_0
    return-void

    .line 888
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->platformDbCharsetMatches:Z

    goto :goto_0
.end method

.method protected clearInputStream()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 899
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 906
    :cond_1
    return-void

    .line 902
    :catch_0
    move-exception v5

    .line 903
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method closeStreamer(Lcom/mysql/jdbc/RowData;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2283
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    if-nez v0, :cond_0

    .line 2284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MysqlIO.17"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MysqlIO.18"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2287
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    if-eq p1, v0, :cond_1

    .line 2288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MysqlIO.19"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MysqlIO.20"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MysqlIO.21"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MysqlIO.22"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2292
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    .line 2293
    return-void
.end method

.method disableMultiQueries()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/4 v4, 0x0

    .line 3664
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getSharedSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v3

    .line 3666
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 3667
    invoke-virtual {v3, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 3668
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    move-object v0, p0

    move-object v5, v2

    move v6, v4

    .line 3669
    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    .line 3670
    return-void
.end method

.method doHandshake(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
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

    const/4 v11, 0x4

    const/16 v10, 0x9

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1011
    iput-boolean v7, p0, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequence:Z

    .line 1012
    iput-byte v7, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    .line 1014
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->readPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v3

    .line 1017
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    .line 1019
    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1021
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 1028
    :goto_0
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    .line 1030
    const-string v1, "ASCII"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v1

    .line 1032
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MysqlIO.10"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseSqlStateCodes()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState(IZ)Ljava/lang/String;

    move-result-object v1

    .line 1038
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/mysql/jdbc/SQLError;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v2, v1, v0, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;ILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1041
    :cond_0
    const-string v0, "ASCII"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverVersion:Ljava/lang/String;

    .line 1044
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverVersion:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1046
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 1048
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->serverVersion:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1049
    iput v2, p0, Lcom/mysql/jdbc/MysqlIO;->serverMajorVersion:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1054
    :goto_1
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->serverVersion:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->serverVersion:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1055
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1057
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 1059
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1060
    iput v4, p0, Lcom/mysql/jdbc/MysqlIO;->serverMinorVersion:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1065
    :goto_2
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v0, v7

    .line 1069
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1070
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x39

    if-le v4, v5, :cond_9

    .line 1078
    :cond_1
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1079
    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverSubMinorVersion:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1086
    :cond_2
    :goto_4
    const/16 v0, 0x8

    invoke-virtual {p0, v11, v7, v0}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1087
    const v0, 0xffffff

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    .line 1088
    iput-boolean v6, p0, Lcom/mysql/jdbc/MysqlIO;->useNewLargePackets:Z

    .line 1094
    :goto_5
    const/4 v0, 0x3

    const/16 v2, 0x17

    invoke-virtual {p0, v0, v2, v7}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->colDecimalNeedsBump:Z

    .line 1095
    const/4 v0, 0x3

    const/16 v2, 0x17

    const/16 v4, 0xf

    invoke-virtual {p0, v0, v2, v4}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v6

    :goto_6
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->colDecimalNeedsBump:Z

    .line 1096
    const/4 v0, 0x3

    const/16 v2, 0x16

    const/4 v4, 0x5

    invoke-virtual {p0, v0, v2, v4}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useNewUpdateCounts:Z

    .line 1099
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->threadId:J

    .line 1101
    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v0, v10, :cond_c

    .line 1103
    const-string v0, "ASCII"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v3, v0, v2, v4}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    .line 1105
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->readByte()B

    .line 1111
    :goto_7
    iput v7, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    .line 1114
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1115
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    .line 1118
    :cond_3
    invoke-virtual {p0, v11, v6, v6}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    if-nez v0, :cond_4

    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v0, v10, :cond_5

    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_5

    .line 1122
    :cond_4
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    .line 1124
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 1125
    invoke-direct {p0, v7}, Lcom/mysql/jdbc/MysqlIO;->checkTransactionState(I)V

    .line 1128
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    .line 1130
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const/high16 v2, 0x8

    and-int/2addr v0, v2

    if-eqz v0, :cond_d

    .line 1132
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->authPluginDataLength:I

    .line 1138
    :goto_8
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {v3, v0}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 1140
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const v2, 0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    .line 1144
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->authPluginDataLength:I

    if-lez v0, :cond_e

    .line 1151
    const-string v0, "ASCII"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    iget v4, p0, Lcom/mysql/jdbc/MysqlIO;->authPluginDataLength:I

    add-int/lit8 v4, v4, -0x8

    invoke-virtual {v3, v0, v2, v4}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;I)Ljava/lang/String;

    move-result-object v2

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mysql/jdbc/MysqlIO;->authPluginDataLength:I

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1157
    :goto_9
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    .line 1163
    :cond_5
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseCompression()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1164
    iget-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v8, 0x20

    or-long/2addr v4, v8

    iput-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1167
    :cond_6
    if-eqz p3, :cond_f

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCreateDatabaseIfNotExist()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v6

    :goto_a
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    .line 1169
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-eqz v0, :cond_7

    .line 1170
    iget-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v8, 0x8

    or-long/2addr v4, v8

    iput-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1174
    :cond_7
    const/4 v0, 0x5

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v2, v7}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseSSL()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isUseSSLExplicit()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1175
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, v6}, Lcom/mysql/jdbc/MySQLConnection;->setUseSSL(Z)V

    .line 1176
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, v7}, Lcom/mysql/jdbc/MySQLConnection;->setVerifyServerCertificate(Z)V

    .line 1177
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v0

    const-string v2, "MysqlIO.SSLWarning"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;)V

    .line 1181
    :cond_8
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseSSL()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1182
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getRequireSSL()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1183
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->close()V

    .line 1184
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 1185
    const-string v0, "MysqlIO.15"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "08001"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1074
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 1090
    :cond_a
    const v0, 0xfd02ff

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    .line 1091
    iput-boolean v7, p0, Lcom/mysql/jdbc/MysqlIO;->useNewLargePackets:Z

    goto/16 :goto_5

    :cond_b
    move v0, v7

    .line 1095
    goto/16 :goto_6

    .line 1108
    :cond_c
    const-string v0, "ASCII"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    goto/16 :goto_7

    .line 1135
    :cond_d
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->readByte()B

    goto/16 :goto_8

    .line 1154
    :cond_e
    const-string v0, "ASCII"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v2

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x14

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    goto/16 :goto_9

    :cond_f
    move v0, v7

    .line 1167
    goto/16 :goto_a

    .line 1189
    :cond_10
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, v7}, Lcom/mysql/jdbc/MySQLConnection;->setUseSSL(Z)V

    .line 1192
    :cond_11
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_12

    .line 1194
    iget-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v8, 0x4

    or-long/2addr v4, v8

    iput-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1195
    iput-boolean v6, p0, Lcom/mysql/jdbc/MysqlIO;->hasLongColumnInfo:Z

    .line 1199
    :cond_12
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseAffectedRows()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1200
    iget-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v8, 0x2

    or-long/2addr v4, v8

    iput-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1203
    :cond_13
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAllowLoadLocalInfile()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1204
    iget-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    iput-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1207
    :cond_14
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->isInteractiveClient:Z

    if-eqz v0, :cond_15

    .line 1208
    iget-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v8, 0x400

    or-long/2addr v4, v8

    iput-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1211
    :cond_15
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const/high16 v2, 0x80

    and-int/2addr v0, v2

    if-eqz v0, :cond_16

    .line 1216
    :cond_16
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const/high16 v2, 0x100

    and-int/2addr v0, v2

    if-eqz v0, :cond_17

    .line 1217
    iget-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v8, 0x1000000

    or-long/2addr v4, v8

    iput-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1223
    :cond_17
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const/high16 v2, 0x8

    and-int/2addr v0, v2

    if-eqz v0, :cond_18

    .line 1224
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/mysql/jdbc/MysqlIO;->proceedHandshakeWithPluggableAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/Buffer;)V

    .line 1381
    :goto_b
    return-void

    .line 1229
    :cond_18
    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v0, v10, :cond_22

    .line 1230
    iget-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v4, 0x1

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1238
    :goto_c
    invoke-virtual {p0, v11, v6, v7}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    if-nez v0, :cond_19

    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v0, v10, :cond_1c

    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_1c

    .line 1239
    :cond_19
    invoke-virtual {p0, v11, v6, v6}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v0, v10, :cond_23

    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_23

    .line 1240
    :cond_1a
    iget-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v4, 0x200

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1241
    iput-boolean v6, p0, Lcom/mysql/jdbc/MysqlIO;->has41NewNewProt:Z

    .line 1244
    iget-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v4, 0x2000

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1247
    iget-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v4, 0x20000

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1252
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAllowMultiQueries()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1253
    iget-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v4, 0x10000

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1260
    :cond_1b
    :goto_d
    iput-boolean v6, p0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    .line 1263
    :cond_1c
    const/16 v3, 0x10

    .line 1264
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v0

    .line 1265
    :goto_e
    if-eqz p3, :cond_25

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 1267
    :goto_f
    add-int/2addr v2, v3

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v2, v0, 0x21

    .line 1271
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseSSL()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1272
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const v3, 0x8000

    and-int/2addr v0, v3

    if-eqz v0, :cond_27

    .line 1273
    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v8, 0x8000

    or-long/2addr v3, v8

    iput-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1275
    invoke-virtual {p0, v11, v6, v6}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v0, v10, :cond_26

    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_26

    :cond_1d
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1276
    invoke-virtual/range {v0 .. v7}, Lcom/mysql/jdbc/MysqlIO;->secureAuth411(Lcom/mysql/jdbc/Buffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1357
    :goto_10
    invoke-virtual {p0, v11, v6, v6}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v0, v10, :cond_1e

    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1f

    .line 1358
    :cond_1e
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    .line 1364
    :cond_1f
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseCompression()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/mysql/jdbc/CompressedInputStream;

    if-nez v0, :cond_20

    .line 1366
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    .line 1367
    iput-boolean v6, p0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    .line 1368
    new-instance v0, Lcom/mysql/jdbc/CompressedInputStream;

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/CompressedInputStream;-><init>(Lcom/mysql/jdbc/Connection;Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    .line 1371
    :cond_20
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-nez v0, :cond_21

    .line 1372
    invoke-direct {p0, p3}, Lcom/mysql/jdbc/MysqlIO;->changeDatabaseTo(Ljava/lang/String;)V

    .line 1376
    :cond_21
    :try_start_4
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;

    invoke-interface {v0}, Lcom/mysql/jdbc/SocketFactory;->afterHandshake()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_b

    .line 1377
    :catch_0
    move-exception v5

    .line 1378
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1232
    :cond_22
    iget-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v4, -0x2

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    goto/16 :goto_c

    .line 1256
    :cond_23
    iget-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v4, 0x4000

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1257
    iput-boolean v7, p0, Lcom/mysql/jdbc/MysqlIO;->has41NewNewProt:Z

    goto/16 :goto_d

    :cond_24
    move v2, v7

    .line 1264
    goto/16 :goto_e

    :cond_25
    move v0, v7

    .line 1265
    goto/16 :goto_f

    :cond_26
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1278
    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlIO;->secureAuth(Lcom/mysql/jdbc/Buffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_10

    .line 1282
    :cond_27
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v0, v2}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 1284
    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v3, 0x4000

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2b

    .line 1285
    invoke-virtual {p0, v11, v6, v6}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v1

    if-nez v1, :cond_28

    iget-byte v1, p0, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v1, v10, :cond_2a

    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_2a

    .line 1286
    :cond_28
    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {v0, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1287
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1290
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1293
    const/16 v1, 0x17

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 1304
    :goto_11
    const-string v1, "Cp1252"

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v0, p1, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1306
    iget-byte v1, p0, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v1, v10, :cond_2c

    .line 1307
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/mysql/jdbc/Util;->newCrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cp1252"

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1312
    :goto_12
    iget-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-eqz v1, :cond_29

    .line 1313
    const-string v1, "Cp1252"

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v0, p3, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1316
    :cond_29
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    goto/16 :goto_10

    .line 1295
    :cond_2a
    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {v0, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1296
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    goto :goto_11

    .line 1299
    :cond_2b
    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 1300
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    goto :goto_11

    .line 1309
    :cond_2c
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/mysql/jdbc/Util;->oldCrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cp1252"

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    goto :goto_12

    .line 1319
    :cond_2d
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/mysql/jdbc/MysqlIO;->negotiateSSLConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1321
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const v3, 0x8000

    and-int/2addr v0, v3

    if-eqz v0, :cond_2f

    .line 1322
    invoke-virtual {p0, v11, v6, v6}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_2e

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1323
    invoke-virtual/range {v0 .. v7}, Lcom/mysql/jdbc/MysqlIO;->secureAuth411(Lcom/mysql/jdbc/Buffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_10

    :cond_2e
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1325
    invoke-virtual/range {v0 .. v7}, Lcom/mysql/jdbc/MysqlIO;->secureAuth411(Lcom/mysql/jdbc/Buffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_10

    .line 1329
    :cond_2f
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v0, v2}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 1331
    iget-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    if-eqz v1, :cond_31

    .line 1332
    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {v0, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1333
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1340
    :goto_13
    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    .line 1342
    iget-byte v1, p0, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v1, v10, :cond_32

    .line 1343
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/mysql/jdbc/Util;->newCrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    .line 1348
    :goto_14
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_30

    if-eqz p3, :cond_30

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 1349
    invoke-virtual {v0, p3}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    .line 1352
    :cond_30
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    goto/16 :goto_10

    .line 1335
    :cond_31
    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 1336
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    goto :goto_13

    .line 1345
    :cond_32
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/mysql/jdbc/Util;->oldCrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    goto :goto_14

    .line 1080
    :catch_1
    move-exception v0

    goto/16 :goto_4

    .line 1061
    :catch_2
    move-exception v4

    goto/16 :goto_2

    .line 1050
    :catch_3
    move-exception v2

    goto/16 :goto_1

    .line 1022
    :catch_4
    move-exception v0

    goto/16 :goto_0
.end method

.method protected dumpPacketRingBuffer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 913
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetDebugRingBuffer:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEnablePacketDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 914
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetDebugRingBuffer:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " packets received from server, from oldest->newest:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetDebugRingBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 921
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 926
    :cond_1
    return-void
.end method

.method enableMultiQueries()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/4 v4, 0x0

    .line 3655
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getSharedSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v3

    .line 3657
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 3658
    invoke-virtual {v3, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 3659
    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    move-object v0, p0

    move-object v5, v2

    move v6, v4

    .line 3660
    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    .line 3661
    return-void
.end method

.method protected explainSlowQuery([BLjava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 937
    const-string v0, "SELECT"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v2, v3}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/mysql/jdbc/MysqlIO;->EXPLAINABLE_STATEMENT_EXTENSION:[Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 944
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const-string v2, "EXPLAIN ?"

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, v2, p1}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    .line 946
    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 948
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MysqlIO.8"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MysqlIO.9"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 950
    invoke-static {v2, v1}, Lcom/mysql/jdbc/util/ResultSetUtil;->appendResultSetSlashGStyle(Ljava/lang/StringBuilder;Ljava/sql/ResultSet;)Ljava/lang/StringBuilder;

    .line 952
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 955
    if-eqz v1, :cond_1

    .line 956
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 959
    :cond_1
    if-eqz v0, :cond_2

    .line 960
    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->close()V

    .line 964
    :cond_2
    :goto_0
    return-void

    .line 955
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_1
    if-eqz v1, :cond_3

    .line 956
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 959
    :cond_3
    if-eqz v2, :cond_4

    .line 960
    invoke-virtual {v2}, Lcom/mysql/jdbc/PreparedStatement;->close()V

    .line 955
    :cond_4
    throw v0

    .line 953
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 955
    :goto_2
    if-eqz v0, :cond_5

    .line 956
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    .line 959
    :cond_5
    if-eqz v1, :cond_2

    .line 960
    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->close()V

    goto :goto_0

    .line 955
    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_1

    .line 953
    :catch_1
    move-exception v2

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2
.end method

.method protected fetchRowsViaCursor(Ljava/util/List;J[Lcom/mysql/jdbc/Field;IZ)Ljava/util/List;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;J[",
            "Lcom/mysql/jdbc/Field;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4926
    if-nez p1, :cond_0

    .line 4927
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p5}, Ljava/util/ArrayList;-><init>(I)V

    .line 4932
    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 4934
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 4935
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0, p2, p3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4936
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    int-to-long v1, p5

    invoke-virtual {v0, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4938
    const/16 v1, 0x1c

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    .line 4942
    :goto_1
    array-length v2, p4

    const/4 v3, 0x1

    const/16 v4, 0x3ef

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p4

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/mysql/jdbc/MysqlIO;->nextRow([Lcom/mysql/jdbc/Field;IZIZZZLcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4943
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4929
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 4946
    :cond_1
    return-object p1
.end method

.method protected final forceClose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 494
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getNetworkResources()Lcom/mysql/jdbc/NetworkResources;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/NetworkResources;->forceClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    .line 497
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    .line 498
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    .line 500
    return-void

    .line 496
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    .line 497
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    .line 498
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    .line 496
    throw v0
.end method

.method protected getCommandCount()I
    .locals 1

    .prologue
    .line 4966
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->commandCount:I

    return v0
.end method

.method protected getCurrentTimeNanosOrMillis()J
    .locals 2

    .prologue
    .line 2915
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useNanosForElapsedTime:Z

    if-eqz v0, :cond_0

    .line 2916
    invoke-static {}, Lcom/mysql/jdbc/TimeUtil;->getCurrentTimeNanosOrMillis()J

    move-result-wide v0

    .line 2919
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method getEncodingForHandshake()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5018
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 5019
    if-nez v0, :cond_0

    .line 5020
    const-string v0, "UTF-8"

    .line 5022
    :cond_0
    return-object v0
.end method

.method protected getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;
    .locals 1

    .prologue
    .line 4989
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    return-object v0
.end method

.method getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2926
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->host:Ljava/lang/String;

    return-object v0
.end method

.method protected getLastPacketReceivedTimeMs()J
    .locals 2

    .prologue
    .line 372
    iget-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    return-wide v0
.end method

.method protected getLastPacketSentTimeMs()J
    .locals 2

    .prologue
    .line 368
    iget-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    return-wide v0
.end method

.method protected getNetworkResources()Lcom/mysql/jdbc/NetworkResources;
    .locals 4

    .prologue
    .line 486
    new-instance v0, Lcom/mysql/jdbc/NetworkResources;

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1, v2, v3}, Lcom/mysql/jdbc/NetworkResources;-><init>(Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method protected getQueryTimingUnits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4962
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->queryTimingUnits:Ljava/lang/String;

    return-object v0
.end method

.method protected getResultSet(Lcom/mysql/jdbc/StatementImpl;JIIIZLjava/lang/String;Z[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;
    .locals 12
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
    .line 408
    const/4 v4, 0x0

    .line 412
    if-nez p10, :cond_0

    .line 413
    long-to-int v1, p2

    new-array v4, v1, [Lcom/mysql/jdbc/Field;

    .line 415
    const/4 v1, 0x0

    :goto_0
    int-to-long v2, v1

    cmp-long v2, v2, p2

    if-gez v2, :cond_1

    .line 418
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->readPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v2

    .line 419
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/mysql/jdbc/MysqlIO;->unpackField(Lcom/mysql/jdbc/Buffer;Z)Lcom/mysql/jdbc/Field;

    move-result-object v2

    aput-object v2, v4, v1

    .line 415
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    :cond_0
    const/4 v1, 0x0

    :goto_1
    int-to-long v2, v1

    cmp-long v2, v2, p2

    if-gez v2, :cond_1

    .line 423
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->skipPacket()V

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->isEOFDeprecated()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v5, 0x2

    invoke-interface {v1, v2, v3, v5}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    if-eqz p9, :cond_3

    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->isCursorRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 432
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    invoke-direct {p0, v1}, Lcom/mysql/jdbc/MysqlIO;->reuseAndReadPacket(Lcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/Buffer;

    move-result-object v1

    .line 433
    invoke-direct {p0, v1}, Lcom/mysql/jdbc/MysqlIO;->readServerStatusForResultSets(Lcom/mysql/jdbc/Buffer;)V

    .line 440
    :cond_3
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v5, 0x2

    invoke-interface {v1, v2, v3, v5}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseCursorFetch()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p9, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getFetchSize()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getResultSetType()I

    move-result v1

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_6

    move-object v1, p1

    .line 442
    check-cast v1, Lcom/mysql/jdbc/ServerPreparedStatement;

    .line 444
    const/4 v2, 0x1

    .line 451
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-interface {v3, v5, v6, v7}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 452
    iget v2, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_2
    move v9, v2

    .line 455
    :goto_3
    if-eqz v9, :cond_6

    .line 456
    new-instance v5, Lcom/mysql/jdbc/RowDataCursor;

    invoke-direct {v5, p0, v1, v4}, Lcom/mysql/jdbc/RowDataCursor;-><init>(Lcom/mysql/jdbc/MysqlIO;Lcom/mysql/jdbc/ServerPreparedStatement;[Lcom/mysql/jdbc/Field;)V

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p8

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p9

    .line 458
    invoke-direct/range {v1 .. v8}, Lcom/mysql/jdbc/MysqlIO;->buildResultSetWithRows(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;IIZ)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v1

    .line 460
    if-eqz v9, :cond_4

    .line 461
    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getFetchSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->setFetchSize(I)V

    .line 480
    :cond_4
    :goto_4
    return-object v1

    .line 452
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 470
    :cond_6
    if-nez p7, :cond_8

    .line 471
    if-nez p10, :cond_7

    move-object v11, v4

    :goto_5
    move-object v5, p0

    move-wide v6, p2

    move/from16 v8, p4

    move/from16 v9, p6

    move/from16 v10, p9

    invoke-direct/range {v5 .. v11}, Lcom/mysql/jdbc/MysqlIO;->readSingleRowSet(JIIZ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/RowData;

    move-result-object v5

    .line 477
    :goto_6
    if-nez p10, :cond_a

    :goto_7
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p8

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Lcom/mysql/jdbc/MysqlIO;->buildResultSetWithRows(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;IIZ)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v1

    goto :goto_4

    :cond_7
    move-object/from16 v11, p10

    .line 471
    goto :goto_5

    .line 473
    :cond_8
    new-instance v5, Lcom/mysql/jdbc/RowDataDynamic;

    long-to-int v2, p2

    if-nez p10, :cond_9

    move-object v1, v4

    :goto_8
    move/from16 v0, p9

    invoke-direct {v5, p0, v2, v1, v0}, Lcom/mysql/jdbc/RowDataDynamic;-><init>(Lcom/mysql/jdbc/MysqlIO;I[Lcom/mysql/jdbc/Field;Z)V

    .line 474
    iput-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    goto :goto_6

    :cond_9
    move-object/from16 v1, p10

    .line 473
    goto :goto_8

    :cond_a
    move-object/from16 v4, p10

    .line 477
    goto :goto_7

    :cond_b
    move v9, v2

    goto :goto_3
.end method

.method final getServerMajorVersion()I
    .locals 1

    .prologue
    .line 974
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverMajorVersion:I

    return v0
.end method

.method final getServerMinorVersion()I
    .locals 1

    .prologue
    .line 981
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverMinorVersion:I

    return v0
.end method

.method protected getServerStatus()I
    .locals 1

    .prologue
    .line 4920
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    return v0
.end method

.method final getServerSubMinorVersion()I
    .locals 1

    .prologue
    .line 988
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverSubMinorVersion:I

    return v0
.end method

.method getServerVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverVersion:Ljava/lang/String;

    return-object v0
.end method

.method getSharedSendPacket()Lcom/mysql/jdbc/Buffer;
    .locals 2

    .prologue
    .line 2275
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    if-nez v0, :cond_0

    .line 2276
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    .line 2279
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    return-object v0
.end method

.method protected getSlowQueryThreshold()J
    .locals 2

    .prologue
    .line 4958
    iget-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->slowQueryThreshold:J

    return-wide v0
.end method

.method protected getThreadId()J
    .locals 2

    .prologue
    .line 4950
    iget-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->threadId:J

    return-wide v0
.end method

.method hadWarnings()Z
    .locals 1

    .prologue
    .line 4186
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    return v0
.end method

.method public hasLongColumnInfo()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->hasLongColumnInfo:Z

    return v0
.end method

.method protected inTransactionOnServer()Z
    .locals 1

    .prologue
    .line 797
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method invokeStatementInterceptorsPost(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;ZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 11
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
    .line 2879
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    move v9, v0

    move-object v3, p3

    :goto_0
    if-ge v9, v10, :cond_4

    .line 2880
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/StatementInterceptorV2;

    .line 2882
    invoke-interface {v0}, Lcom/mysql/jdbc/StatementInterceptorV2;->executeTopLevelOnly()Z

    move-result v1

    .line 2883
    if-eqz v1, :cond_0

    iget v2, p0, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    if-nez p4, :cond_1

    :cond_0
    if-nez v1, :cond_3

    :cond_1
    const/4 v1, 0x1

    .line 2885
    :goto_1
    if-eqz v1, :cond_2

    .line 2888
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget v5, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    iget-boolean v6, p0, Lcom/mysql/jdbc/MysqlIO;->queryNoIndexUsed:Z

    iget-boolean v7, p0, Lcom/mysql/jdbc/MysqlIO;->queryBadIndexUsed:Z

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v8, p5

    invoke-interface/range {v0 .. v8}, Lcom/mysql/jdbc/StatementInterceptorV2;->postProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;Lcom/mysql/jdbc/Connection;IZZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 2891
    if-eqz v0, :cond_2

    move-object v3, v0

    .line 2879
    :cond_2
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 2883
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 2897
    :cond_4
    return-object v3
.end method

.method invokeStatementInterceptorsPre(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
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
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2849
    const/4 v1, 0x0

    .line 2851
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_3

    .line 2852
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/StatementInterceptorV2;

    .line 2854
    invoke-interface {v0}, Lcom/mysql/jdbc/StatementInterceptorV2;->executeTopLevelOnly()Z

    move-result v2

    .line 2855
    if-eqz v2, :cond_0

    iget v7, p0, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    if-eq v7, v3, :cond_1

    if-nez p3, :cond_1

    :cond_0
    if-nez v2, :cond_2

    :cond_1
    move v2, v3

    .line 2857
    :goto_1
    if-eqz v2, :cond_4

    .line 2865
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, p1, p2, v2}, Lcom/mysql/jdbc/StatementInterceptorV2;->preProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 2867
    if-eqz v0, :cond_4

    .line 2851
    :goto_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v1, v0

    goto :goto_0

    :cond_2
    move v2, v4

    .line 2855
    goto :goto_1

    .line 2873
    :cond_3
    return-object v1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method protected isDataAvailable()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 358
    :catch_0
    move-exception v5

    .line 359
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isEOFDeprecated()Z
    .locals 4

    .prologue
    .line 5057
    iget-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v2, 0x1000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSSLEstablished()Z
    .locals 1

    .prologue
    .line 4916
    invoke-static {}, Lcom/mysql/jdbc/ExportControlled;->enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/mysql/jdbc/ExportControlled;->isSSLEstablished(Lcom/mysql/jdbc/MysqlIO;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSetNeededForAutoCommitMode(Z)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 780
    iget-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getElideSetAutoCommits()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 781
    iget v2, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    move v2, v0

    .line 783
    :goto_0
    if-nez p1, :cond_3

    const/4 v3, 0x5

    invoke-virtual {p0, v3, v1, v1}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 787
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->inTransactionOnServer()Z

    move-result v2

    if-nez v2, :cond_2

    .line 793
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 781
    goto :goto_0

    :cond_2
    move v0, v1

    .line 787
    goto :goto_1

    .line 790
    :cond_3
    if-ne v2, p1, :cond_0

    move v0, v1

    goto :goto_1
.end method

.method isVersion(III)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2944
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerMajorVersion()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerMinorVersion()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerSubMinorVersion()I

    move-result v0

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final nextRow([Lcom/mysql/jdbc/Field;IZIZZZLcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetRow;
    .locals 6
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
    const/4 v0, 0x0

    const/16 v5, 0x3f0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1991
    iget-boolean v3, p0, Lcom/mysql/jdbc/MysqlIO;->useDirectRowUnpack:Z

    if-eqz v3, :cond_0

    if-nez p8, :cond_0

    if-nez p3, :cond_0

    if-nez p5, :cond_0

    if-nez p6, :cond_0

    .line 1992
    invoke-virtual/range {p0 .. p7}, Lcom/mysql/jdbc/MysqlIO;->nextRowFast([Lcom/mysql/jdbc/Field;IZIZZZ)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v0

    .line 2061
    :goto_0
    return-object v0

    .line 1998
    :cond_0
    if-nez p8, :cond_5

    .line 1999
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object p8

    .line 2001
    if-nez p6, :cond_1

    if-eqz p5, :cond_1

    .line 2002
    invoke-virtual {p8}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v3

    iget v4, p0, Lcom/mysql/jdbc/MysqlIO;->useBufferRowSizeThreshold:I

    if-le v3, v4, :cond_1

    move p6, v2

    .line 2012
    :cond_1
    :goto_1
    if-nez p3, :cond_a

    .line 2016
    invoke-virtual {p8}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p8, v2}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 2018
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->isEOFDeprecated()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p8}, Lcom/mysql/jdbc/Buffer;->isEOFPacket()Z

    move-result v2

    if-nez v2, :cond_9

    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->isEOFDeprecated()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p8}, Lcom/mysql/jdbc/Buffer;->isResultSetOKPacket()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2019
    :cond_3
    if-eq p4, v5, :cond_4

    if-nez p5, :cond_7

    if-nez p6, :cond_7

    .line 2021
    :cond_4
    new-array v2, p2, [[B

    move v0, v1

    .line 2023
    :goto_2
    if-ge v0, p2, :cond_6

    .line 2024
    invoke-virtual {p8, v1}, Lcom/mysql/jdbc/Buffer;->readLenByteArray(I)[B

    move-result-object v3

    aput-object v3, v2, v0

    .line 2023
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2009
    :cond_5
    invoke-direct {p0, p8}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket(Lcom/mysql/jdbc/Buffer;)V

    goto :goto_1

    .line 2027
    :cond_6
    new-instance v0, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    goto :goto_0

    .line 2030
    :cond_7
    if-nez p7, :cond_8

    .line 2031
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p8}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    .line 2034
    :cond_8
    new-instance v0, Lcom/mysql/jdbc/BufferRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-direct {v0, p8, p1, v1, v2}, Lcom/mysql/jdbc/BufferRow;-><init>(Lcom/mysql/jdbc/Buffer;[Lcom/mysql/jdbc/Field;ZLcom/mysql/jdbc/ExceptionInterceptor;)V

    goto :goto_0

    .line 2038
    :cond_9
    invoke-direct {p0, p8}, Lcom/mysql/jdbc/MysqlIO;->readServerStatusForResultSets(Lcom/mysql/jdbc/Buffer;)V

    goto :goto_0

    .line 2046
    :cond_a
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->isEOFDeprecated()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p8}, Lcom/mysql/jdbc/Buffer;->isEOFPacket()Z

    move-result v1

    if-nez v1, :cond_10

    :cond_b
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->isEOFDeprecated()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p8}, Lcom/mysql/jdbc/Buffer;->isResultSetOKPacket()Z

    move-result v1

    if-nez v1, :cond_10

    .line 2047
    :cond_c
    if-eq p4, v5, :cond_d

    if-nez p5, :cond_e

    if-nez p6, :cond_e

    .line 2048
    :cond_d
    invoke-direct {p0, p1, p8, p4}, Lcom/mysql/jdbc/MysqlIO;->unpackBinaryResultSetRow([Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/Buffer;I)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v0

    goto/16 :goto_0

    .line 2051
    :cond_e
    if-nez p7, :cond_f

    .line 2052
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p8}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    .line 2055
    :cond_f
    new-instance v0, Lcom/mysql/jdbc/BufferRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, p8, p1, v2, v1}, Lcom/mysql/jdbc/BufferRow;-><init>(Lcom/mysql/jdbc/Buffer;[Lcom/mysql/jdbc/Field;ZLcom/mysql/jdbc/ExceptionInterceptor;)V

    goto/16 :goto_0

    .line 2058
    :cond_10
    invoke-virtual {p8}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p8, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 2059
    invoke-direct {p0, p8}, Lcom/mysql/jdbc/MysqlIO;->readServerStatusForResultSets(Lcom/mysql/jdbc/Buffer;)V

    goto/16 :goto_0
.end method

.method final nextRowFast([Lcom/mysql/jdbc/Field;IZIZZZ)Lcom/mysql/jdbc/ResultSetRow;
    .locals 11
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
    .line 2067
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 2069
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 2070
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 2071
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MysqlIO.43"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2231
    :catch_0
    move-exception v5

    .line 2232
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2074
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int v5, v0, v1

    .line 2077
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    if-ne v5, v0, :cond_1

    .line 2078
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    invoke-direct {p0, v0, v5}, Lcom/mysql/jdbc/MysqlIO;->reuseAndReadPacket(Lcom/mysql/jdbc/Buffer;I)Lcom/mysql/jdbc/Buffer;

    .line 2081
    iget-object v8, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/mysql/jdbc/MysqlIO;->nextRow([Lcom/mysql/jdbc/Field;IZIZZZLcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v0

    .line 2230
    :goto_0
    return-object v0

    .line 2087
    :cond_1
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->useBufferRowSizeThreshold:I

    if-le v5, v0, :cond_2

    .line 2088
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    invoke-direct {p0, v0, v5}, Lcom/mysql/jdbc/MysqlIO;->reuseAndReadPacket(Lcom/mysql/jdbc/Buffer;I)Lcom/mysql/jdbc/Buffer;

    .line 2091
    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v8}, Lcom/mysql/jdbc/MysqlIO;->nextRow([Lcom/mysql/jdbc/Field;IZIZZZLcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v0

    goto :goto_0

    .line 2096
    :cond_2
    const/4 v3, 0x1

    .line 2098
    const/4 v0, 0x0

    check-cast v0, [[B

    .line 2100
    const/4 v1, 0x0

    move v4, v1

    move-object v2, v0

    move v1, v5

    :goto_1
    if-ge v4, p2, :cond_d

    .line 2102
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 2103
    add-int/lit8 v1, v1, -0x1

    .line 2105
    if-eqz v3, :cond_9

    .line 2106
    const/16 v2, 0xff

    if-ne v0, v2, :cond_3

    .line 2109
    new-instance v2, Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v3, v5, 0x4

    invoke-direct {v2, v3}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 2110
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 2111
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v6, 0x0

    aget-byte v3, v3, v6

    invoke-virtual {v2, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2112
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v6, 0x1

    aget-byte v3, v3, v6

    invoke-virtual {v2, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2113
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v6, 0x2

    aget-byte v3, v3, v6

    invoke-virtual {v2, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2114
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2115
    int-to-byte v3, v0

    invoke-virtual {v2, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2116
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v6

    const/4 v7, 0x5

    add-int/lit8 v8, v5, -0x1

    invoke-direct {p0, v3, v6, v7, v8}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    .line 2117
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 2118
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket(Lcom/mysql/jdbc/Buffer;)V

    .line 2121
    :cond_3
    const/16 v2, 0xfe

    if-ne v0, v2, :cond_8

    const v2, 0xffffff

    if-ge v5, v2, :cond_8

    .line 2128
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    if-eqz v0, :cond_5

    .line 2129
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->isEOFDeprecated()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2131
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlIO;->skipLengthEncodedInteger(Ljava/io/InputStream;)I

    move-result v0

    sub-int v0, v1, v0

    .line 2132
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-direct {p0, v1}, Lcom/mysql/jdbc/MysqlIO;->skipLengthEncodedInteger(Ljava/io/InputStream;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 2134
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    iput v1, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    .line 2135
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iput v1, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 2136
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    invoke-direct {p0, v1}, Lcom/mysql/jdbc/MysqlIO;->checkTransactionState(I)V

    .line 2137
    add-int/lit8 v0, v0, -0x2

    .line 2139
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iput v1, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    .line 2140
    add-int/lit8 v0, v0, -0x2

    .line 2142
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    if-lez v1, :cond_4

    .line 2143
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    .line 2163
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlIO;->setServerSlowQueryFlags()V

    .line 2165
    if-lez v0, :cond_5

    .line 2166
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Lcom/mysql/jdbc/MysqlIO;->skipFully(Ljava/io/InputStream;J)J

    .line 2170
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2148
    :cond_6
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    .line 2149
    add-int/lit8 v0, v1, -0x2

    .line 2151
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    if-lez v1, :cond_7

    .line 2152
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    .line 2155
    :cond_7
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    iput v1, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    .line 2157
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iput v1, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 2158
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    invoke-direct {p0, v1}, Lcom/mysql/jdbc/MysqlIO;->checkTransactionState(I)V

    .line 2160
    add-int/lit8 v0, v0, -0x2

    goto :goto_2

    .line 2173
    :cond_8
    new-array v2, p2, [[B

    .line 2175
    const/4 v3, 0x0

    .line 2180
    :cond_9
    packed-switch v0, :pswitch_data_0

    move v10, v0

    move v0, v1

    move v1, v10

    .line 2208
    :goto_3
    const/4 v6, -0x1

    if-ne v1, v6, :cond_a

    .line 2209
    const/4 v1, 0x0

    aput-object v1, v2, v4

    .line 2100
    :goto_4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto/16 :goto_1

    .line 2182
    :pswitch_0
    const/4 v0, -0x1

    move v10, v0

    move v0, v1

    move v1, v10

    .line 2183
    goto :goto_3

    .line 2186
    :pswitch_1
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v6, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v0, v6

    .line 2187
    add-int/lit8 v1, v1, -0x2

    move v10, v0

    move v0, v1

    move v1, v10

    .line 2188
    goto :goto_3

    .line 2191
    :pswitch_2
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v6, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v0, v6

    iget-object v6, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v0, v6

    .line 2193
    add-int/lit8 v1, v1, -0x3

    move v10, v0

    move v0, v1

    move v1, v10

    .line 2194
    goto :goto_3

    .line 2197
    :pswitch_3
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v6, v0

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v8, v0

    const/16 v0, 0x8

    shl-long/2addr v8, v0

    or-long/2addr v6, v8

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v8, v0

    const/16 v0, 0x10

    shl-long/2addr v8, v0

    or-long/2addr v6, v8

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v8, v0

    const/16 v0, 0x18

    shl-long/2addr v8, v0

    or-long/2addr v6, v8

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v8, v0

    const/16 v0, 0x20

    shl-long/2addr v8, v0

    or-long/2addr v6, v8

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v8, v0

    const/16 v0, 0x28

    shl-long/2addr v8, v0

    or-long/2addr v6, v8

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v8, v0

    const/16 v0, 0x30

    shl-long/2addr v8, v0

    or-long/2addr v6, v8

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v8, v0

    const/16 v0, 0x38

    shl-long/2addr v8, v0

    or-long/2addr v6, v8

    long-to-int v0, v6

    .line 2201
    add-int/lit8 v1, v1, -0x8

    move v10, v0

    move v0, v1

    move v1, v10

    .line 2202
    goto/16 :goto_3

    .line 2210
    :cond_a
    if-nez v1, :cond_b

    .line 2211
    sget-object v1, Lcom/mysql/jdbc/Constants;->EMPTY_BYTE_ARRAY:[B

    aput-object v1, v2, v4

    goto/16 :goto_4

    .line 2213
    :cond_b
    new-array v6, v1, [B

    aput-object v6, v2, v4

    .line 2215
    iget-object v6, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    aget-object v7, v2, v4

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8, v1}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v6

    .line 2217
    if-eq v6, v1, :cond_c

    .line 2218
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    new-instance v5, Ljava/io/IOException;

    const-string v6, "MysqlIO.43"

    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2222
    :cond_c
    sub-int/2addr v0, v6

    goto/16 :goto_4

    .line 2226
    :cond_d
    if-lez v1, :cond_e

    .line 2227
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    int-to-long v3, v1

    invoke-direct {p0, v0, v3, v4}, Lcom/mysql/jdbc/MysqlIO;->skipFully(Ljava/io/InputStream;J)J

    .line 2230
    :cond_e
    new-instance v0, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2180
    :pswitch_data_0
    .packed-switch 0xfb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method final quit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 2247
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 2249
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2258
    :cond_0
    :goto_0
    :try_start_2
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 2259
    const/4 v1, -0x1

    iput-byte v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 2260
    const/4 v1, -0x1

    iput-byte v1, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    .line 2261
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2262
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2264
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 2266
    return-void

    .line 2254
    :catch_0
    move-exception v0

    .line 2255
    :try_start_3
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v1

    const-string v2, "Caught while disconnecting..."

    invoke-interface {v1, v2, v0}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2264
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    throw v0

    .line 2250
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method readAllResults(Lcom/mysql/jdbc/StatementImpl;IIIZLjava/lang/String;Lcom/mysql/jdbc/Buffer;ZJ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;
    .locals 15
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
    .line 2342
    invoke-virtual/range {p7 .. p7}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 2344
    invoke-virtual/range {p0 .. p11}, Lcom/mysql/jdbc/MysqlIO;->readResultsForQueryOrUpdate(Lcom/mysql/jdbc/StatementImpl;IIIZLjava/lang/String;Lcom/mysql/jdbc/Buffer;ZJ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v13

    .line 2349
    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v3, 0x20000

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 2351
    :goto_0
    iget v2, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 2356
    :goto_1
    if-eqz v2, :cond_3

    if-eqz p5, :cond_3

    .line 2361
    invoke-virtual {v13}, Lcom/mysql/jdbc/ResultSetImpl;->getUpdateCount()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 2362
    invoke-virtual {p0, v13}, Lcom/mysql/jdbc/MysqlIO;->tackOnMoreStreamingResults(Lcom/mysql/jdbc/ResultSetImpl;)Z

    .line 2365
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlIO;->reclaimLargeReusablePacket()V

    move-object v1, v13

    .line 2392
    :goto_2
    return-object v1

    .line 2349
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2351
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 2370
    :cond_3
    and-int/2addr v1, v2

    move-object v14, v13

    .line 2372
    :goto_3
    if-eqz v1, :cond_5

    .line 2373
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v8

    .line 2374
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    .line 2376
    invoke-virtual/range {v1 .. v12}, Lcom/mysql/jdbc/MysqlIO;->readResultsForQueryOrUpdate(Lcom/mysql/jdbc/StatementImpl;IIIZLjava/lang/String;Lcom/mysql/jdbc/Buffer;ZJ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v2

    .line 2379
    invoke-virtual {v14, v2}, Lcom/mysql/jdbc/ResultSetImpl;->setNextResultSet(Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    .line 2383
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_4
    move-object v14, v2

    .line 2384
    goto :goto_3

    .line 2383
    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    .line 2386
    :cond_5
    if-nez p5, :cond_6

    .line 2387
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    .line 2390
    :cond_6
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlIO;->reclaimLargeReusablePacket()V

    move-object v1, v13

    .line 2392
    goto :goto_2
.end method

.method protected final readPacket()Lcom/mysql/jdbc/Buffer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 568
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 570
    if-ge v0, v4, :cond_0

    .line 571
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 572
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MysqlIO.1"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 632
    :catch_0
    move-exception v5

    .line 633
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 575
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 577
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->maxAllowedPacket:I

    if-le v0, v1, :cond_1

    .line 578
    new-instance v1, Lcom/mysql/jdbc/PacketTooBigException;

    int-to-long v2, v0

    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->maxAllowedPacket:I

    int-to-long v4, v0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/PacketTooBigException;-><init>(JJ)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 635
    :catch_1
    move-exception v0

    .line 637
    :try_start_2
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/mysql/jdbc/MySQLConnection;->realClose(ZZZLjava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 640
    :goto_0
    throw v0

    .line 581
    :cond_1
    :try_start_3
    iget-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    if-eqz v1, :cond_2

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 584
    const-string v2, "MysqlIO.2"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 586
    const-string v2, "MysqlIO.3"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/mysql/jdbc/StringUtils;->dumpAsHex([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 592
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    .line 594
    iget-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequenceReset:Z

    if-nez v2, :cond_4

    .line 595
    iget-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->enablePacketDebug:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequence:Z

    if-eqz v2, :cond_3

    .line 596
    invoke-direct {p0, v1}, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequencing(B)V

    .line 602
    :cond_3
    :goto_1
    iput-byte v1, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    .line 605
    new-array v1, v0, [B

    .line 606
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v2

    .line 608
    if-eq v2, v0, :cond_5

    .line 609
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Short read, expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes, only read "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 599
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequenceReset:Z

    goto :goto_1

    .line 612
    :cond_5
    new-instance v5, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v5, v1}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    .line 614
    iget-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    if-eqz v1, :cond_6

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    const-string v2, "MysqlIO.4"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    invoke-static {v5, v0}, Lcom/mysql/jdbc/MysqlIO;->getPacketDumpToLog(Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 623
    :cond_6
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->enablePacketDebug:Z

    if-eqz v0, :cond_7

    .line 624
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/MysqlIO;->enqueuePacketForDebugging(ZZI[BLcom/mysql/jdbc/Buffer;)V

    .line 627
    :cond_7
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMaintainTimeStats()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    .line 631
    :cond_8
    return-object v5

    .line 638
    :catch_2
    move-exception v1

    goto/16 :goto_0
.end method

.method protected final readResultsForQueryOrUpdate(Lcom/mysql/jdbc/StatementImpl;IIIZLjava/lang/String;Lcom/mysql/jdbc/Buffer;ZJ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;
    .locals 12
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
    .line 3094
    invoke-virtual/range {p7 .. p7}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v3

    .line 3096
    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-nez v1, :cond_0

    .line 3097
    move-object/from16 v0, p7

    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/MysqlIO;->buildResultSetWithUpdates(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v1

    .line 3118
    :goto_0
    return-object v1

    .line 3098
    :cond_0
    const-wide/16 v1, -0x1

    cmp-long v1, v3, v1

    if-nez v1, :cond_4

    .line 3099
    const/4 v1, 0x0

    .line 3101
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3102
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 3107
    :cond_1
    iget-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->platformDbCharsetMatches:Z

    if-eqz v2, :cond_3

    .line 3108
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v1, v2}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v1

    .line 3113
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/mysql/jdbc/MysqlIO;->sendFileToServer(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v1

    goto :goto_0

    .line 3108
    :cond_2
    invoke-virtual/range {p7 .. p7}, Lcom/mysql/jdbc/Buffer;->readString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 3110
    :cond_3
    invoke-virtual/range {p7 .. p7}, Lcom/mysql/jdbc/Buffer;->readString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p8

    move-object/from16 v11, p11

    .line 3115
    invoke-virtual/range {v1 .. v11}, Lcom/mysql/jdbc/MysqlIO;->getResultSet(Lcom/mysql/jdbc/StatementImpl;JIIIZLjava/lang/String;Z[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v1

    goto :goto_0
.end method

.method protected releaseResources()V
    .locals 1

    .prologue
    .line 5007
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    if-eqz v0, :cond_0

    .line 5008
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 5009
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    .line 5011
    :cond_0
    return-void
.end method

.method resetMaxBuf()V
    .locals 1

    .prologue
    .line 2399
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMaxAllowedPacket()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->maxAllowedPacket:I

    .line 2400
    return-void
.end method

.method protected resetReadPacketSequence()V
    .locals 1

    .prologue
    .line 909
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    .line 910
    return-void
.end method

.method scanForAndThrowDataTruncation()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 4190
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v3, v1}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getJdbcCompliantTruncation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    if-lez v0, :cond_0

    .line 4191
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    .line 4192
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget v2, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->convertShowWarningsToSQLWarnings(Lcom/mysql/jdbc/Connection;IZ)Ljava/sql/SQLWarning;

    .line 4193
    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    .line 4195
    :cond_0
    return-void
.end method

.method secureAuth411(Lcom/mysql/jdbc/Buffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 4
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
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4346
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getEncodingForHandshake()Ljava/lang/String;

    move-result-object v0

    .line 4365
    if-nez p1, :cond_0

    .line 4366
    new-instance p1, Lcom/mysql/jdbc/Buffer;

    invoke-direct {p1, p2}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 4369
    :cond_0
    if-eqz p6, :cond_1

    .line 4370
    iget-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    if-eqz v1, :cond_8

    .line 4371
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v2, v2}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4372
    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {p1, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4373
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4375
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/MysqlIO;->appendCharsetByteForHandshake(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;)V

    .line 4378
    const/16 v1, 0x17

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 4390
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 4391
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p1, p3, v0, v1}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4394
    :cond_2
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    .line 4395
    const/16 v1, 0x14

    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 4398
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v1, v2}, Lcom/mysql/jdbc/Security;->scramble411(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4411
    :goto_1
    iget-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-eqz v1, :cond_a

    .line 4412
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p1, p5, v0, v1}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4419
    :cond_3
    :goto_2
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 4420
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-direct {p0, p1, v0, v1}, Lcom/mysql/jdbc/MysqlIO;->sendConnectionAttributes(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4423
    :cond_4
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 4425
    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 4427
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v1

    .line 4429
    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->isAuthMethodSwitchRequestPacket()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4433
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 4434
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 4436
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4437
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v0, v1}, Lcom/mysql/jdbc/Util;->newCrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    .line 4438
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 4441
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    .line 4444
    :cond_5
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-nez v0, :cond_6

    .line 4445
    invoke-direct {p0, p5}, Lcom/mysql/jdbc/MysqlIO;->changeDatabaseTo(Ljava/lang/String;)V

    .line 4447
    :cond_6
    return-void

    .line 4380
    :cond_7
    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {p1, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4381
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    goto/16 :goto_0

    .line 4384
    :cond_8
    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    long-to-int v1, v1

    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 4385
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    goto/16 :goto_0

    .line 4399
    :catch_0
    move-exception v0

    .line 4400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MysqlIO.91"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MysqlIO.92"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4402
    :catch_1
    move-exception v0

    .line 4403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MysqlIO.91"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MysqlIO.92"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4408
    :cond_9
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    goto/16 :goto_1

    .line 4413
    :cond_a
    if-eqz p7, :cond_3

    .line 4415
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    goto/16 :goto_2
.end method

.method final sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;
    .locals 8
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
    const/4 v0, 0x0

    .line 2430
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->commandCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mysql/jdbc/MysqlIO;->commandCount:I

    .line 2436
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getEnablePacketDebug()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->enablePacketDebug:Z

    .line 2437
    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    .line 2441
    if-eqz p6, :cond_c

    .line 2443
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1

    .line 2444
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v2, p6}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v1

    .line 2453
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlIO;->checkForOutstandingStreamingData()V

    .line 2456
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    iput v1, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    .line 2457
    const/4 v1, 0x0

    iput v1, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 2458
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    .line 2459
    const/4 v1, 0x0

    iput v1, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    .line 2461
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->queryNoIndexUsed:Z

    .line 2462
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->queryBadIndexUsed:Z

    .line 2463
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->serverQueryWasSlow:Z

    .line 2468
    iget-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    if-eqz v1, :cond_0

    .line 2469
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 2471
    if-lez v1, :cond_0

    .line 2472
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_4

    .line 2477
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    .line 2484
    if-nez p3, :cond_b

    .line 2485
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x2

    .line 2487
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    if-nez v1, :cond_2

    .line 2488
    new-instance v1, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v1, v0}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    .line 2491
    :cond_2
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 2492
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    .line 2493
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    .line 2494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequence:Z

    .line 2495
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 2497
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2499
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0x16

    if-ne p1, v0, :cond_4

    .line 2500
    :cond_3
    if-nez p5, :cond_9

    .line 2501
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0, p2}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;)V

    .line 2508
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2522
    :goto_2
    const/4 v0, 0x0

    .line 2524
    if-nez p4, :cond_7

    .line 2525
    const/16 v0, 0x17

    if-eq p1, v0, :cond_5

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_6

    .line 2526
    :cond_5
    const/4 v0, 0x0

    :try_start_3
    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    .line 2527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequenceReset:Z

    .line 2530
    :cond_6
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket(I)Lcom/mysql/jdbc/Buffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    .line 2544
    :cond_7
    if-eqz p6, :cond_8

    .line 2546
    :try_start_4
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v1, v7}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_6

    .line 2533
    :cond_8
    return-object v0

    .line 2445
    :catch_0
    move-exception v5

    .line 2446
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2503
    :cond_9
    :try_start_5
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v4

    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v1, p2

    move-object v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 2514
    :catch_1
    move-exception v0

    .line 2516
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_4

    .line 2534
    :catch_2
    move-exception v5

    .line 2535
    :try_start_7
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlIO;->preserveOldTransactionState()V

    .line 2536
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2544
    :catchall_0
    move-exception v0

    if-eqz p6, :cond_a

    .line 2546
    :try_start_8
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v1, v7}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_5

    .line 2544
    :cond_a
    throw v0

    .line 2510
    :cond_b
    const/4 v0, -0x1

    :try_start_9
    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 2511
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    .line 2512
    invoke-virtual {p3}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    invoke-direct {p0, p3, v0}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 2517
    :catch_3
    move-exception v5

    .line 2518
    :try_start_a
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_4

    .line 2539
    :catch_4
    move-exception v0

    .line 2540
    :try_start_b
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlIO;->preserveOldTransactionState()V

    .line 2541
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2547
    :catch_5
    move-exception v5

    .line 2548
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2547
    :catch_6
    move-exception v5

    .line 2548
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_c
    move v7, v0

    goto/16 :goto_0
.end method

.method protected setSocketTimeout(I)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4994
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 4995
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5004
    :cond_0
    return-void

    .line 4997
    :catch_0
    move-exception v0

    .line 4998
    const-string v1, "Invalid socket timeout value or state"

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 5000
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 5002
    throw v1
.end method

.method protected setStatementInterceptors(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mysql/jdbc/StatementInterceptorV2;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4985
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    .line 4986
    return-void
.end method

.method protected shouldIntercept()Z
    .locals 1

    .prologue
    .line 2559
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final skipPacket()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 514
    if-ge v0, v4, :cond_0

    .line 515
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 516
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MysqlIO.1"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 545
    :catch_0
    move-exception v5

    .line 546
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 519
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 521
    iget-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    if-eqz v1, :cond_1

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    const-string v2, "MysqlIO.2"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 526
    const-string v2, "MysqlIO.3"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/mysql/jdbc/StringUtils;->dumpAsHex([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 532
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    .line 534
    iget-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequenceReset:Z

    if-nez v2, :cond_3

    .line 535
    iget-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->enablePacketDebug:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequence:Z

    if-eqz v2, :cond_2

    .line 536
    invoke-direct {p0, v1}, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequencing(B)V

    .line 542
    :cond_2
    :goto_0
    iput-byte v1, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    .line 544
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Lcom/mysql/jdbc/MysqlIO;->skipFully(Ljava/io/InputStream;J)J

    .line 555
    return-void

    .line 539
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequenceReset:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 548
    :catch_1
    move-exception v0

    .line 550
    :try_start_2
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/mysql/jdbc/MySQLConnection;->realClose(ZZZLjava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 553
    :goto_1
    throw v0

    .line 551
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method final sqlQueryDirect(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/Buffer;IIIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 32
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
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2582
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    .line 2585
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 2586
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/mysql/jdbc/MysqlIO;->invokeStatementInterceptorsPre(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    .line 2588
    if-eqz v23, :cond_0

    .line 2844
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    :goto_0
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    .line 2818
    return-object v23

    .line 2593
    :cond_0
    const-wide/16 v12, 0x0

    .line 2594
    const-wide/16 v10, 0x0

    .line 2596
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getStatementComment()Ljava/lang/String;

    move-result-object v3

    .line 2598
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getIncludeThreadNamesAsStatementComment()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2599
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "java thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2602
    :cond_1
    if-eqz p2, :cond_29

    .line 2605
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x5

    add-int/lit8 v9, v4, 0x2

    .line 2607
    const/4 v4, 0x0

    .line 2609
    if-eqz v3, :cond_28

    .line 2610
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v8

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v4

    .line 2613
    array-length v5, v4

    add-int/2addr v5, v9

    .line 2614
    add-int/lit8 v5, v5, 0x6

    .line 2617
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    if-nez v6, :cond_e

    .line 2618
    new-instance v6, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v6, v5}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    .line 2623
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2625
    if-eqz v4, :cond_2

    .line 2626
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    sget-object v6, Lcom/mysql/jdbc/Constants;->SLASH_STAR_SPACE_AS_BYTES:[B

    invoke-virtual {v5, v6}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 2627
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v5, v4}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 2628
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    sget-object v5, Lcom/mysql/jdbc/Constants;->SPACE_STAR_SLASH_SPACE_AS_BYTES:[B

    invoke-virtual {v4, v5}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 2631
    :cond_2
    if-eqz p3, :cond_12

    .line 2632
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mysql/jdbc/MysqlIO;->platformDbCharsetMatches:Z

    if-eqz v4, :cond_10

    .line 2633
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v4 .. v9}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)V

    .line 2647
    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    .line 2650
    :goto_5
    const/4 v4, 0x0

    .line 2651
    const/16 v29, 0x0

    .line 2653
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/mysql/jdbc/MysqlIO;->needToGrabQueryFromPacket:Z

    if-eqz v5, :cond_27

    .line 2654
    invoke-virtual {v6}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v4

    .line 2657
    invoke-virtual {v6}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v29

    .line 2659
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getCurrentTimeNanosOrMillis()J

    move-result-wide v7

    move-object v12, v4

    move-wide/from16 v30, v7

    .line 2662
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mysql/jdbc/MysqlIO;->autoGenerateTestcaseScript:Z

    if-eqz v4, :cond_3

    .line 2665
    if-eqz p2, :cond_14

    .line 2666
    if-eqz v3, :cond_13

    .line 2667
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/* "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " */ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2675
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2676
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5, v4}, Lcom/mysql/jdbc/MySQLConnection;->generateConnectionCommentBlock(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 2677
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2678
    const/16 v3, 0x3b

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2679
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mysql/jdbc/MySQLConnection;->dumpTestcaseQuery(Ljava/lang/String;)V

    .line 2683
    :cond_3
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    move-result-object v14

    .line 2685
    const-wide/16 v7, 0x0

    .line 2688
    const/4 v4, 0x0

    .line 2690
    const/4 v5, 0x0

    .line 2692
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/MysqlIO;->logSlowQueries:Z

    if-eqz v3, :cond_26

    .line 2693
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getCurrentTimeNanosOrMillis()J

    move-result-wide v7

    .line 2695
    const/4 v9, 0x0

    .line 2697
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    if-eqz v3, :cond_15

    .line 2698
    const/4 v3, 0x1

    .line 2718
    :goto_8
    if-eqz v3, :cond_24

    .line 2720
    const/4 v3, 0x0

    .line 2724
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getMaxQuerySizeToLog()I

    move-result v4

    move/from16 v0, v29

    if-le v0, v4, :cond_23

    .line 2725
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getMaxQuerySizeToLog()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    .line 2726
    const/4 v4, 0x1

    .line 2729
    :goto_9
    const/4 v9, 0x5

    add-int/lit8 v3, v3, -0x5

    invoke-static {v12, v9, v3}, Lcom/mysql/jdbc/StringUtils;->toString([BII)Ljava/lang/String;

    move-result-object v3

    .line 2731
    if-eqz v4, :cond_5

    .line 2732
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MysqlIO.25"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    :goto_a
    move-object/from16 v24, v3

    move-wide/from16 v25, v7

    move-wide/from16 v27, v7

    move v3, v5

    .line 2739
    :goto_b
    const/4 v15, 0x0

    const-wide/16 v16, -0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v18, p10

    invoke-virtual/range {v7 .. v18}, Lcom/mysql/jdbc/MysqlIO;->readAllResults(Lcom/mysql/jdbc/StatementImpl;IIIZLjava/lang/String;Lcom/mysql/jdbc/Buffer;ZJ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v23

    .line 2742
    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/MysqlIO;->serverQueryWasSlow:Z

    if-nez v3, :cond_6

    .line 2743
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2745
    const-string v5, "MysqlIO.SlowQuery"

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/MysqlIO;->useAutoSlowLog:Z

    if-eqz v3, :cond_18

    const-string v3, " 95% of all queries "

    :goto_c
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mysql/jdbc/MysqlIO;->queryTimingUnits:Ljava/lang/String;

    aput-object v8, v7, v3

    const/4 v3, 0x2

    sub-long v8, v27, v30

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v5, v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2748
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2750
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v3}, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->getInstance(Lcom/mysql/jdbc/MySQLConnection;)Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v5

    .line 2752
    new-instance v7, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v8, 0x6

    const-string v9, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v11

    if-eqz p1, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->getId()I

    move-result v13

    :goto_d
    move-object/from16 v0, v23

    check-cast v0, Lcom/mysql/jdbc/ResultSetImpl;

    move-object v3, v0

    iget v14, v3, Lcom/mysql/jdbc/ResultSetImpl;->resultId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long v17, v27, v30

    move-wide/from16 v0, v17

    long-to-int v3, v0

    int-to-long v0, v3

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mysql/jdbc/MysqlIO;->queryTimingUnits:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v10, p9

    invoke-direct/range {v7 .. v22}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 2757
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getExplainSlowQueries()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2758
    const/high16 v3, 0x10

    move/from16 v0, v29

    if-ge v0, v3, :cond_1a

    .line 2759
    const/4 v3, 0x5

    add-int/lit8 v4, v29, -0x5

    invoke-virtual {v6, v3, v4}, Lcom/mysql/jdbc/Buffer;->getBytes(II)[B

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Lcom/mysql/jdbc/MysqlIO;->explainSlowQuery([BLjava/lang/String;)V

    .line 2766
    :cond_6
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/MysqlIO;->logSlowQueries:Z

    if-eqz v3, :cond_9

    .line 2768
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v3}, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->getInstance(Lcom/mysql/jdbc/MySQLConnection;)Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v19

    .line 2770
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/MysqlIO;->queryBadIndexUsed:Z

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    if-eqz v3, :cond_7

    .line 2771
    new-instance v3, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v4, 0x6

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v7

    if-eqz p1, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->getId()I

    move-result v9

    :goto_f
    move-object/from16 v0, v23

    check-cast v0, Lcom/mysql/jdbc/ResultSetImpl;

    move-object v6, v0

    iget v10, v6, Lcom/mysql/jdbc/ResultSetImpl;->resultId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v13, v27, v30

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mysql/jdbc/MysqlIO;->queryTimingUnits:Ljava/lang/String;

    const/16 v16, 0x0

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "MysqlIO.33"

    invoke-static/range {v18 .. v18}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v6, p9

    invoke-direct/range {v3 .. v18}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 2777
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/MysqlIO;->queryNoIndexUsed:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    if-eqz v3, :cond_8

    .line 2778
    new-instance v3, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v4, 0x6

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v7

    if-eqz p1, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->getId()I

    move-result v9

    :goto_10
    move-object/from16 v0, v23

    check-cast v0, Lcom/mysql/jdbc/ResultSetImpl;

    move-object v6, v0

    iget v10, v6, Lcom/mysql/jdbc/ResultSetImpl;->resultId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v13, v27, v30

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mysql/jdbc/MysqlIO;->queryTimingUnits:Ljava/lang/String;

    const/16 v16, 0x0

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "MysqlIO.35"

    invoke-static/range {v18 .. v18}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v6, p9

    invoke-direct/range {v3 .. v18}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 2784
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/MysqlIO;->serverQueryWasSlow:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    if-eqz v3, :cond_9

    .line 2785
    new-instance v3, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v4, 0x6

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v7

    if-eqz p1, :cond_1d

    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->getId()I

    move-result v9

    :goto_11
    move-object/from16 v0, v23

    check-cast v0, Lcom/mysql/jdbc/ResultSetImpl;

    move-object v6, v0

    iget v10, v6, Lcom/mysql/jdbc/ResultSetImpl;->resultId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v13, v27, v30

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mysql/jdbc/MysqlIO;->queryTimingUnits:Ljava/lang/String;

    const/16 v16, 0x0

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "MysqlIO.ServerSlowQuery"

    invoke-static/range {v18 .. v18}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v6, p9

    invoke-direct/range {v3 .. v18}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 2792
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    if-eqz v3, :cond_a

    .line 2793
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getCurrentTimeNanosOrMillis()J

    move-result-wide v19

    .line 2795
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v3}, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->getInstance(Lcom/mysql/jdbc/MySQLConnection;)Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v21

    .line 2797
    new-instance v3, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v4, 0x3

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v7

    if-eqz p1, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->getId()I

    move-result v9

    :goto_12
    move-object/from16 v0, v23

    check-cast v0, Lcom/mysql/jdbc/ResultSetImpl;

    move-object v6, v0

    iget v10, v6, Lcom/mysql/jdbc/ResultSetImpl;->resultId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v13, v27, v30

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mysql/jdbc/MysqlIO;->queryTimingUnits:Ljava/lang/String;

    const/16 v16, 0x0

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v6, p9

    move-object/from16 v18, v24

    invoke-direct/range {v3 .. v18}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 2801
    new-instance v3, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v4, 0x5

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v7

    if-eqz p1, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->getId()I

    move-result v9

    :goto_13
    move-object/from16 v0, v23

    check-cast v0, Lcom/mysql/jdbc/ResultSetImpl;

    move-object v6, v0

    iget v10, v6, Lcom/mysql/jdbc/ResultSetImpl;->resultId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v13, v19, v25

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mysql/jdbc/MysqlIO;->queryTimingUnits:Ljava/lang/String;

    const/16 v16, 0x0

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v6, p9

    invoke-direct/range {v3 .. v18}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 2806
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    if-eqz v3, :cond_b

    .line 2807
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->scanForAndThrowDataTruncation()V

    .line 2810
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    if-eqz v3, :cond_c

    .line 2811
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, v23

    invoke-virtual/range {v3 .. v8}, Lcom/mysql/jdbc/MysqlIO;->invokeStatementInterceptorsPost(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;ZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 2813
    if-eqz v3, :cond_c

    move-object/from16 v23, v3

    .line 2844
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    goto/16 :goto_0

    .line 2599
    :cond_d
    :try_start_2
    const-string v3, ""

    goto/16 :goto_1

    .line 2620
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v5}, Lcom/mysql/jdbc/Buffer;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 2819
    :catch_0
    move-exception v8

    .line 2820
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    if-eqz v3, :cond_f

    .line 2821
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/mysql/jdbc/MysqlIO;->invokeStatementInterceptorsPost(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;ZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 2824
    :cond_f
    if-eqz p1, :cond_22

    .line 2825
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mysql/jdbc/StatementImpl;->cancelTimeoutMutex:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2826
    :try_start_4
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z

    if-eqz v3, :cond_21

    .line 2829
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/mysql/jdbc/StatementImpl;->wasCancelledByTimeout:Z

    if-eqz v3, :cond_20

    .line 2830
    new-instance v3, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    invoke-direct {v3}, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;-><init>()V

    .line 2835
    :goto_14
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 2837
    throw v3

    .line 2839
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2844
    :catchall_1
    move-exception v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    throw v3

    .line 2636
    :cond_10
    :try_start_6
    const-string v4, "LOAD DATA"

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2637
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-static/range {p2 .. p2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    goto/16 :goto_4

    .line 2639
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v4 .. v9}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)V

    goto/16 :goto_4

    .line 2644
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_13
    move-object/from16 v3, p2

    .line 2669
    goto/16 :goto_7

    .line 2672
    :cond_14
    const/4 v3, 0x5

    add-int/lit8 v4, v29, -0x5

    invoke-static {v12, v3, v4}, Lcom/mysql/jdbc/StringUtils;->toString([BII)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    .line 2699
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/MysqlIO;->logSlowQueries:Z

    if-eqz v3, :cond_25

    .line 2700
    sub-long v10, v7, v30

    .line 2704
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mysql/jdbc/MysqlIO;->useAutoSlowLog:Z

    if-nez v3, :cond_17

    .line 2705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getSlowQueryThresholdMillis()I

    move-result v3

    int-to-long v15, v3

    cmp-long v3, v10, v15

    if-lez v3, :cond_16

    const/4 v3, 0x1

    .line 2712
    :goto_15
    if-eqz v3, :cond_25

    .line 2713
    const/4 v3, 0x1

    .line 2714
    const/4 v5, 0x1

    goto/16 :goto_8

    .line 2705
    :cond_16
    const/4 v3, 0x0

    goto :goto_15

    .line 2707
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v10, v11}, Lcom/mysql/jdbc/MySQLConnection;->isAbonormallyLongQuery(J)Z

    move-result v3

    .line 2709
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v13, v10, v11}, Lcom/mysql/jdbc/MySQLConnection;->reportQueryTime(J)V

    goto :goto_15

    .line 2745
    :cond_18
    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/mysql/jdbc/MysqlIO;->slowQueryThreshold:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto/16 :goto_c

    .line 2752
    :cond_19
    const/16 v13, 0x3e7

    goto/16 :goto_d

    .line 2761
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MysqlIO.28"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/high16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MysqlIO.29"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_e

    .line 2771
    :cond_1b
    const/16 v9, 0x3e7

    goto/16 :goto_f

    .line 2778
    :cond_1c
    const/16 v9, 0x3e7

    goto/16 :goto_10

    .line 2785
    :cond_1d
    const/16 v9, 0x3e7

    goto/16 :goto_11

    .line 2797
    :cond_1e
    const/16 v9, 0x3e7

    goto/16 :goto_12

    .line 2801
    :cond_1f
    const/16 v9, 0x3e7

    goto/16 :goto_13

    .line 2832
    :cond_20
    :try_start_7
    new-instance v3, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    invoke-direct {v3}, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;-><init>()V

    goto/16 :goto_14

    .line 2839
    :cond_21
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2842
    :cond_22
    :try_start_8
    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_23
    move v4, v3

    move/from16 v3, v29

    goto/16 :goto_9

    :cond_24
    move-object v3, v4

    goto/16 :goto_a

    :cond_25
    move v3, v9

    goto/16 :goto_8

    :cond_26
    move v3, v5

    move-object/from16 v24, v4

    move-wide/from16 v25, v7

    move-wide/from16 v27, v10

    goto/16 :goto_b

    :cond_27
    move-wide/from16 v30, v12

    move-object v12, v4

    goto/16 :goto_6

    :cond_28
    move v5, v9

    goto/16 :goto_2

    :cond_29
    move-object/from16 v6, p4

    goto/16 :goto_5
.end method

.method tackOnMoreStreamingResults(Lcom/mysql/jdbc/ResultSetImpl;)Z
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v12, 0x0

    .line 2296
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    move v0, v5

    move-object v13, p1

    move v1, v5

    .line 2302
    :goto_0
    if-eqz v1, :cond_0

    .line 2303
    if-nez v0, :cond_2

    invoke-virtual {v13}, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v12, v5

    .line 2337
    :cond_1
    return v12

    .line 2309
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v7

    .line 2310
    invoke-virtual {v7, v12}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 2312
    invoke-virtual {p1}, Lcom/mysql/jdbc/ResultSetImpl;->getStatement()Ljava/sql/Statement;

    move-result-object v0

    .line 2314
    invoke-interface {v0}, Ljava/sql/Statement;->getMaxRows()I

    move-result v2

    move-object v1, v0

    .line 2318
    check-cast v1, Lcom/mysql/jdbc/StatementImpl;

    invoke-interface {v0}, Ljava/sql/Statement;->getResultSetType()I

    move-result v3

    invoke-interface {v0}, Ljava/sql/Statement;->getResultSetConcurrency()I

    move-result v4

    invoke-interface {v0}, Ljava/sql/Statement;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/Connection;->getCatalog()Ljava/lang/String;

    move-result-object v6

    iget-boolean v8, p1, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/mysql/jdbc/MysqlIO;->readResultsForQueryOrUpdate(Lcom/mysql/jdbc/StatementImpl;IIIZLjava/lang/String;Lcom/mysql/jdbc/Buffer;ZJ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v1

    .line 2322
    invoke-virtual {v13, v1}, Lcom/mysql/jdbc/ResultSetImpl;->setNextResultSet(Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    .line 2326
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    move v0, v5

    .line 2328
    :goto_1
    invoke-virtual {v1}, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_1

    :cond_3
    move-object v13, v1

    move v1, v0

    move v0, v12

    .line 2332
    goto :goto_0

    :cond_4
    move v0, v12

    .line 2326
    goto :goto_1
.end method

.method protected final unpackField(Lcom/mysql/jdbc/Buffer;Z)Lcom/mysql/jdbc/Field;
    .locals 22
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 658
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    if-eqz v1, :cond_4

    .line 661
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mysql/jdbc/MysqlIO;->has41NewNewProt:Z

    if-eqz v1, :cond_0

    .line 663
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 664
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v2

    .line 665
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/MysqlIO;->adjustStartForFieldLength(II)I

    .line 668
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 669
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v5

    .line 670
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5}, Lcom/mysql/jdbc/MysqlIO;->adjustStartForFieldLength(II)I

    move-result v4

    .line 672
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 673
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v7

    .line 674
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v7}, Lcom/mysql/jdbc/MysqlIO;->adjustStartForFieldLength(II)I

    move-result v6

    .line 677
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 678
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v9

    .line 679
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v9}, Lcom/mysql/jdbc/MysqlIO;->adjustStartForFieldLength(II)I

    move-result v8

    .line 682
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 683
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v11

    .line 685
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/mysql/jdbc/MysqlIO;->adjustStartForFieldLength(II)I

    move-result v10

    .line 688
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 689
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v13

    .line 690
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13}, Lcom/mysql/jdbc/MysqlIO;->adjustStartForFieldLength(II)I

    move-result v12

    .line 692
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    .line 694
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v1

    int-to-short v0, v1

    move/from16 v21, v0

    .line 698
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mysql/jdbc/MysqlIO;->has41NewNewProt:Z

    if-eqz v1, :cond_2

    .line 699
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readLong()J

    move-result-wide v14

    .line 704
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    move/from16 v16, v0

    .line 708
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mysql/jdbc/MysqlIO;->hasLongColumnInfo:Z

    if-eqz v1, :cond_3

    .line 709
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v1

    int-to-short v0, v1

    move/from16 v17, v0

    .line 714
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    move/from16 v18, v0

    .line 716
    const/16 v19, -0x1

    .line 717
    const/16 v20, -0x1

    .line 719
    if-eqz p2, :cond_1

    .line 720
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    add-int/lit8 v19, v1, 0x1

    .line 721
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v20

    .line 724
    :cond_1
    new-instance v1, Lcom/mysql/jdbc/Field;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v3

    invoke-direct/range {v1 .. v21}, Lcom/mysql/jdbc/Field;-><init>(Lcom/mysql/jdbc/MySQLConnection;[BIIIIIIIIIIJISIIII)V

    .line 760
    :goto_2
    return-object v1

    .line 701
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readLongInt()I

    move-result v1

    int-to-long v14, v1

    goto :goto_0

    .line 711
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v0, v1

    move/from16 v17, v0

    goto :goto_1

    .line 731
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 732
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v7

    .line 733
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v7}, Lcom/mysql/jdbc/MysqlIO;->adjustStartForFieldLength(II)I

    move-result v6

    .line 735
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 736
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v5

    .line 737
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5}, Lcom/mysql/jdbc/MysqlIO;->adjustStartForFieldLength(II)I

    move-result v4

    .line 739
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readnBytes()I

    move-result v8

    .line 740
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readnBytes()I

    move-result v9

    .line 741
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    .line 745
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mysql/jdbc/MysqlIO;->hasLongColumnInfo:Z

    if-eqz v1, :cond_6

    .line 746
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v1

    int-to-short v10, v1

    .line 751
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v11, v1, 0xff

    .line 753
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mysql/jdbc/MysqlIO;->colDecimalNeedsBump:Z

    if-eqz v1, :cond_5

    .line 754
    add-int/lit8 v11, v11, 0x1

    .line 757
    :cond_5
    new-instance v1, Lcom/mysql/jdbc/Field;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v3

    invoke-direct/range {v1 .. v11}, Lcom/mysql/jdbc/Field;-><init>(Lcom/mysql/jdbc/MySQLConnection;[BIIIIIISI)V

    goto :goto_2

    .line 748
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v10, v1

    goto :goto_3
.end method

.method protected useNanosForElapsedTime()Z
    .locals 1

    .prologue
    .line 4954
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useNanosForElapsedTime:Z

    return v0
.end method

.method versionMeetsMinimum(III)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2956
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerMajorVersion()I

    move-result v2

    if-lt v2, p1, :cond_3

    .line 2957
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerMajorVersion()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 2958
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerMinorVersion()I

    move-result v2

    if-lt v2, p2, :cond_2

    .line 2959
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerMinorVersion()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 2960
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerSubMinorVersion()I

    move-result v2

    if-lt v2, p3, :cond_1

    .line 2975
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2960
    goto :goto_0

    :cond_2
    move v0, v1

    .line 2968
    goto :goto_0

    :cond_3
    move v0, v1

    .line 2975
    goto :goto_0
.end method
