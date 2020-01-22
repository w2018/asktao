.class public Lcom/mysql/jdbc/JDBC42UpdatableResultSet;
.super Lcom/mysql/jdbc/JDBC4UpdatableResultSet;
.source "JDBC42UpdatableResultSet.java"


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
    invoke-direct/range {p0 .. p5}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;-><init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    .line 45
    return-void
.end method

.method private translateAndCheckSqlType(Ljava/sql/SQLType;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mysql/jdbc/JDBC42Helper;->translateAndCheckSqlType(Ljava/sql/SQLType;Lcom/mysql/jdbc/ExceptionInterceptor;)I

    move-result v0

    return v0
.end method


# virtual methods
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
    .line 64
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 65
    if-nez p2, :cond_0

    .line 66
    :try_start_0
    const-string v0, "Type parameter can not be null"

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 69
    :cond_0
    :try_start_1
    const-class v0, Ljava/time/LocalDate;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->getDate(I)Ljava/sql/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/sql/Date;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    .line 89
    :goto_0
    return-object v0

    .line 71
    :cond_1
    const-class v0, Ljava/time/LocalDateTime;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Ljava/sql/Timestamp;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 73
    :cond_2
    const-class v0, Ljava/time/LocalTime;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->getTime(I)Ljava/sql/Time;

    move-result-object v0

    invoke-virtual {v0}, Ljava/sql/Time;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 75
    :cond_3
    const-class v0, Ljava/time/OffsetDateTime;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 81
    :cond_4
    const-class v0, Ljava/time/OffsetTime;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    .line 83
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/time/OffsetTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetTime;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    :try_start_5
    monitor-exit v1

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 89
    :cond_5
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 78
    :catch_1
    move-exception v0

    goto :goto_1
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
    .line 102
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateObject(ILjava/lang/Object;)V

    .line 103
    return-void
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
    .line 115
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0, p3}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateObject(ILjava/lang/Object;I)V

    .line 116
    return-void
.end method

.method public updateObject(ILjava/lang/Object;Ljava/sql/SQLType;)V
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
    .line 153
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-super {p0, p1, v0, v1, v2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateObjectInternal(ILjava/lang/Object;Ljava/lang/Integer;I)V

    .line 154
    return-void
.end method

.method public updateObject(ILjava/lang/Object;Ljava/sql/SQLType;I)V
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
    .line 167
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-super {p0, p1, v0, v1, p4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateObjectInternal(ILjava/lang/Object;Ljava/lang/Integer;I)V

    .line 168
    return-void
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
    .line 127
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
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
    .line 140
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0, p3}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateObject(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 141
    return-void
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;Ljava/sql/SQLType;)V
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
    .line 180
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-super {p0, v0, v1, v2, v3}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateObjectInternal(ILjava/lang/Object;Ljava/lang/Integer;I)V

    .line 181
    return-void
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;Ljava/sql/SQLType;I)V
    .locals 3
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
    .line 194
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-super {p0, v0, v1, v2, p4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateObjectInternal(ILjava/lang/Object;Ljava/lang/Integer;I)V

    .line 195
    return-void
.end method
