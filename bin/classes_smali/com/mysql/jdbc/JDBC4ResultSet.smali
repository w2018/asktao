.class public Lcom/mysql/jdbc/JDBC4ResultSet;
.super Lcom/mysql/jdbc/ResultSetImpl;
.source "JDBC4ResultSet.java"


# direct methods
.method public constructor <init>(JJLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct/range {p0 .. p6}, Lcom/mysql/jdbc/ResultSetImpl;-><init>(JJLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    .line 48
    return-void
.end method

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
    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/mysql/jdbc/ResultSetImpl;-><init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    .line 52
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
    .line 191
    new-instance v0, Lcom/mysql/jdbc/JDBC4NClob;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4ResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

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
    .line 166
    const/4 v0, 0x0

    .line 168
    const-string v2, "UTF-8"

    .line 173
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/JDBC4ResultSet;->isBinaryEncoded:Z

    if-nez v1, :cond_1

    .line 174
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getBytes(I)[B

    move-result-object v1

    .line 179
    :goto_0
    if-eqz v1, :cond_0

    .line 180
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 187
    :cond_0
    return-object v0

    .line 176
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNativeBytes(IZ)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
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

    .line 184
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4ResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    .line 183
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
    .line 294
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
    .line 70
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->checkColumnBounds(I)V

    .line 72
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ResultSet;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Can not call getNCharacterStream() when field\'s charset isn\'t UTF-8"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getCharacterStream(I)Ljava/io/Reader;

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
    .line 95
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNCharacterStream(I)Ljava/io/Reader;

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
    .line 110
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->checkColumnBounds(I)V

    .line 112
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ResultSet;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Can not call getNClob() when field\'s charset isn\'t UTF-8"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4ResultSet;->isBinaryEncoded:Z

    if-nez v0, :cond_3

    .line 117
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getStringForNClob(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    if-nez v1, :cond_2

    .line 120
    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    .line 123
    :cond_2
    new-instance v0, Lcom/mysql/jdbc/JDBC4NClob;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4ResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/JDBC4NClob;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNativeNClob(I)Ljava/sql/NClob;

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
    .line 141
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNClob(I)Ljava/sql/NClob;

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
    .line 208
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->checkColumnBounds(I)V

    .line 210
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ResultSet;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Can not call getNString() when field\'s charset isn\'t UTF-8"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getString(I)Ljava/lang/String;

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
    .line 232
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNString(I)Ljava/lang/String;

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
    .line 156
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getStringForNClob(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    if-nez v0, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNClobFromString(Ljava/lang/String;I)Ljava/sql/NClob;

    move-result-object v0

    goto :goto_0
.end method

.method public getObject(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 3
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
    .line 517
    if-nez p2, :cond_0

    .line 518
    const-string v0, "Type parameter can not be null"

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4ResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 521
    :cond_0
    const-class v0, Ljava/sql/Struct;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0

    .line 523
    :cond_1
    const-class v0, Ljava/sql/RowId;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 524
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getRowId(I)Ljava/sql/RowId;

    move-result-object v0

    .line 531
    :goto_0
    return-object v0

    .line 525
    :cond_2
    const-class v0, Ljava/sql/NClob;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 526
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNClob(I)Ljava/sql/NClob;

    move-result-object v0

    goto :goto_0

    .line 527
    :cond_3
    const-class v0, Ljava/sql/SQLXML;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 528
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getSQLXML(I)Ljava/sql/SQLXML;

    move-result-object v0

    goto :goto_0

    .line 531
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getObject(ILjava/lang/Class;)Ljava/lang/Object;

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
    .line 298
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
    .line 302
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4ResultSet;->getRowId(I)Ljava/sql/RowId;

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
    .line 306
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->checkColumnBounds(I)V

    .line 308
    new-instance v0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4ResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

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
    .line 312
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4ResultSet;->getSQLXML(I)Ljava/sql/SQLXML;

    move-result-object v0

    return-object v0
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
    .line 484
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4ResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 487
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
    .line 509
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 510
    :catch_0
    move-exception v0

    .line 511
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

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4ResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

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
    .line 316
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
    .line 326
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
    .line 321
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateAsciiStream(ILjava/io/InputStream;)V

    .line 323
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
    .line 331
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateAsciiStream(ILjava/io/InputStream;J)V

    .line 332
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
    .line 335
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
    .line 344
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
    .line 340
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateBinaryStream(ILjava/io/InputStream;)V

    .line 341
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
    .line 349
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateBinaryStream(ILjava/io/InputStream;J)V

    .line 350
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
    .line 353
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
    .line 361
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
    .line 357
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateBlob(ILjava/io/InputStream;)V

    .line 358
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
    .line 366
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateBlob(ILjava/io/InputStream;J)V

    .line 367
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
    .line 370
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
    .line 379
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
    .line 375
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateCharacterStream(ILjava/io/Reader;)V

    .line 376
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
    .line 384
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateCharacterStream(ILjava/io/Reader;J)V

    .line 385
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
    .line 388
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
    .line 397
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
    .line 393
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateClob(ILjava/io/Reader;)V

    .line 394
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
    .line 402
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateClob(ILjava/io/Reader;J)V

    .line 403
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
    .line 406
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateNCharacterStream(ILjava/io/Reader;I)V
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
    .line 254
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
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
    .line 416
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
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
    .line 411
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateNCharacterStream(ILjava/io/Reader;)V

    .line 413
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
    .line 275
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateNCharacterStream(ILjava/io/Reader;I)V

    .line 276
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
    .line 421
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateNCharacterStream(ILjava/io/Reader;J)V

    .line 422
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
    .line 430
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
    .line 440
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateNClob(ILjava/sql/NClob;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 425
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
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
    .line 435
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateNClob(ILjava/io/Reader;)V

    .line 437
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
    .line 444
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateNClob(ILjava/io/Reader;J)V

    .line 445
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
    .line 282
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateNClob(ILjava/sql/NClob;)V

    .line 283
    return-void
.end method

.method public updateNString(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 448
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
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
    .line 453
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateNString(ILjava/lang/String;)V

    .line 454
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
    .line 286
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateRowId(Ljava/lang/String;Ljava/sql/RowId;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateRowId(ILjava/sql/RowId;)V

    .line 291
    return-void
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
    .line 457
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
    .line 462
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateSQLXML(ILjava/sql/SQLXML;)V

    .line 464
    return-void
.end method
