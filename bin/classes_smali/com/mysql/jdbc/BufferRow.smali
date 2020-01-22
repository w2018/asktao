.class public Lcom/mysql/jdbc/BufferRow;
.super Lcom/mysql/jdbc/ResultSetRow;
.source "BufferRow.java"


# instance fields
.field private homePosition:I

.field private isBinaryEncoded:Z

.field private isNull:[Z

.field private lastRequestedIndex:I

.field private lastRequestedPos:I

.field private metadata:[Lcom/mysql/jdbc/Field;

.field private openStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private preNullBitmaskHomePosition:I

.field private rowFromServer:Lcom/mysql/jdbc/Buffer;


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/Buffer;[Lcom/mysql/jdbc/Field;ZLcom/mysql/jdbc/ExceptionInterceptor;)V
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
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p4}, Lcom/mysql/jdbc/ResultSetRow;-><init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 55
    iput v0, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    .line 60
    iput v0, p0, Lcom/mysql/jdbc/BufferRow;->preNullBitmaskHomePosition:I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    .line 94
    iput-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    .line 95
    iput-object p2, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    .line 96
    iput-boolean p3, p0, Lcom/mysql/jdbc/BufferRow;->isBinaryEncoded:Z

    .line 97
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    .line 98
    iget v0, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    iput v0, p0, Lcom/mysql/jdbc/BufferRow;->preNullBitmaskHomePosition:I

    .line 100
    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/BufferRow;->setMetadata([Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetRow;

    .line 103
    :cond_0
    return-void
.end method

.method private findAndSeekToOffset(I)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 127
    iget-boolean v1, p0, Lcom/mysql/jdbc/BufferRow;->isBinaryEncoded:Z

    if-nez v1, :cond_5

    .line 129
    if-nez p1, :cond_0

    .line 130
    iput v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    .line 131
    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    iput v1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    .line 132
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    iget v2, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 167
    :goto_0
    return v0

    .line 137
    :cond_0
    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    if-ne p1, v1, :cond_1

    .line 138
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 140
    iget v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    goto :goto_0

    .line 145
    :cond_1
    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    if-le p1, v1, :cond_3

    .line 146
    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    if-ltz v1, :cond_2

    .line 147
    iget v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    iget v2, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 157
    :goto_1
    if-ge v0, p1, :cond_4

    .line 158
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenByteArray()V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 154
    :cond_3
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    iget v2, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    goto :goto_1

    .line 161
    :cond_4
    iput p1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    .line 162
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    .line 164
    iget v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    goto :goto_0

    .line 167
    :cond_5
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffsetForBinaryEncoding(I)I

    move-result v0

    goto :goto_0
.end method

.method private findAndSeekToOffsetForBinaryEncoding(I)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 171
    if-nez p1, :cond_0

    .line 172
    iput v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    .line 173
    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    iput v1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    .line 174
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    iget v2, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 280
    :goto_0
    return v0

    .line 179
    :cond_0
    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    if-ne p1, v1, :cond_1

    .line 180
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 182
    iget v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    goto :goto_0

    .line 187
    :cond_1
    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    if-le p1, v1, :cond_3

    .line 188
    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    if-ltz v1, :cond_2

    .line 189
    iget v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    .line 196
    :goto_1
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    iget v2, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 201
    :goto_2
    if-ge v0, p1, :cond_5

    .line 202
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->isNull:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_4

    .line 201
    :goto_3
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 193
    :cond_2
    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    iput v1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    goto :goto_1

    .line 198
    :cond_3
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    iget v2, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    goto :goto_2

    .line 206
    :cond_4
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    .line 208
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MysqlIO.97"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MysqlIO.98"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MysqlIO.99"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    array-length v1, v1

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

    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 214
    :sswitch_1
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    goto :goto_3

    .line 219
    :sswitch_2
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    goto/16 :goto_3

    .line 224
    :sswitch_3
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v2, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    goto/16 :goto_3

    .line 228
    :sswitch_4
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v2, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    goto/16 :goto_3

    .line 232
    :sswitch_5
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v2, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    goto/16 :goto_3

    .line 236
    :sswitch_6
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v2, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    goto/16 :goto_3

    .line 240
    :sswitch_7
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenByteArray()V

    goto/16 :goto_3

    .line 245
    :sswitch_8
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenByteArray()V

    goto/16 :goto_3

    .line 250
    :sswitch_9
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenByteArray()V

    goto/16 :goto_3

    .line 265
    :sswitch_a
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenByteArray()V

    goto/16 :goto_3

    .line 277
    :cond_5
    iput p1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    .line 278
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    .line 280
    iget v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    goto/16 :goto_0

    .line 208
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_0
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

.method private setupIsNullBitmask()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 648
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->isNull:[Z

    if-eqz v0, :cond_1

    .line 679
    :cond_0
    return-void

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    iget v2, p0, Lcom/mysql/jdbc/BufferRow;->preNullBitmaskHomePosition:I

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 654
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x9

    div-int/lit8 v2, v0, 0x8

    .line 656
    new-array v6, v2, [B

    move v0, v1

    .line 658
    :goto_0
    if-ge v0, v2, :cond_2

    .line 659
    iget-object v3, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v3

    aput-byte v3, v6, v0

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 662
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    .line 664
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/mysql/jdbc/BufferRow;->isNull:[Z

    .line 667
    const/4 v0, 0x4

    move v2, v0

    move v3, v1

    move v0, v1

    .line 669
    :goto_1
    iget-object v4, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 671
    iget-object v7, p0, Lcom/mysql/jdbc/BufferRow;->isNull:[Z

    aget-byte v4, v6, v3

    and-int/2addr v4, v2

    if-eqz v4, :cond_4

    move v4, v5

    :goto_2
    aput-boolean v4, v7, v0

    .line 673
    shl-int/lit8 v2, v2, 0x1

    and-int/lit16 v4, v2, 0xff

    if-nez v4, :cond_3

    .line 676
    add-int/lit8 v3, v3, 0x1

    move v2, v5

    .line 669
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v4, v1

    .line 671
    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized closeOpenStreams()V
    .locals 2

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->openStreams:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->openStreams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 113
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    goto :goto_0

    .line 122
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->openStreams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    :cond_1
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBinaryInputStream(I)Ljava/io/InputStream;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 285
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/BufferRow;->isBinaryEncoded:Z

    if-eqz v1, :cond_1

    .line 286
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 291
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 293
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v1

    .line 295
    iget-object v3, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v3

    .line 297
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-eqz v4, :cond_0

    .line 301
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v4

    long-to-int v1, v1

    invoke-direct {v0, v4, v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 303
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->openStreams:Ljava/util/List;

    if-nez v1, :cond_0

    .line 304
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/mysql/jdbc/BufferRow;->openStreams:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBytesSize()I
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    return v0
.end method

.method public getColumnValue(I)[B
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 312
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 314
    iget-boolean v1, p0, Lcom/mysql/jdbc/BufferRow;->isBinaryEncoded:Z

    if-nez v1, :cond_1

    .line 315
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/Buffer;->readLenByteArray(I)[B

    move-result-object v0

    .line 362
    :cond_0
    :goto_0
    :sswitch_0
    return-object v0

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->isNull:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MysqlIO.97"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MysqlIO.98"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MysqlIO.99"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    array-length v1, v1

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

    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 327
    :sswitch_1
    const/4 v0, 0x1

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v1

    aput-byte v1, v0, v2

    goto :goto_0

    .line 331
    :sswitch_2
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v0

    goto :goto_0

    .line 335
    :sswitch_3
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v0

    goto :goto_0

    .line 338
    :sswitch_4
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v0

    goto/16 :goto_0

    .line 341
    :sswitch_5
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v0

    goto/16 :goto_0

    .line 344
    :sswitch_6
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v0

    goto/16 :goto_0

    .line 362
    :sswitch_7
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/Buffer;->readLenByteArray(I)[B

    move-result-object v0

    goto/16 :goto_0

    .line 322
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_0
        0x7 -> :sswitch_7
        0x8 -> :sswitch_4
        0x9 -> :sswitch_3
        0xa -> :sswitch_7
        0xb -> :sswitch_7
        0xc -> :sswitch_7
        0xd -> :sswitch_2
        0xf -> :sswitch_7
        0x10 -> :sswitch_7
        0xf5 -> :sswitch_7
        0xf6 -> :sswitch_7
        0xf9 -> :sswitch_7
        0xfa -> :sswitch_7
        0xfb -> :sswitch_7
        0xfc -> :sswitch_7
        0xfd -> :sswitch_7
        0xfe -> :sswitch_7
        0xff -> :sswitch_7
    .end sparse-switch
.end method

.method public getDateFast(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;
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
    .line 683
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    const/4 v0, 0x0

    .line 693
    :goto_0
    return-object v0

    .line 687
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 689
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 691
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v3

    .line 693
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v2

    long-to-int v4, v0

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/mysql/jdbc/BufferRow;->getDateFast(I[BIILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 377
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 379
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    .line 381
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 382
    const/4 v0, 0x0

    .line 385
    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v3

    long-to-int v0, v0

    add-int/2addr v0, v2

    invoke-static {v3, v2, v0}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 392
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 394
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    .line 396
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 397
    const-wide/16 v0, 0x0

    .line 400
    :goto_0
    return-wide v0

    :cond_0
    iget-object v3, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v3

    long-to-int v0, v0

    add-int/2addr v0, v2

    invoke-static {v3, v2, v0}, Lcom/mysql/jdbc/StringUtils;->getLong([BII)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getNativeDate(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;
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
    .line 698
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    const/4 v0, 0x0

    .line 708
    :goto_0
    return-object v0

    .line 702
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 704
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 706
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v3

    .line 708
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v2

    long-to-int v4, v0

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/mysql/jdbc/BufferRow;->getNativeDate(I[BIILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public getNativeDateTimeValue(ILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;
    .locals 12
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
    .line 714
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    const/4 v0, 0x0

    .line 724
    :goto_0
    return-object v0

    .line 718
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 720
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 722
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v3

    .line 724
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v2

    long-to-int v4, v0

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v0 .. v11}, Lcom/mysql/jdbc/BufferRow;->getNativeDateTimeValue(I[BIILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getNativeDouble(I)D
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    const-wide/16 v0, 0x0

    .line 413
    :goto_0
    return-wide v0

    .line 409
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 411
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    .line 413
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/mysql/jdbc/BufferRow;->getNativeDouble([BI)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getNativeFloat(I)F
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    const/4 v0, 0x0

    .line 426
    :goto_0
    return v0

    .line 422
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 424
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    .line 426
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/mysql/jdbc/BufferRow;->getNativeFloat([BI)F

    move-result v0

    goto :goto_0
.end method

.method public getNativeInt(I)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const/4 v0, 0x0

    .line 439
    :goto_0
    return v0

    .line 435
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 437
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    .line 439
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/mysql/jdbc/BufferRow;->getNativeInt([BI)I

    move-result v0

    goto :goto_0
.end method

.method public getNativeLong(I)J
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 444
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    const-wide/16 v0, 0x0

    .line 452
    :goto_0
    return-wide v0

    .line 448
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 450
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    .line 452
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/mysql/jdbc/BufferRow;->getNativeLong([BI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getNativeShort(I)S
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 457
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    const/4 v0, 0x0

    .line 465
    :goto_0
    return v0

    .line 461
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 463
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    .line 465
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/mysql/jdbc/BufferRow;->getNativeShort([BI)S

    move-result v0

    goto :goto_0
.end method

.method public getNativeTime(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;
    .locals 10
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
    .line 731
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    const/4 v0, 0x0

    .line 741
    :goto_0
    return-object v0

    .line 735
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 737
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 739
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v3

    .line 741
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v2

    long-to-int v4, v0

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/mysql/jdbc/BufferRow;->getNativeTime(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;

    move-result-object v0

    goto :goto_0
.end method

.method public getNativeTimestamp(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;
    .locals 9
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
    .line 471
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    const/4 v0, 0x0

    .line 481
    :goto_0
    return-object v0

    .line 475
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 477
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v3

    .line 479
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    .line 481
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v1

    long-to-int v3, v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/mysql/jdbc/BufferRow;->getNativeTimestamp([BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;

    move-result-object v0

    goto :goto_0
.end method

.method public getReader(I)Ljava/io/Reader;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 486
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->getBinaryInputStream(I)Ljava/io/InputStream;

    move-result-object v1

    .line 488
    if-nez v1, :cond_0

    .line 489
    const/4 v0, 0x0

    .line 493
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    const-string v1, ""

    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 497
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 499
    throw v1
.end method

.method public getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;
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
    const/4 v0, 0x0

    .line 505
    iget-boolean v1, p0, Lcom/mysql/jdbc/BufferRow;->isBinaryEncoded:Z

    if-eqz v1, :cond_1

    .line 506
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-object v0

    .line 511
    :cond_1
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 513
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v1

    .line 515
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 519
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_2

    .line 520
    const-string v0, ""

    goto :goto_0

    .line 525
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v4

    .line 527
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v3

    long-to-int v5, v1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mysql/jdbc/BufferRow;->getString(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;[BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTimeFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;
    .locals 10
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
    .line 533
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    const/4 v0, 0x0

    .line 543
    :goto_0
    return-object v0

    .line 537
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 539
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 541
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v3

    .line 543
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v2

    long-to-int v4, v0

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/mysql/jdbc/BufferRow;->getTimeFast(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;

    move-result-object v0

    goto :goto_0
.end method

.method public getTimestampFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;
    .locals 10
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
    .line 549
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    const/4 v0, 0x0

    .line 559
    :goto_0
    return-object v0

    .line 553
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 555
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 557
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v3

    .line 559
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v2

    long-to-int v4, v0

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/mysql/jdbc/BufferRow;->getTimestampFast(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;

    move-result-object v0

    goto :goto_0
.end method

.method public isFloatingPointNumber(I)Z
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 564
    iget-boolean v2, p0, Lcom/mysql/jdbc/BufferRow;->isBinaryEncoded:Z

    if-eqz v2, :cond_1

    .line 565
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 599
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 576
    :cond_1
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 578
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v3

    .line 580
    const-wide/16 v5, -0x1

    cmp-long v2, v3, v5

    if-nez v2, :cond_2

    move v0, v1

    .line 581
    goto :goto_0

    .line 584
    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-nez v2, :cond_3

    move v0, v1

    .line 585
    goto :goto_0

    .line 588
    :cond_3
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v5

    .line 589
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v6

    move v2, v1

    .line 591
    :goto_1
    long-to-int v7, v3

    if-ge v2, v7, :cond_4

    .line 592
    add-int v7, v5, v2

    aget-byte v7, v6, v7

    int-to-char v7, v7

    .line 594
    const/16 v8, 0x65

    if-eq v7, v8, :cond_0

    const/16 v8, 0x45

    if-eq v7, v8, :cond_0

    .line 591
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 599
    goto :goto_0

    .line 565
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isNull(I)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 604
    iget-boolean v0, p0, Lcom/mysql/jdbc/BufferRow;->isBinaryEncoded:Z

    if-nez v0, :cond_1

    .line 605
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 607
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 610
    :goto_0
    return v0

    .line 607
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->isNull:[Z

    aget-boolean v0, v0, p1

    goto :goto_0
.end method

.method public length(I)J
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 617
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 619
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 620
    const-wide/16 v0, 0x0

    .line 623
    :cond_0
    return-wide v0
.end method

.method public setColumnValue(I[B)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 628
    new-instance v0, Lcom/mysql/jdbc/OperationNotSupportedException;

    invoke-direct {v0}, Lcom/mysql/jdbc/OperationNotSupportedException;-><init>()V

    throw v0
.end method

.method public setMetadata([Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetRow;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 633
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ResultSetRow;->setMetadata([Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetRow;

    .line 635
    iget-boolean v0, p0, Lcom/mysql/jdbc/BufferRow;->isBinaryEncoded:Z

    if-eqz v0, :cond_0

    .line 636
    invoke-direct {p0}, Lcom/mysql/jdbc/BufferRow;->setupIsNullBitmask()V

    .line 639
    :cond_0
    return-object p0
.end method
