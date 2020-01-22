.class public Lcom/mysql/jdbc/JDBC4UpdatableResultSet;
.super Lcom/mysql/jdbc/UpdatableResultSet;
.source "JDBC4UpdatableResultSet.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V
    .locals 0
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
    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/mysql/jdbc/UpdatableResultSet;-><init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    .line 45
    return-void
.end method

.method private final getNClobFromString(Ljava/lang/String;I)Ljava/sql/NClob;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 450
    new-instance v0, Lcom/mysql/jdbc/JDBC4NClob;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/mysql/jdbc/JDBC4NClob;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0
.end method

.method private getStringForNClob(I)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 511
    const/4 v0, 0x0

    .line 513
    const-string v2, "UTF-8"

    .line 518
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->isBinaryEncoded:Z

    if-nez v1, :cond_1

    .line 519
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getBytes(I)[B

    move-result-object v1

    .line 524
    :goto_0
    if-eqz v1, :cond_0

    .line 525
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 532
    :cond_0
    return-object v0

    .line 521
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getNativeBytes(IZ)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 527
    :catch_0
    move-exception v0

    .line 528
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

    .line 529
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    .line 528
    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public getHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getNCharacterStream(I)Ljava/io/Reader;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 378
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Can not call getNCharacterStream() when field\'s charset isn\'t UTF-8"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getNCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getNCharacterStream(I)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getNClob(I)Ljava/sql/NClob;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 417
    if-eqz v0, :cond_0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 418
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Can not call getNClob() when field\'s charset isn\'t UTF-8"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->isBinaryEncoded:Z

    if-nez v0, :cond_3

    .line 422
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getStringForNClob(I)Ljava/lang/String;

    move-result-object v1

    .line 424
    if-nez v1, :cond_2

    .line 425
    const/4 v0, 0x0

    .line 431
    :goto_0
    return-object v0

    .line 428
    :cond_2
    new-instance v0, Lcom/mysql/jdbc/JDBC4NClob;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/JDBC4NClob;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    goto :goto_0

    .line 431
    :cond_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getNativeNClob(I)Ljava/sql/NClob;

    move-result-object v0

    goto :goto_0
.end method

.method public getNClob(Ljava/lang/String;)Ljava/sql/NClob;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 446
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getNClob(I)Ljava/sql/NClob;

    move-result-object v0

    return-object v0
.end method

.method public getNString(I)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 470
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Can not call getNString() when field\'s charset isn\'t UTF-8"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getNString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNativeNClob(I)Ljava/sql/NClob;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getStringForNClob(I)Ljava/lang/String;

    move-result-object v0

    .line 353
    if-nez v0, :cond_0

    .line 354
    const/4 v0, 0x0

    .line 357
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getNClobFromString(Ljava/lang/String;I)Ljava/sql/NClob;

    move-result-object v0

    goto :goto_0
.end method

.method public getRowId(I)Ljava/sql/RowId;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 495
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getRowId(Ljava/lang/String;)Ljava/sql/RowId;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 499
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getRowId(I)Ljava/sql/RowId;

    move-result-object v0

    return-object v0
.end method

.method public getSQLXML(I)Ljava/sql/SQLXML;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 503
    new-instance v0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;-><init>(Lcom/mysql/jdbc/ResultSetInternalMethods;ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0
.end method

.method public getSQLXML(Ljava/lang/String;)Ljava/sql/SQLXML;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 507
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getSQLXML(I)Ljava/sql/SQLXML;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->isClosed:Z

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
    .line 560
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 563
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
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
    .line 588
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 589
    :catch_0
    move-exception v0

    .line 590
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

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public updateAsciiStream(ILjava/io/InputStream;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateAsciiStream(ILjava/io/InputStream;J)V
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
    .line 53
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateAsciiStream(ILjava/io/InputStream;)V

    .line 126
    return-void
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;J)V
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
    .line 129
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateAsciiStream(ILjava/io/InputStream;J)V

    .line 130
    return-void
.end method

.method public updateBinaryStream(ILjava/io/InputStream;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateBinaryStream(ILjava/io/InputStream;J)V
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
    .line 63
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateBinaryStream(ILjava/io/InputStream;)V

    .line 134
    return-void
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;J)V
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
    .line 137
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateBinaryStream(ILjava/io/InputStream;J)V

    .line 138
    return-void
.end method

.method public updateBlob(ILjava/io/InputStream;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateBlob(ILjava/io/InputStream;J)V
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
    .line 72
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateBlob(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateBlob(ILjava/io/InputStream;)V

    .line 142
    return-void
.end method

.method public updateBlob(Ljava/lang/String;Ljava/io/InputStream;J)V
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
    .line 145
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateBlob(ILjava/io/InputStream;J)V

    .line 146
    return-void
.end method

.method public updateCharacterStream(ILjava/io/Reader;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateCharacterStream(ILjava/io/Reader;J)V
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
    .line 82
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateCharacterStream(ILjava/io/Reader;)V

    .line 150
    return-void
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
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
    .line 153
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateCharacterStream(ILjava/io/Reader;J)V

    .line 154
    return-void
.end method

.method public updateClob(ILjava/io/Reader;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateClob(ILjava/io/Reader;J)V
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
    .line 92
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateClob(ILjava/io/Reader;)V

    .line 158
    return-void
.end method

.method public updateClob(Ljava/lang/String;Ljava/io/Reader;J)V
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
    .line 161
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateClob(ILjava/io/Reader;J)V

    .line 162
    return-void
.end method

.method public updateNCharacterStream(ILjava/io/Reader;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateNCharacterStream(ILjava/io/Reader;I)V
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
    .line 205
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v2, p1, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v2, "Can not call updateNCharacterStream() when field\'s character set isn\'t UTF-8"

    invoke-direct {v0, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 211
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->onInsertRow:Z

    if-nez v0, :cond_3

    .line 212
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->doingUpdates:Z

    if-nez v0, :cond_2

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->doingUpdates:Z

    .line 214
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->syncUpdate()V

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    check-cast v0, Lcom/mysql/jdbc/JDBC4PreparedStatement;

    int-to-long v2, p3

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/mysql/jdbc/JDBC4PreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    .line 227
    :goto_0
    monitor-exit v1

    .line 228
    return-void

    .line 219
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    check-cast v0, Lcom/mysql/jdbc/JDBC4PreparedStatement;

    int-to-long v2, p3

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/mysql/jdbc/JDBC4PreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    .line 221
    if-nez p2, :cond_4

    .line 222
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 224
    :cond_4
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    sget-object v3, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->STREAM_DATA_MARKER:[B

    invoke-virtual {v0, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updateNCharacterStream(ILjava/io/Reader;J)V
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
    .line 102
    long-to-int v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNCharacterStream(ILjava/io/Reader;I)V

    .line 104
    return-void
.end method

.method public updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNCharacterStream(ILjava/io/Reader;)V

    .line 167
    return-void
.end method

.method public updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V
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
    .line 248
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNCharacterStream(ILjava/io/Reader;I)V

    .line 249
    return-void
.end method

.method public updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
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
    .line 170
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNCharacterStream(ILjava/io/Reader;J)V

    .line 171
    return-void
.end method

.method public updateNClob(ILjava/io/Reader;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateNClob(ILjava/io/Reader;J)V
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
    .line 112
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateNClob(ILjava/sql/NClob;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v2, p1, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v2, "Can not call updateNClob() when field\'s character set isn\'t UTF-8"

    invoke-direct {v0, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 261
    :cond_1
    if-nez p2, :cond_2

    .line 262
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNull(I)V

    .line 266
    :goto_0
    monitor-exit v1

    .line 267
    return-void

    .line 264
    :cond_2
    invoke-interface {p2}, Ljava/sql/NClob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    invoke-interface {p2}, Ljava/sql/NClob;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p0, p1, v0, v2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNCharacterStream(ILjava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updateNClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNClob(ILjava/io/Reader;)V

    .line 176
    return-void
.end method

.method public updateNClob(Ljava/lang/String;Ljava/io/Reader;J)V
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
    .line 179
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNClob(ILjava/io/Reader;J)V

    .line 180
    return-void
.end method

.method public updateNClob(Ljava/lang/String;Ljava/sql/NClob;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNClob(ILjava/sql/NClob;)V

    .line 274
    return-void
.end method

.method public updateNString(ILjava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v2

    .line 293
    if-eqz v2, :cond_0

    const-string v0, "UTF-8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Can not call updateNString() when field\'s character set isn\'t UTF-8"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 297
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->onInsertRow:Z

    if-nez v0, :cond_3

    .line 298
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->doingUpdates:Z

    if-nez v0, :cond_2

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->doingUpdates:Z

    .line 300
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->syncUpdate()V

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    check-cast v0, Lcom/mysql/jdbc/JDBC4PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatement;->setNString(ILjava/lang/String;)V

    .line 314
    :goto_0
    monitor-exit v6

    .line 315
    return-void

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    check-cast v0, Lcom/mysql/jdbc/JDBC4PreparedStatement;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatement;->setNString(ILjava/lang/String;)V

    .line 307
    if-nez p2, :cond_4

    .line 308
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 310
    :cond_4
    iget-object v7, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v8, p1, -0x1

    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 311
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    move-object v0, p2

    .line 310
    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updateNString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNString(ILjava/lang/String;)V

    .line 333
    return-void
.end method

.method public updateRowId(ILjava/sql/RowId;)V
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
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateSQLXML(ILjava/sql/SQLXML;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateSQLXML(Ljava/lang/String;Ljava/sql/SQLXML;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateSQLXML(ILjava/sql/SQLXML;)V

    .line 185
    return-void
.end method
