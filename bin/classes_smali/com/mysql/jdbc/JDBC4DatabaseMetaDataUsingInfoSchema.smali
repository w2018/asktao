.class public Lcom/mysql/jdbc/JDBC4DatabaseMetaDataUsingInfoSchema;
.super Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;
.source "JDBC4DatabaseMetaDataUsingInfoSchema.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected getColumnType(ZZZZ)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-static {p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4DatabaseMetaData;->getProcedureOrFunctionColumnType(ZZZZ)I

    move-result v0

    return v0
.end method

.method protected getJDBC4FunctionConstant(Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;)I
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 138
    sget-object v3, Lcom/mysql/jdbc/JDBC4DatabaseMetaDataUsingInfoSchema$1;->$SwitchMap$com$mysql$jdbc$DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant:[I

    invoke-virtual {p1}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 158
    const/4 v0, -0x1

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 142
    goto :goto_0

    .line 144
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 146
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 148
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_5
    move v0, v2

    .line 150
    goto :goto_0

    :pswitch_6
    move v0, v2

    .line 152
    goto :goto_0

    :pswitch_7
    move v0, v1

    .line 156
    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method protected getJDBC4FunctionNoTableConstant()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method protected getProcedureColumnsNoISParametersView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
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
    .line 102
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4DatabaseMetaDataUsingInfoSchema;->createProcedureColumnsFields()[Lcom/mysql/jdbc/Field;

    move-result-object v1

    .line 104
    const/4 v6, 0x1

    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    .line 105
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getGetProceduresReturnsFunctions()Z

    move-result v7

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 104
    invoke-virtual/range {v0 .. v7}, Lcom/mysql/jdbc/JDBC4DatabaseMetaDataUsingInfoSchema;->getProcedureOrFunctionColumns([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method protected getRoutineTypeConditionForGetProcedureColumns()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getGetProceduresReturnsFunctions()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ROUTINE_TYPE = \'PROCEDURE\' AND "

    goto :goto_0
.end method

.method protected getRoutineTypeConditionForGetProcedures()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getGetProceduresReturnsFunctions()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ROUTINE_TYPE = \'PROCEDURE\' AND "

    goto :goto_0
.end method

.method public getRowIdLifetime()Ljava/sql/RowIdLifetime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Ljava/sql/RowIdLifetime;->ROWID_UNSUPPORTED:Ljava/sql/RowIdLifetime;

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
    .line 64
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
    .line 86
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
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

    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    .line 89
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    .line 88
    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method
