.class public Lcom/mysql/jdbc/Clob;
.super Ljava/lang/Object;
.source "Clob.java"

# interfaces
.implements Ljava/sql/Clob;
.implements Lcom/mysql/jdbc/OutputStreamWatcher;
.implements Lcom/mysql/jdbc/WriterWatcher;


# instance fields
.field private charData:Ljava/lang/String;

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 49
    return-void
.end method


# virtual methods
.method public free()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public getAsciiStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCharacterStream()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 70
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCharacterStream(JJ)Ljava/io/Reader;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 284
    new-instance v0, Ljava/io/StringReader;

    long-to-int v1, p3

    invoke-virtual {p0, p1, p2, v1}, Lcom/mysql/jdbc/Clob;->getSubString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSubString(JI)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 77
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 78
    const-string v0, "Clob.6"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 81
    :cond_0
    long-to-int v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 82
    add-int v1, v0, p3

    .line 84
    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 85
    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 86
    const-string v0, "Clob.7"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    .line 103
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public position(Ljava/lang/String;J)J
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    const-wide/16 v6, 0x1

    .line 117
    cmp-long v2, p2, v6

    if-gez v2, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clob.8"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Clob.9"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 123
    sub-long v2, p2, v6

    iget-object v4, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 124
    const-string v0, "Clob.10"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    sub-long v3, p2, v6

    long-to-int v3, v3

    invoke-virtual {v2, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 129
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 132
    :cond_2
    :goto_0
    return-wide v0

    .line 129
    :cond_3
    add-int/lit8 v0, v2, 0x1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public position(Ljava/sql/Clob;J)J
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 110
    const-wide/16 v0, 0x1

    invoke-interface {p1}, Ljava/sql/Clob;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {p1, v0, v1, v2}, Ljava/sql/Clob;->getSubString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/Clob;->position(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setAsciiStream(J)Ljava/io/OutputStream;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x1

    .line 139
    cmp-long v0, p1, v3

    if-gez v0, :cond_0

    .line 140
    const-string v0, "Clob.0"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 143
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/WatchableOutputStream;

    invoke-direct {v0}, Lcom/mysql/jdbc/WatchableOutputStream;-><init>()V

    .line 144
    invoke-virtual {v0, p0}, Lcom/mysql/jdbc/WatchableOutputStream;->setWatcher(Lcom/mysql/jdbc/OutputStreamWatcher;)V

    .line 146
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    sub-long v3, p1, v3

    long-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mysql/jdbc/WatchableOutputStream;->write([BII)V

    .line 150
    :cond_1
    return-object v0
.end method

.method public setCharacterStream(J)Ljava/io/Writer;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x1

    .line 157
    cmp-long v0, p1, v3

    if-gez v0, :cond_0

    .line 158
    const-string v0, "Clob.1"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 161
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/WatchableWriter;

    invoke-direct {v0}, Lcom/mysql/jdbc/WatchableWriter;-><init>()V

    .line 162
    invoke-virtual {v0, p0}, Lcom/mysql/jdbc/WatchableWriter;->setWatcher(Lcom/mysql/jdbc/WriterWatcher;)V

    .line 167
    cmp-long v1, p1, v3

    if-lez v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    const/4 v2, 0x0

    sub-long v3, p1, v3

    long-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mysql/jdbc/WatchableWriter;->write(Ljava/lang/String;II)V

    .line 171
    :cond_1
    return-object v0
.end method

.method public setString(JLjava/lang/String;)I
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x1

    .line 178
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 179
    const-string v0, "Clob.2"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 182
    :cond_0
    if-nez p3, :cond_1

    .line 183
    const-string v0, "Clob.3"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 186
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    sub-long v1, p1, v2

    .line 190
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    .line 192
    long-to-int v4, v1

    int-to-long v5, v3

    add-long/2addr v1, v5

    long-to-int v1, v1

    invoke-virtual {v0, v4, v1, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    .line 196
    return v3
.end method

.method public setString(JLjava/lang/String;II)I
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
    const-wide/16 v2, 0x1

    .line 203
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 204
    const-string v0, "Clob.4"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 207
    :cond_0
    if-nez p3, :cond_1

    .line 208
    const-string v0, "Clob.5"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 211
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    sub-long v1, p1, v2

    .line 216
    add-int v3, p4, p5

    :try_start_0
    invoke-virtual {p3, p4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 218
    long-to-int v4, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v1, v5

    long-to-int v1, v1

    invoke-virtual {v0, v4, v1, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    .line 225
    return p5

    .line 219
    :catch_0
    move-exception v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    iget-object v3, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v2, v0, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public streamClosed(Lcom/mysql/jdbc/WatchableOutputStream;)V
    .locals 7
    .parameter

    .prologue
    .line 232
    invoke-virtual {p1}, Lcom/mysql/jdbc/WatchableOutputStream;->size()I

    move-result v6

    .line 234
    iget-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {p1, v0, v6, v1}, Lcom/mysql/jdbc/WatchableOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/WatchableOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    .line 244
    return-void

    .line 238
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public truncate(J)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clob.11"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Clob.12"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Clob.13"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    const/4 v1, 0x0

    long-to-int v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public writerClosed(Lcom/mysql/jdbc/WatchableWriter;)V
    .locals 3
    .parameter

    .prologue
    .line 270
    invoke-virtual {p1}, Lcom/mysql/jdbc/WatchableWriter;->size()I

    move-result v0

    .line 272
    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v0, v2}, Lcom/mysql/jdbc/WatchableWriter;->write(Ljava/lang/String;II)V

    .line 276
    :cond_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/WatchableWriter;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public writerClosed([C)V
    .locals 1
    .parameter

    .prologue
    .line 263
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    .line 264
    return-void
.end method
