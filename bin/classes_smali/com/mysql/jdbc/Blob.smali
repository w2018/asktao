.class public Lcom/mysql/jdbc/Blob;
.super Ljava/lang/Object;
.source "Blob.java"

# interfaces
.implements Ljava/sql/Blob;
.implements Lcom/mysql/jdbc/OutputStreamWatcher;


# instance fields
.field private binaryData:[B

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field private isClosed:Z


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/Blob;->isClosed:Z

    .line 56
    sget-object v0, Lcom/mysql/jdbc/Constants;->EMPTY_BYTE_ARRAY:[B

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/Blob;->setBinaryData([B)V

    .line 57
    iput-object p1, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 58
    return-void
.end method

.method constructor <init>([BLcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/Blob;->isClosed:Z

    .line 66
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/Blob;->setBinaryData([B)V

    .line 67
    iput-object p2, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 68
    return-void
.end method

.method constructor <init>([BLcom/mysql/jdbc/ResultSetInternalMethods;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/Blob;->isClosed:Z

    .line 78
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/Blob;->setBinaryData([B)V

    .line 79
    return-void
.end method

.method private declared-synchronized checkClosed()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 359
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/Blob;->isClosed:Z

    if-eqz v0, :cond_0

    .line 360
    const-string v0, "Invalid operation on closed BLOB"

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 362
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized getBinaryData()[B
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setBinaryData([B)V
    .locals 1
    .parameter

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized free()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 312
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/Blob;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    monitor-exit p0

    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBinaryStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    .line 96
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->getBinaryData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBinaryStream(JJ)Ljava/io/InputStream;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x1

    .line 337
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    .line 339
    cmp-long v0, p1, v1

    if-gez v0, :cond_0

    .line 340
    const-string v0, "\"pos\" argument can not be < 1."

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 343
    :cond_0
    sub-long v0, p1, v1

    .line 345
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 346
    const-string v0, "\"pos\" argument can not be larger than the BLOB\'s length."

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 350
    :cond_1
    add-long v2, v0, p3

    iget-object v4, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    array-length v4, v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 351
    const-string v0, "\"pos\" + \"length\" arguments can not be larger than the BLOB\'s length."

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 355
    :cond_2
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->getBinaryData()[B

    move-result-object v3

    long-to-int v0, v0

    long-to-int v1, p3

    invoke-direct {v2, v3, v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized getBytes(JI)[B
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x1

    .line 114
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    .line 116
    cmp-long v0, p1, v1

    if-gez v0, :cond_0

    .line 117
    const-string v0, "Blob.2"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 120
    :cond_0
    sub-long v0, p1, v1

    .line 122
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 123
    const-string v0, "\"pos\" argument can not be larger than the BLOB\'s length."

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 127
    :cond_1
    int-to-long v2, p3

    add-long/2addr v2, v0

    iget-object v4, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    array-length v4, v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 128
    const-string v0, "\"pos\" + \"length\" arguments can not be larger than the BLOB\'s length."

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 132
    :cond_2
    new-array v2, p3, [B

    .line 133
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->getBinaryData()[B

    move-result-object v3

    long-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {v3, v0, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    .line 150
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->getBinaryData()[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized position(Ljava/sql/Blob;J)J
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    .line 177
    const-wide/16 v0, 0x0

    invoke-interface {p1}, Ljava/sql/Blob;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {p1, v0, v1, v2}, Ljava/sql/Blob;->getBytes(JI)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/Blob;->position([BJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized position([BJ)J
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    const-string v0, "Not implemented"

    iget-object v1, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBinaryStream(J)Ljava/io/OutputStream;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x1

    .line 188
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    .line 190
    cmp-long v0, p1, v3

    if-gez v0, :cond_0

    .line 191
    const-string v0, "Blob.0"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 194
    :cond_0
    :try_start_1
    new-instance v0, Lcom/mysql/jdbc/WatchableOutputStream;

    invoke-direct {v0}, Lcom/mysql/jdbc/WatchableOutputStream;-><init>()V

    .line 195
    invoke-virtual {v0, p0}, Lcom/mysql/jdbc/WatchableOutputStream;->setWatcher(Lcom/mysql/jdbc/OutputStreamWatcher;)V

    .line 197
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    const/4 v2, 0x0

    sub-long v3, p1, v3

    long-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mysql/jdbc/WatchableOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :cond_1
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized setBytes(J[B)I
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    .line 210
    const/4 v4, 0x0

    array-length v5, p3

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mysql/jdbc/Blob;->setBytes(J[BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBytes(J[BII)I
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
    .line 217
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    .line 219
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/Blob;->setBinaryStream(J)Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 222
    :try_start_1
    invoke-virtual {v1, p3, p4, p5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 230
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 236
    :goto_0
    monitor-exit p0

    return p5

    .line 223
    :catch_0
    move-exception v0

    .line 224
    :try_start_3
    const-string v2, "Blob.1"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1000"

    iget-object v4, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 225
    invoke-virtual {v2, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 227
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    :catchall_0
    move-exception v0

    .line 230
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 229
    :goto_1
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 217
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 231
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized streamClosed(Lcom/mysql/jdbc/WatchableOutputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/WatchableOutputStream;->size()I

    move-result v0

    .line 252
    iget-object v1, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    array-length v2, v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v0, v2}, Lcom/mysql/jdbc/WatchableOutputStream;->write([BII)V

    .line 256
    :cond_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/WatchableOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized streamClosed([B)V
    .locals 1
    .parameter

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized truncate(J)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    .line 278
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 279
    const-string v0, "\"len\" argument can not be < 1."

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 282
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 283
    const-string v0, "\"len\" argument can not be larger than the BLOB\'s length."

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 289
    :cond_1
    long-to-int v0, p1

    new-array v0, v0, [B

    .line 290
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->getBinaryData()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    long-to-int v4, p1

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    iput-object v0, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    monitor-exit p0

    return-void
.end method
