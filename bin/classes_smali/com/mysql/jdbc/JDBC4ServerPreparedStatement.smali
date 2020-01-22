.class public Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;
.super Lcom/mysql/jdbc/ServerPreparedStatement;
.source "JDBC4ServerPreparedStatement.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)V
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
    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/mysql/jdbc/ServerPreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)V

    .line 42
    return-void
.end method


# virtual methods
.method public setNCharacterStream(ILjava/io/Reader;J)V
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
    const/4 v2, 0x1

    .line 49
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->charEncoding:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->charEncoding:Ljava/lang/String;

    const-string v1, "utf8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    const-string v0, "Can not call setNCharacterStream() when connection character set isn\'t UTF-8"

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 55
    if-nez p2, :cond_1

    .line 56
    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->setNull(II)V

    .line 70
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 59
    const/16 v1, 0xfc

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 61
    iput-object p2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 62
    iput-boolean v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    .line 64
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    iput-wide p3, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    goto :goto_0

    .line 67
    :cond_2
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    goto :goto_0
.end method

.method public setNClob(ILjava/io/Reader;J)V
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
    const/4 v2, 0x1

    .line 94
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->charEncoding:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->charEncoding:Ljava/lang/String;

    const-string v1, "utf8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const-string v0, "Can not call setNClob() when connection character set isn\'t UTF-8"

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 100
    if-nez p2, :cond_1

    .line 101
    const/16 v0, 0x7db

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->setNull(II)V

    .line 115
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v0

    .line 104
    const/16 v1, 0xfc

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 106
    iput-object p2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 107
    iput-boolean v2, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    .line 109
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    iput-wide p3, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    goto :goto_0

    .line 112
    :cond_2
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    goto :goto_0
.end method

.method public setNClob(ILjava/sql/NClob;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-interface {p2}, Ljava/sql/NClob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v2

    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/sql/NClob;->length()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->setNClob(ILjava/io/Reader;J)V

    .line 77
    return-void

    .line 76
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setNString(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->charEncoding:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->charEncoding:Ljava/lang/String;

    const-string v1, "utf8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->setString(ILjava/lang/String;)V

    .line 126
    return-void

    .line 124
    :cond_1
    const-string v0, "Can not call setNString() when connection character set isn\'t UTF-8"

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public setRowId(ILjava/sql/RowId;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;->setRowId(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/RowId;)V

    .line 130
    return-void
.end method

.method public setSQLXML(ILjava/sql/SQLXML;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;->setSQLXML(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/SQLXML;)V

    .line 134
    return-void
.end method
