.class public Lcom/mysql/jdbc/JDBC42ResultSet;
.super Lcom/mysql/jdbc/JDBC4ResultSet;
.source "JDBC42ResultSet.java"


# direct methods
.method public constructor <init>(JJLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct/range {p0 .. p6}, Lcom/mysql/jdbc/JDBC4ResultSet;-><init>(JJLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    .line 47
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
    .line 50
    invoke-direct/range {p0 .. p5}, Lcom/mysql/jdbc/JDBC4ResultSet;-><init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    .line 51
    return-void
.end method


# virtual methods
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
    const/4 v0, 0x0

    .line 62
    if-nez p2, :cond_0

    .line 63
    const-string v0, "Type parameter can not be null"

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42ResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 66
    :cond_0
    const-class v1, Ljava/time/LocalDate;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 67
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42ResultSet;->getDate(I)Ljava/sql/Date;

    move-result-object v1

    .line 68
    if-nez v1, :cond_2

    .line 91
    :cond_1
    :goto_0
    return-object v0

    .line 68
    :cond_2
    invoke-virtual {v1}, Ljava/sql/Date;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_3
    const-class v1, Ljava/time/LocalDateTime;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 70
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42ResultSet;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/sql/Timestamp;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_4
    const-class v1, Ljava/time/LocalTime;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 73
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42ResultSet;->getTime(I)Ljava/sql/Time;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/sql/Time;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_5
    const-class v1, Ljava/time/OffsetDateTime;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 77
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_6
    const-class v1, Ljava/time/OffsetTime;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 84
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/time/OffsetTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetTime;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/time/format/DateTimeParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 91
    :cond_7
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4ResultSet;->getObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 79
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public updateObject(ILjava/lang/Object;Ljava/sql/SQLType;)V
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
    .line 103
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateObject(ILjava/lang/Object;Ljava/sql/SQLType;I)V
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
    .line 116
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;Ljava/sql/SQLType;)V
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
    .line 128
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;Ljava/sql/SQLType;I)V
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
    .line 141
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method
