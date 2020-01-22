.class public Lcom/mysql/jdbc/MysqlParameterMetadata;
.super Ljava/lang/Object;
.source "MysqlParameterMetadata.java"

# interfaces
.implements Ljava/sql/ParameterMetaData;


# instance fields
.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field metadata:Lcom/mysql/jdbc/ResultSetMetaData;

.field parameterCount:I

.field returnSimpleMetadata:Z


# direct methods
.method constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->returnSimpleMetadata:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->metadata:Lcom/mysql/jdbc/ResultSetMetaData;

    .line 35
    iput v1, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->parameterCount:I

    .line 53
    iput p1, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->parameterCount:I

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->returnSimpleMetadata:Z

    .line 55
    return-void
.end method

.method constructor <init>([Lcom/mysql/jdbc/Field;ILcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v2, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->returnSimpleMetadata:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->metadata:Lcom/mysql/jdbc/ResultSetMetaData;

    .line 35
    iput v2, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->parameterCount:I

    .line 40
    new-instance v0, Lcom/mysql/jdbc/ResultSetMetaData;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v2, v1, p3}, Lcom/mysql/jdbc/ResultSetMetaData;-><init>([Lcom/mysql/jdbc/Field;ZZLcom/mysql/jdbc/ExceptionInterceptor;)V

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->metadata:Lcom/mysql/jdbc/ResultSetMetaData;

    .line 42
    iput p2, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->parameterCount:I

    .line 43
    iput-object p3, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 44
    return-void
.end method

.method private checkAvailable()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->metadata:Lcom/mysql/jdbc/ResultSetMetaData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->metadata:Lcom/mysql/jdbc/ResultSetMetaData;

    iget-object v0, v0, Lcom/mysql/jdbc/ResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    if-nez v0, :cond_1

    .line 69
    :cond_0
    const-string v0, "Parameter metadata not available for the given statement"

    const-string v1, "S1C00"

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 72
    :cond_1
    return-void
.end method

.method private checkBounds(I)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 151
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parameter index of \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' is invalid."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 156
    :cond_0
    iget v0, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->parameterCount:I

    if-le p1, v0, :cond_1

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parameter index of \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' is greater than number of parameters, which is \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->parameterCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 162
    :cond_1
    return-void
.end method


# virtual methods
.method public getParameterClassName(I)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->returnSimpleMetadata:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/MysqlParameterMetadata;->checkBounds(I)V

    .line 138
    const-string v0, "java.lang.String"

    .line 143
    :goto_0
    return-object v0

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlParameterMetadata;->checkAvailable()V

    .line 143
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->metadata:Lcom/mysql/jdbc/ResultSetMetaData;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getColumnClassName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParameterCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 58
    iget v0, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->parameterCount:I

    return v0
.end method

.method public getParameterMode(I)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public getParameterType(I)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->returnSimpleMetadata:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/MysqlParameterMetadata;->checkBounds(I)V

    .line 114
    const/16 v0, 0xc

    .line 119
    :goto_0
    return v0

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlParameterMetadata;->checkAvailable()V

    .line 119
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->metadata:Lcom/mysql/jdbc/ResultSetMetaData;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getColumnType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getParameterTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->returnSimpleMetadata:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/MysqlParameterMetadata;->checkBounds(I)V

    .line 126
    const-string v0, "VARCHAR"

    .line 131
    :goto_0
    return-object v0

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlParameterMetadata;->checkAvailable()V

    .line 131
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->metadata:Lcom/mysql/jdbc/ResultSetMetaData;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getColumnTypeName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrecision(I)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->returnSimpleMetadata:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/MysqlParameterMetadata;->checkBounds(I)V

    .line 90
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlParameterMetadata;->checkAvailable()V

    .line 95
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->metadata:Lcom/mysql/jdbc/ResultSetMetaData;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getPrecision(I)I

    move-result v0

    goto :goto_0
.end method

.method public getScale(I)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->returnSimpleMetadata:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/MysqlParameterMetadata;->checkBounds(I)V

    .line 102
    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlParameterMetadata;->checkAvailable()V

    .line 107
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->metadata:Lcom/mysql/jdbc/ResultSetMetaData;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getScale(I)I

    move-result v0

    goto :goto_0
.end method

.method public isNullable(I)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlParameterMetadata;->checkAvailable()V

    .line 64
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->metadata:Lcom/mysql/jdbc/ResultSetMetaData;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->isNullable(I)I

    move-result v0

    return v0
.end method

.method public isSigned(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->returnSimpleMetadata:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/MysqlParameterMetadata;->checkBounds(I)V

    .line 78
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlParameterMetadata;->checkAvailable()V

    .line 83
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->metadata:Lcom/mysql/jdbc/ResultSetMetaData;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->isSigned(I)Z

    move-result v0

    goto :goto_0
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
    .line 169
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
    .line 178
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 179
    :catch_0
    move-exception v0

    .line 180
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

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlParameterMetadata;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method
