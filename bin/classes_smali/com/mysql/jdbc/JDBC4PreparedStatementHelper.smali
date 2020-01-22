.class public Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;
.super Ljava/lang/Object;
.source "JDBC4PreparedStatementHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static setNClob(Lcom/mysql/jdbc/PreparedStatement;ILjava/io/Reader;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;)V

    .line 65
    return-void
.end method

.method static setNClob(Lcom/mysql/jdbc/PreparedStatement;ILjava/io/Reader;J)V
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
    .line 81
    if-nez p2, :cond_0

    .line 82
    const/16 v0, 0x7db

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    goto :goto_0
.end method

.method static setNClob(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/NClob;)V
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
    .line 56
    if-nez p2, :cond_0

    .line 57
    const/16 v0, 0x7db

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-interface {p2}, Ljava/sql/NClob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    invoke-interface {p2}, Ljava/sql/NClob;->length()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    goto :goto_0
.end method

.method static setRowId(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/RowId;)V
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
    .line 41
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method static setSQLXML(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/SQLXML;)V
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
    .line 89
    if-nez p2, :cond_0

    .line 90
    const/16 v0, 0x7d9

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    check-cast p2, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;

    invoke-virtual {p2}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->serializeAsCharacterStream()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setCharacterStream(ILjava/io/Reader;)V

    goto :goto_0
.end method
