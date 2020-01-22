.class public Lcom/mysql/jdbc/JDBC42Helper;
.super Ljava/lang/Object;
.source "JDBC42Helper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkSqlType(ILcom/mysql/jdbc/ExceptionInterceptor;)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p0}, Lcom/mysql/jdbc/JDBC42Helper;->isSqlTypeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    return p0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnsupportedSQLType.0"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/sql/JDBCType;->valueOf(I)Ljava/sql/JDBCType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1C00"

    invoke-static {v0, v1, p1}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method static convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 49
    instance-of v0, p0, Ljava/time/LocalDate;

    if-eqz v0, :cond_1

    .line 50
    check-cast p0, Ljava/time/LocalDate;

    invoke-static {p0}, Ljava/sql/Date;->valueOf(Ljava/time/LocalDate;)Ljava/sql/Date;

    move-result-object p0

    .line 56
    :cond_0
    :goto_0
    return-object p0

    .line 51
    :cond_1
    instance-of v0, p0, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_2

    .line 52
    check-cast p0, Ljava/time/LocalDateTime;

    invoke-static {p0}, Ljava/sql/Timestamp;->valueOf(Ljava/time/LocalDateTime;)Ljava/sql/Timestamp;

    move-result-object p0

    goto :goto_0

    .line 53
    :cond_2
    instance-of v0, p0, Ljava/time/LocalTime;

    if-eqz v0, :cond_0

    .line 54
    check-cast p0, Ljava/time/LocalTime;

    invoke-static {p0}, Ljava/sql/Time;->valueOf(Ljava/time/LocalTime;)Ljava/sql/Time;

    move-result-object p0

    goto :goto_0
.end method

.method static isSqlTypeSupported(I)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    const/16 v0, 0x7dc

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7dd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7de

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static translateAndCheckSqlType(Ljava/sql/SQLType;Lcom/mysql/jdbc/ExceptionInterceptor;)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-interface {p0}, Ljava/sql/SQLType;->getVendorTypeNumber()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lcom/mysql/jdbc/JDBC42Helper;->checkSqlType(ILcom/mysql/jdbc/ExceptionInterceptor;)I

    move-result v0

    return v0
.end method
