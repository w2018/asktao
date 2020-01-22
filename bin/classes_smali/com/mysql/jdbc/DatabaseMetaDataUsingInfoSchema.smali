.class public Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;
.super Lcom/mysql/jdbc/DatabaseMetaData;
.source "DatabaseMetaDataUsingInfoSchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;
    }
.end annotation


# instance fields
.field private final hasParametersView:Z

.field private hasReferentialConstraintsView:Z


# direct methods
.method protected constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/DatabaseMetaData;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-interface {v0, v2, v3, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->hasReferentialConstraintsView:Z

    .line 54
    :try_start_0
    const-string v0, "INFORMATION_SCHEMA"

    const/4 v2, 0x0

    const-string v3, "PARAMETERS"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-super {p0, v0, v2, v3, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    .line 56
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->hasParametersView:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    if-eqz v1, :cond_0

    .line 59
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 62
    :cond_0
    return-void

    .line 58
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 59
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 58
    :cond_1
    throw v0
.end method

.method private generateDeleteRuleClause()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 508
    iget-boolean v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->hasReferentialConstraintsView:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CASE WHEN R.DELETE_RULE=\'CASCADE\' THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN R.DELETE_RULE=\'SET NULL\' THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN R.DELETE_RULE=\'SET DEFAULT\' THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN R.DELETE_RULE=\'RESTRICT\' THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN R.DELETE_RULE=\'NO ACTION\' THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ELSE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private generateOptionalRefContraintsJoin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->hasReferentialConstraintsView:Z

    if-eqz v0, :cond_0

    const-string v0, "JOIN INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS R ON (R.CONSTRAINT_NAME = B.CONSTRAINT_NAME AND R.TABLE_NAME = B.TABLE_NAME AND R.CONSTRAINT_SCHEMA = B.TABLE_SCHEMA) "

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private generateUpdateRuleClause()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 516
    iget-boolean v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->hasReferentialConstraintsView:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CASE WHEN R.UPDATE_RULE=\'CASCADE\' THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN R.UPDATE_RULE=\'SET NULL\' THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN R.UPDATE_RULE=\'SET DEFAULT\' THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN R.UPDATE_RULE=\'RESTRICT\' THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHEN R.UPDATE_RULE=\'NO ACTION\' THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ELSE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1

    move-object v0, v1

    .line 66
    check-cast v0, Lcom/mysql/jdbc/ResultSetInternalMethods;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setOwningStatement(Lcom/mysql/jdbc/StatementImpl;)V

    .line 68
    return-object v1
.end method

.method public getColumnPrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 11
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
    .line 105
    if-nez p4, :cond_0

    .line 106
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    const-string p4, "%"

    .line 114
    :cond_0
    if-nez p1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .line 120
    :cond_1
    const-string v1, "SELECT TABLE_SCHEMA AS TABLE_CAT, NULL AS TABLE_SCHEM, TABLE_NAME,COLUMN_NAME, NULL AS GRANTOR, GRANTEE, PRIVILEGE_TYPE AS PRIVILEGE, IS_GRANTABLE FROM INFORMATION_SCHEMA.COLUMN_PRIVILEGES WHERE TABLE_SCHEMA LIKE ? AND TABLE_NAME =? AND COLUMN_NAME LIKE ? ORDER BY COLUMN_NAME, PRIVILEGE_TYPE"

    .line 124
    const/4 v2, 0x0

    .line 127
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 129
    if-eqz p1, :cond_4

    .line 130
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v3, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 135
    :goto_0
    const/4 v1, 0x2

    invoke-interface {v3, v1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 136
    const/4 v1, 0x3

    invoke-interface {v3, v1, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 138
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 139
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-object v1, v0

    const/16 v4, 0x8

    new-array v4, v4, [Lcom/mysql/jdbc/Field;

    const/4 v5, 0x0

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "TABLE_CAT"

    const/4 v9, 0x1

    const/16 v10, 0x40

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "TABLE_SCHEM"

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "TABLE_NAME"

    const/4 v9, 0x1

    const/16 v10, 0x40

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "COLUMN_NAME"

    const/4 v9, 0x1

    const/16 v10, 0x40

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "GRANTOR"

    const/4 v9, 0x1

    const/16 v10, 0x4d

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "GRANTEE"

    const/4 v9, 0x1

    const/16 v10, 0x4d

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "PRIVILEGE"

    const/4 v9, 0x1

    const/16 v10, 0x40

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "IS_GRANTABLE"

    const/4 v9, 0x1

    const/4 v10, 0x3

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    invoke-interface {v1, v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    if-eqz v3, :cond_2

    .line 147
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    .line 144
    :cond_2
    return-object v2

    .line 109
    :cond_3
    const-string v1, "Column name pattern can not be NULL or empty."

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 132
    :cond_4
    const/4 v1, 0x1

    :try_start_2
    const-string v2, "%"

    invoke-interface {v3, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 146
    :catchall_0
    move-exception v1

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_5

    .line 147
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 146
    :cond_5
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method public getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 9
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
    const v8, 0x7fffffff

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 192
    if-nez p4, :cond_0

    .line 193
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 194
    const-string p4, "%"

    .line 201
    :cond_0
    if-nez p1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .line 207
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT TABLE_SCHEMA AS TABLE_CAT, NULL AS TABLE_SCHEM, TABLE_NAME, COLUMN_NAME,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    const-string v2, "DATA_TYPE"

    invoke-static {v1, v2}, Lcom/mysql/jdbc/MysqlDefs;->appendJdbcTypeMappingQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 210
    const-string v2, " AS DATA_TYPE, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCapitalizeTypeNames()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 213
    const-string v2, "UPPER(CASE WHEN LOCATE(\'unsigned\', COLUMN_TYPE) != 0 AND LOCATE(\'unsigned\', DATA_TYPE) = 0 AND LOCATE(\'set\', DATA_TYPE) <> 1 AND LOCATE(\'enum\', DATA_TYPE) <> 1 THEN CONCAT(DATA_TYPE, \' unsigned\') ELSE DATA_TYPE END) AS TYPE_NAME,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CASE WHEN LCASE(DATA_TYPE)=\'date\' THEN 10 WHEN LCASE(DATA_TYPE)=\'time\' THEN 8 WHEN LCASE(DATA_TYPE)=\'datetime\' THEN 19 WHEN LCASE(DATA_TYPE)=\'timestamp\' THEN 19 WHEN CHARACTER_MAXIMUM_LENGTH IS NULL THEN NUMERIC_PRECISION WHEN CHARACTER_MAXIMUM_LENGTH > 2147483647 THEN 2147483647 ELSE CHARACTER_MAXIMUM_LENGTH END AS COLUMN_SIZE, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/mysql/jdbc/MysqlIO;->getMaxBuf()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS BUFFER_LENGTH,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "NUMERIC_SCALE AS DECIMAL_DIGITS,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "10 AS NUM_PREC_RADIX,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CASE WHEN IS_NULLABLE=\'NO\' THEN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ELSE CASE WHEN IS_NULLABLE=\'YES\' THEN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ELSE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " END END AS NULLABLE,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "COLUMN_COMMENT AS REMARKS,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "COLUMN_DEFAULT AS COLUMN_DEF,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0 AS SQL_DATA_TYPE,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0 AS SQL_DATETIME_SUB,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CASE WHEN CHARACTER_OCTET_LENGTH > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " THEN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ELSE CHARACTER_OCTET_LENGTH END AS CHAR_OCTET_LENGTH,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ORDINAL_POSITION,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "IS_NULLABLE,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "NULL AS SCOPE_CATALOG,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "NULL AS SCOPE_SCHEMA,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "NULL AS SCOPE_TABLE,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "NULL AS SOURCE_DATA_TYPE,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "IF (EXTRA LIKE \'%auto_increment%\',\'YES\',\'NO\') AS IS_AUTOINCREMENT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "IF (EXTRA LIKE \'%GENERATED%\',\'YES\',\'NO\') AS IS_GENERATEDCOLUMN FROM INFORMATION_SCHEMA.COLUMNS WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v2, "information_schema"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 234
    if-eqz p1, :cond_7

    .line 235
    if-nez v2, :cond_2

    const-string v2, "%"

    invoke-static {v4, p1, v2}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_6

    const-string v2, "_"

    invoke-static {v4, p1, v2}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_6

    .line 237
    :cond_2
    const-string v2, "TABLE_SCHEMA = ? AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :goto_1
    if-eqz p3, :cond_9

    .line 247
    const-string v2, "%"

    invoke-static {v4, p3, v2}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_8

    const-string v2, "_"

    invoke-static {v4, p3, v2}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_8

    .line 248
    const-string v2, "TABLE_NAME = ? AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :goto_2
    const-string v2, "%"

    invoke-static {v4, p4, v2}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_a

    const-string v2, "_"

    invoke-static {v4, p4, v2}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_a

    .line 258
    const-string v2, "COLUMN_NAME = ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :goto_3
    const-string v2, "ORDER BY TABLE_SCHEMA, TABLE_NAME, ORDINAL_POSITION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const/4 v2, 0x0

    .line 267
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 269
    if-eqz p1, :cond_b

    .line 270
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v3, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 275
    :goto_4
    const/4 v1, 0x2

    invoke-interface {v3, v1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 276
    const/4 v1, 0x3

    invoke-interface {v3, v1, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 278
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 280
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-object v1, v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createColumnsFields()[Lcom/mysql/jdbc/Field;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    if-eqz v3, :cond_3

    .line 284
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    .line 281
    :cond_3
    return-object v2

    .line 196
    :cond_4
    const-string v1, "Column name pattern can not be NULL or empty."

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 216
    :cond_5
    const-string v2, "CASE WHEN LOCATE(\'unsigned\', COLUMN_TYPE) != 0 AND LOCATE(\'unsigned\', DATA_TYPE) = 0 AND LOCATE(\'set\', DATA_TYPE) <> 1 AND LOCATE(\'enum\', DATA_TYPE) <> 1 THEN CONCAT(DATA_TYPE, \' unsigned\') ELSE DATA_TYPE END AS TYPE_NAME,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 239
    :cond_6
    const-string v2, "TABLE_SCHEMA LIKE ? AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 243
    :cond_7
    const-string v2, "TABLE_SCHEMA LIKE ? AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 250
    :cond_8
    const-string v2, "TABLE_NAME LIKE ? AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 254
    :cond_9
    const-string v2, "TABLE_NAME LIKE ? AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 260
    :cond_a
    const-string v2, "COLUMN_NAME LIKE ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 272
    :cond_b
    const/4 v1, 0x1

    :try_start_2
    const-string v2, "%"

    invoke-interface {v3, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 283
    :catchall_0
    move-exception v1

    move-object v2, v3

    :goto_5
    if-eqz v2, :cond_c

    .line 284
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 283
    :cond_c
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_5
.end method

.method public getCrossReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 5
    .parameter
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
    .line 346
    if-nez p3, :cond_0

    .line 347
    const-string v1, "Table not specified."

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 350
    :cond_0
    if-nez p1, :cond_1

    .line 351
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .line 356
    :cond_1
    if-nez p4, :cond_2

    .line 357
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 358
    iget-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .line 362
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT A.REFERENCED_TABLE_SCHEMA AS PKTABLE_CAT,NULL AS PKTABLE_SCHEM, A.REFERENCED_TABLE_NAME AS PKTABLE_NAME,A.REFERENCED_COLUMN_NAME AS PKCOLUMN_NAME, A.TABLE_SCHEMA AS FKTABLE_CAT, NULL AS FKTABLE_SCHEM, A.TABLE_NAME AS FKTABLE_NAME, A.COLUMN_NAME AS FKCOLUMN_NAME, A.ORDINAL_POSITION AS KEY_SEQ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateUpdateRuleClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS UPDATE_RULE,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateDeleteRuleClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS DELETE_RULE,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "A.CONSTRAINT_NAME AS FK_NAME,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(SELECT CONSTRAINT_NAME FROM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INFORMATION_SCHEMA.TABLE_CONSTRAINTS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE TABLE_SCHEMA = A.REFERENCED_TABLE_SCHEMA AND"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TABLE_NAME = A.REFERENCED_TABLE_NAME AND"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CONSTRAINT_TYPE IN (\'UNIQUE\',\'PRIMARY KEY\') LIMIT 1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS PK_NAME,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS DEFERRABILITY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "INFORMATION_SCHEMA.KEY_COLUMN_USAGE A JOIN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "INFORMATION_SCHEMA.TABLE_CONSTRAINTS B "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "USING (TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_NAME) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateOptionalRefContraintsJoin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "B.CONSTRAINT_TYPE = \'FOREIGN KEY\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AND A.REFERENCED_TABLE_SCHEMA LIKE ? AND A.REFERENCED_TABLE_NAME=? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AND A.TABLE_SCHEMA LIKE ? AND A.TABLE_NAME=? ORDER BY A.TABLE_SCHEMA, A.TABLE_NAME, A.ORDINAL_POSITION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 373
    const/4 v2, 0x0

    .line 376
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 377
    if-eqz p1, :cond_4

    .line 378
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v3, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 383
    :goto_0
    const/4 v1, 0x2

    invoke-interface {v3, v1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 385
    if-eqz p4, :cond_6

    .line 386
    const/4 v1, 0x3

    invoke-interface {v3, v1, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 391
    :goto_1
    const/4 v1, 0x4

    invoke-interface {v3, v1, p6}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 393
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 394
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-object v1, v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createFkMetadataFields()[Lcom/mysql/jdbc/Field;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    if-eqz v3, :cond_3

    .line 399
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    .line 396
    :cond_3
    return-object v2

    .line 380
    :cond_4
    const/4 v1, 0x1

    :try_start_2
    const-string v2, "%"

    invoke-interface {v3, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 398
    :catchall_0
    move-exception v1

    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_5

    .line 399
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 398
    :cond_5
    throw v1

    .line 388
    :cond_6
    const/4 v1, 0x3

    :try_start_3
    const-string v2, "%"

    invoke-interface {v3, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 398
    :catchall_1
    move-exception v1

    goto :goto_2
.end method

.method public getExportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 454
    if-nez p3, :cond_0

    .line 455
    const-string v1, "Table not specified."

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 458
    :cond_0
    if-nez p1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 460
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .line 466
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT A.REFERENCED_TABLE_SCHEMA AS PKTABLE_CAT, NULL AS PKTABLE_SCHEM, A.REFERENCED_TABLE_NAME AS PKTABLE_NAME, A.REFERENCED_COLUMN_NAME AS PKCOLUMN_NAME, A.TABLE_SCHEMA AS FKTABLE_CAT, NULL AS FKTABLE_SCHEM, A.TABLE_NAME AS FKTABLE_NAME,A.COLUMN_NAME AS FKCOLUMN_NAME, A.ORDINAL_POSITION AS KEY_SEQ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateUpdateRuleClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS UPDATE_RULE,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateDeleteRuleClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS DELETE_RULE,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "A.CONSTRAINT_NAME AS FK_NAME,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(SELECT CONSTRAINT_NAME FROM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INFORMATION_SCHEMA.TABLE_CONSTRAINTS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE TABLE_SCHEMA = A.REFERENCED_TABLE_SCHEMA AND"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TABLE_NAME = A.REFERENCED_TABLE_NAME AND"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CONSTRAINT_TYPE IN (\'UNIQUE\',\'PRIMARY KEY\') LIMIT 1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS PK_NAME,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS DEFERRABILITY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "INFORMATION_SCHEMA.KEY_COLUMN_USAGE A JOIN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "INFORMATION_SCHEMA.TABLE_CONSTRAINTS B "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "USING (TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_NAME) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateOptionalRefContraintsJoin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "B.CONSTRAINT_TYPE = \'FOREIGN KEY\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AND A.REFERENCED_TABLE_SCHEMA LIKE ? AND A.REFERENCED_TABLE_NAME=? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ORDER BY A.TABLE_SCHEMA, A.TABLE_NAME, A.ORDINAL_POSITION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 476
    const/4 v2, 0x0

    .line 479
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 481
    if-eqz p1, :cond_3

    .line 482
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v3, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 487
    :goto_0
    const/4 v1, 0x2

    invoke-interface {v3, v1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 489
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 491
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-object v1, v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createFkMetadataFields()[Lcom/mysql/jdbc/Field;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    if-eqz v3, :cond_2

    .line 496
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    .line 493
    :cond_2
    return-object v2

    .line 484
    :cond_3
    const/4 v1, 0x1

    :try_start_2
    const-string v2, "%"

    invoke-interface {v3, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 495
    :catchall_0
    move-exception v1

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_4

    .line 496
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 495
    :cond_4
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method public getFunctionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 6
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
    const/4 v1, 0x0

    .line 1347
    iget-boolean v2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->hasParametersView:Z

    if-nez v2, :cond_1

    .line 1348
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/DatabaseMetaData;->getFunctionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 1442
    :cond_0
    :goto_0
    return-object v2

    .line 1351
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 1352
    :cond_2
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1353
    const-string p3, "%"

    .line 1362
    :cond_3
    if-nez p1, :cond_4

    .line 1363
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1364
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .line 1375
    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT SPECIFIC_SCHEMA AS FUNCTION_CAT, NULL AS `FUNCTION_SCHEM`, SPECIFIC_NAME AS `FUNCTION_NAME`, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1376
    const-string v3, "IFNULL(PARAMETER_NAME, \'\') AS `COLUMN_NAME`, CASE WHEN PARAMETER_MODE = \'IN\' THEN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_IN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getJDBC4FunctionConstant(Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1378
    const-string v3, " WHEN PARAMETER_MODE = \'OUT\' THEN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_OUT:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getJDBC4FunctionConstant(Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1380
    const-string v3, " WHEN PARAMETER_MODE = \'INOUT\' THEN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_INOUT:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getJDBC4FunctionConstant(Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1382
    const-string v3, " WHEN ORDINAL_POSITION = 0 THEN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_RETURN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getJDBC4FunctionConstant(Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1384
    const-string v3, " ELSE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getJDBC4FunctionConstant(Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1386
    const-string v3, " END AS `COLUMN_TYPE`, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    const-string v3, "DATA_TYPE"

    invoke-static {v2, v3}, Lcom/mysql/jdbc/MysqlDefs;->appendJdbcTypeMappingQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1391
    const-string v3, " AS `DATA_TYPE`, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getCapitalizeTypeNames()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1395
    const-string v3, "UPPER(CASE WHEN LOCATE(\'unsigned\', DATA_TYPE) != 0 AND LOCATE(\'unsigned\', DATA_TYPE) = 0 THEN CONCAT(DATA_TYPE, \' unsigned\') ELSE DATA_TYPE END) AS `TYPE_NAME`,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1403
    :goto_2
    const-string v3, "NUMERIC_PRECISION AS `PRECISION`, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    const-string v3, "CASE WHEN LCASE(DATA_TYPE)=\'date\' THEN 10 WHEN LCASE(DATA_TYPE)=\'time\' THEN 8 WHEN LCASE(DATA_TYPE)=\'datetime\' THEN 19 WHEN LCASE(DATA_TYPE)=\'timestamp\' THEN 19 WHEN CHARACTER_MAXIMUM_LENGTH IS NULL THEN NUMERIC_PRECISION WHEN CHARACTER_MAXIMUM_LENGTH > 2147483647 THEN 2147483647 ELSE CHARACTER_MAXIMUM_LENGTH END AS LENGTH, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    const-string v3, "NUMERIC_SCALE AS `SCALE`, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1412
    const-string v3, "10 AS RADIX,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1419
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_NULLABLE:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getJDBC4FunctionConstant(Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS `NULLABLE`,  NULL AS `REMARKS`, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "CHARACTER_OCTET_LENGTH AS `CHAR_OCTET_LENGTH`,  ORDINAL_POSITION, \'YES\' AS `IS_NULLABLE`, SPECIFIC_NAME "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "FROM INFORMATION_SCHEMA.PARAMETERS WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SPECIFIC_SCHEMA LIKE ? AND SPECIFIC_NAME LIKE ? AND (PARAMETER_NAME LIKE ? OR PARAMETER_NAME IS NULL) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "AND ROUTINE_TYPE=\'FUNCTION\' ORDER BY SPECIFIC_SCHEMA, SPECIFIC_NAME, ORDINAL_POSITION"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 1430
    if-eqz p1, :cond_7

    .line 1431
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v3, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1436
    :goto_3
    const/4 v1, 0x2

    invoke-interface {v3, v1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1437
    const/4 v1, 0x3

    invoke-interface {v3, v1, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1439
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 1440
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-object v1, v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createFunctionColumnsFields()[Lcom/mysql/jdbc/Field;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1444
    if-eqz v3, :cond_0

    .line 1445
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    goto/16 :goto_0

    .line 1355
    :cond_5
    const-string v1, "Procedure name pattern can not be NULL or empty."

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 1398
    :cond_6
    const-string v3, "CASE WHEN LOCATE(\'unsigned\', DATA_TYPE) != 0 AND LOCATE(\'unsigned\', DATA_TYPE) = 0 THEN CONCAT(DATA_TYPE, \' unsigned\') ELSE DATA_TYPE END AS `TYPE_NAME`,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1433
    :cond_7
    const/4 v1, 0x1

    :try_start_2
    const-string v2, "%"

    invoke-interface {v3, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1444
    :catchall_0
    move-exception v1

    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_8

    .line 1445
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 1444
    :cond_8
    throw v1

    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_4

    :cond_9
    move-object p1, v1

    goto/16 :goto_1
.end method

.method public getFunctions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1510
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1511
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1512
    const-string p3, "%"

    .line 1519
    :cond_1
    const/4 v1, 0x0

    .line 1521
    if-nez p1, :cond_2

    .line 1522
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1523
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .line 1529
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT ROUTINE_SCHEMA AS FUNCTION_CAT, NULL AS FUNCTION_SCHEM, ROUTINE_NAME AS FUNCTION_NAME, ROUTINE_COMMENT AS REMARKS, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getJDBC4FunctionNoTableConstant()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS FUNCTION_TYPE, ROUTINE_NAME AS SPECIFIC_NAME FROM INFORMATION_SCHEMA.ROUTINES "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WHERE ROUTINE_TYPE LIKE \'FUNCTION\' AND ROUTINE_SCHEMA LIKE ? AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ROUTINE_NAME LIKE ? ORDER BY FUNCTION_CAT, FUNCTION_SCHEM, FUNCTION_NAME, SPECIFIC_NAME"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1534
    const/4 v2, 0x0

    .line 1537
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1539
    const/4 v1, 0x1

    if-eqz p1, :cond_5

    :goto_1
    :try_start_1
    invoke-interface {v3, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1540
    const/4 v1, 0x2

    invoke-interface {v3, v1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1542
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 1543
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-object v1, v0

    const/4 v4, 0x6

    new-array v4, v4, [Lcom/mysql/jdbc/Field;

    const/4 v5, 0x0

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "FUNCTION_CAT"

    const/4 v9, 0x1

    const/16 v10, 0xff

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "FUNCTION_SCHEM"

    const/4 v9, 0x1

    const/16 v10, 0xff

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "FUNCTION_NAME"

    const/4 v9, 0x1

    const/16 v10, 0xff

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "REMARKS"

    const/4 v9, 0x1

    const/16 v10, 0xff

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "FUNCTION_TYPE"

    const/4 v9, 0x5

    const/4 v10, 0x6

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "SPECIFIC_NAME"

    const/4 v9, 0x1

    const/16 v10, 0xff

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    invoke-interface {v1, v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1550
    if-eqz v3, :cond_3

    .line 1551
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    .line 1548
    :cond_3
    return-object v2

    .line 1514
    :cond_4
    const-string v1, "Function name pattern can not be NULL or empty."

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 1539
    :cond_5
    :try_start_2
    const-string p1, "%"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_1

    .line 1550
    :catchall_0
    move-exception v1

    :goto_2
    if-eqz v2, :cond_6

    .line 1551
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 1550
    :cond_6
    throw v1

    :catchall_1
    move-exception v1

    move-object v2, v3

    goto :goto_2

    :cond_7
    move-object p1, v1

    goto/16 :goto_0
.end method

.method public getImportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 571
    if-nez p3, :cond_0

    .line 572
    const-string v1, "Table not specified."

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 575
    :cond_0
    if-nez p1, :cond_1

    .line 576
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 577
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .line 581
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT A.REFERENCED_TABLE_SCHEMA AS PKTABLE_CAT, NULL AS PKTABLE_SCHEM, A.REFERENCED_TABLE_NAME AS PKTABLE_NAME,A.REFERENCED_COLUMN_NAME AS PKCOLUMN_NAME, A.TABLE_SCHEMA AS FKTABLE_CAT, NULL AS FKTABLE_SCHEM, A.TABLE_NAME AS FKTABLE_NAME, A.COLUMN_NAME AS FKCOLUMN_NAME, A.ORDINAL_POSITION AS KEY_SEQ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateUpdateRuleClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS UPDATE_RULE,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateDeleteRuleClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS DELETE_RULE,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "A.CONSTRAINT_NAME AS FK_NAME,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(SELECT CONSTRAINT_NAME FROM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INFORMATION_SCHEMA.TABLE_CONSTRAINTS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE TABLE_SCHEMA = A.REFERENCED_TABLE_SCHEMA AND"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TABLE_NAME = A.REFERENCED_TABLE_NAME AND"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CONSTRAINT_TYPE IN (\'UNIQUE\',\'PRIMARY KEY\') LIMIT 1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS PK_NAME,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS DEFERRABILITY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "INFORMATION_SCHEMA.KEY_COLUMN_USAGE A "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS B USING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(CONSTRAINT_NAME, TABLE_NAME) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateOptionalRefContraintsJoin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "B.CONSTRAINT_TYPE = \'FOREIGN KEY\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AND A.TABLE_SCHEMA LIKE ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AND A.TABLE_NAME=? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AND A.REFERENCED_TABLE_SCHEMA IS NOT NULL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ORDER BY A.REFERENCED_TABLE_SCHEMA, A.REFERENCED_TABLE_NAME, A.ORDINAL_POSITION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 591
    const/4 v2, 0x0

    .line 594
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 596
    if-eqz p1, :cond_3

    .line 597
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v3, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 602
    :goto_0
    const/4 v1, 0x2

    invoke-interface {v3, v1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 604
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 606
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-object v1, v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createFkMetadataFields()[Lcom/mysql/jdbc/Field;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    if-eqz v3, :cond_2

    .line 611
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    .line 608
    :cond_2
    return-object v2

    .line 599
    :cond_3
    const/4 v1, 0x1

    :try_start_2
    const-string v2, "%"

    invoke-interface {v3, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 610
    :catchall_0
    move-exception v1

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_4

    .line 611
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 610
    :cond_4
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method public getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
    .locals 5
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
    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT TABLE_SCHEMA AS TABLE_CAT, NULL AS TABLE_SCHEM, TABLE_NAME, NON_UNIQUE,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 666
    const-string v2, "TABLE_SCHEMA AS INDEX_QUALIFIER, INDEX_NAME,3 AS TYPE, SEQ_IN_INDEX AS ORDINAL_POSITION, COLUMN_NAME,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    const-string v2, "COLLATION AS ASC_OR_DESC, CARDINALITY, NULL AS PAGES, NULL AS FILTER_CONDITION FROM INFORMATION_SCHEMA.STATISTICS WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    const-string v2, "TABLE_SCHEMA LIKE ? AND TABLE_NAME LIKE ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    if-eqz p4, :cond_0

    .line 671
    const-string v2, " AND NON_UNIQUE=0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    :cond_0
    const-string v2, "ORDER BY NON_UNIQUE, INDEX_NAME, SEQ_IN_INDEX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    const/4 v2, 0x0

    .line 679
    if-nez p1, :cond_1

    .line 680
    :try_start_0
    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 681
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .line 685
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 687
    if-eqz p1, :cond_3

    .line 688
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v3, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 693
    :goto_0
    const/4 v1, 0x2

    invoke-interface {v3, v1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 695
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 697
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-object v1, v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createIndexInfoFields()[Lcom/mysql/jdbc/Field;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    if-eqz v3, :cond_2

    .line 702
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    .line 699
    :cond_2
    return-object v2

    .line 690
    :cond_3
    const/4 v1, 0x1

    :try_start_2
    const-string v2, "%"

    invoke-interface {v3, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 701
    :catchall_0
    move-exception v1

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_4

    .line 702
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 701
    :cond_4
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method protected getJDBC4FunctionConstant(Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;)I
    .locals 1
    .parameter

    .prologue
    .line 1460
    const/4 v0, 0x0

    return v0
.end method

.method protected getJDBC4FunctionNoTableConstant()I
    .locals 1

    .prologue
    .line 1564
    const/4 v0, 0x0

    return v0
.end method

.method public getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 734
    if-nez p1, :cond_0

    .line 735
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .line 740
    :cond_0
    if-nez p3, :cond_1

    .line 741
    const-string v1, "Table not specified."

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 744
    :cond_1
    const-string v1, "SELECT TABLE_SCHEMA AS TABLE_CAT, NULL AS TABLE_SCHEM, TABLE_NAME, COLUMN_NAME, SEQ_IN_INDEX AS KEY_SEQ, \'PRIMARY\' AS PK_NAME FROM INFORMATION_SCHEMA.STATISTICS WHERE TABLE_SCHEMA LIKE ? AND TABLE_NAME LIKE ? AND INDEX_NAME=\'PRIMARY\' ORDER BY TABLE_SCHEMA, TABLE_NAME, INDEX_NAME, SEQ_IN_INDEX"

    .line 748
    const/4 v2, 0x0

    .line 751
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 753
    if-eqz p1, :cond_3

    .line 754
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v3, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 759
    :goto_0
    const/4 v1, 0x2

    invoke-interface {v3, v1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 761
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 762
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-object v1, v0

    const/4 v4, 0x6

    new-array v4, v4, [Lcom/mysql/jdbc/Field;

    const/4 v5, 0x0

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "TABLE_CAT"

    const/4 v9, 0x1

    const/16 v10, 0xff

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "TABLE_SCHEM"

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "TABLE_NAME"

    const/4 v9, 0x1

    const/16 v10, 0xff

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "COLUMN_NAME"

    const/4 v9, 0x1

    const/16 v10, 0x20

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "KEY_SEQ"

    const/4 v9, 0x5

    const/4 v10, 0x5

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "PK_NAME"

    const/4 v9, 0x1

    const/16 v10, 0x20

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    invoke-interface {v1, v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 768
    if-eqz v3, :cond_2

    .line 769
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    .line 766
    :cond_2
    return-object v2

    .line 756
    :cond_3
    const/4 v1, 0x1

    :try_start_2
    const-string v2, "%"

    invoke-interface {v3, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 768
    :catchall_0
    move-exception v1

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_4

    .line 769
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 768
    :cond_4
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method public getProcedureColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 6
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
    const/4 v1, 0x0

    .line 937
    iget-boolean v2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->hasParametersView:Z

    if-nez v2, :cond_1

    .line 938
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getProcedureColumnsNoISParametersView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 1029
    :cond_0
    :goto_0
    return-object v2

    .line 941
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 942
    :cond_2
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 943
    const-string p3, "%"

    .line 952
    :cond_3
    if-nez p1, :cond_4

    .line 953
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 954
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .line 976
    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT SPECIFIC_SCHEMA AS PROCEDURE_CAT, NULL AS `PROCEDURE_SCHEM`, SPECIFIC_NAME AS `PROCEDURE_NAME`, IFNULL(PARAMETER_NAME, \'\') AS `COLUMN_NAME`, CASE WHEN PARAMETER_MODE = \'IN\' THEN 1 WHEN PARAMETER_MODE = \'OUT\' THEN 4 WHEN PARAMETER_MODE = \'INOUT\' THEN 2 WHEN ORDINAL_POSITION = 0 THEN 5 ELSE 0 END AS `COLUMN_TYPE`, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 982
    const-string v3, "DATA_TYPE"

    invoke-static {v2, v3}, Lcom/mysql/jdbc/MysqlDefs;->appendJdbcTypeMappingQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 984
    const-string v3, " AS `DATA_TYPE`, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getCapitalizeTypeNames()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 988
    const-string v3, "UPPER(CASE WHEN LOCATE(\'unsigned\', DATA_TYPE) != 0 AND LOCATE(\'unsigned\', DATA_TYPE) = 0 THEN CONCAT(DATA_TYPE, \' unsigned\') ELSE DATA_TYPE END) AS `TYPE_NAME`,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    :goto_2
    const-string v3, "NUMERIC_PRECISION AS `PRECISION`, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    const-string v3, "CASE WHEN LCASE(DATA_TYPE)=\'date\' THEN 10 WHEN LCASE(DATA_TYPE)=\'time\' THEN 8 WHEN LCASE(DATA_TYPE)=\'datetime\' THEN 19 WHEN LCASE(DATA_TYPE)=\'timestamp\' THEN 19 WHEN CHARACTER_MAXIMUM_LENGTH IS NULL THEN NUMERIC_PRECISION WHEN CHARACTER_MAXIMUM_LENGTH > 2147483647 THEN 2147483647 ELSE CHARACTER_MAXIMUM_LENGTH END AS LENGTH, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    const-string v3, "NUMERIC_SCALE AS `SCALE`, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    const-string v3, "10 AS RADIX,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1 AS `NULLABLE`, NULL AS `REMARKS`, NULL AS `COLUMN_DEF`, NULL AS `SQL_DATA_TYPE`, NULL AS `SQL_DATETIME_SUB`, CHARACTER_OCTET_LENGTH AS `CHAR_OCTET_LENGTH`, ORDINAL_POSITION, \'YES\' AS `IS_NULLABLE`, SPECIFIC_NAME FROM INFORMATION_SCHEMA.PARAMETERS WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getRoutineTypeConditionForGetProcedureColumns()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SPECIFIC_SCHEMA LIKE ? AND SPECIFIC_NAME LIKE ? AND (PARAMETER_NAME LIKE ? OR PARAMETER_NAME IS NULL) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ORDER BY SPECIFIC_SCHEMA, SPECIFIC_NAME, ROUTINE_TYPE, ORDINAL_POSITION"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 1017
    if-eqz p1, :cond_7

    .line 1018
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v3, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1023
    :goto_3
    const/4 v1, 0x2

    invoke-interface {v3, v1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1024
    const/4 v1, 0x3

    invoke-interface {v3, v1, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1026
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 1027
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-object v1, v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createProcedureColumnsFields()[Lcom/mysql/jdbc/Field;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1031
    if-eqz v3, :cond_0

    .line 1032
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    goto/16 :goto_0

    .line 945
    :cond_5
    const-string v1, "Procedure name pattern can not be NULL or empty."

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 991
    :cond_6
    const-string v3, "CASE WHEN LOCATE(\'unsigned\', DATA_TYPE) != 0 AND LOCATE(\'unsigned\', DATA_TYPE) = 0 THEN CONCAT(DATA_TYPE, \' unsigned\') ELSE DATA_TYPE END AS `TYPE_NAME`,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1020
    :cond_7
    const/4 v1, 0x1

    :try_start_2
    const-string v2, "%"

    invoke-interface {v3, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1031
    :catchall_0
    move-exception v1

    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_8

    .line 1032
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 1031
    :cond_8
    throw v1

    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_4

    :cond_9
    move-object p1, v1

    goto/16 :goto_1
.end method

.method protected getProcedureColumnsNoISParametersView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
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
    .line 1044
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/DatabaseMetaData;->getProcedureColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getProcedures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 813
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 814
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 815
    const-string p3, "%"

    .line 824
    :cond_1
    if-nez p1, :cond_2

    .line 825
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 826
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .line 832
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT ROUTINE_SCHEMA AS PROCEDURE_CAT, NULL AS PROCEDURE_SCHEM, ROUTINE_NAME AS PROCEDURE_NAME, NULL AS RESERVED_1, NULL AS RESERVED_2, NULL AS RESERVED_3, ROUTINE_COMMENT AS REMARKS, CASE WHEN ROUTINE_TYPE = \'PROCEDURE\' THEN 1 WHEN ROUTINE_TYPE=\'FUNCTION\' THEN 2 ELSE 0 END AS PROCEDURE_TYPE, ROUTINE_NAME AS SPECIFIC_NAME FROM INFORMATION_SCHEMA.ROUTINES WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getRoutineTypeConditionForGetProcedures()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ROUTINE_SCHEMA LIKE ? AND ROUTINE_NAME LIKE ? ORDER BY ROUTINE_SCHEMA, ROUTINE_NAME, ROUTINE_TYPE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 841
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 843
    if-eqz p1, :cond_5

    .line 844
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v3, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 849
    :goto_1
    const/4 v1, 0x2

    invoke-interface {v3, v1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 851
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 852
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-object v1, v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createFieldMetadataForGetProcedures()[Lcom/mysql/jdbc/Field;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 856
    if-eqz v3, :cond_3

    .line 857
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    .line 854
    :cond_3
    return-object v2

    .line 817
    :cond_4
    const-string v1, "Procedure name pattern can not be NULL or empty."

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 846
    :cond_5
    const/4 v1, 0x1

    :try_start_2
    const-string v2, "%"

    invoke-interface {v3, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 856
    :catchall_0
    move-exception v1

    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_6

    .line 857
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 856
    :cond_6
    throw v1

    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_2

    :cond_7
    move-object p1, v1

    goto :goto_0
.end method

.method protected getRoutineTypeConditionForGetProcedureColumns()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1054
    const-string v0, ""

    return-object v0
.end method

.method protected getRoutineTypeConditionForGetProcedures()Ljava/lang/String;
    .locals 1

    .prologue
    .line 869
    const-string v0, ""

    return-object v0
.end method

.method public getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 10
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
    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 1092
    if-nez p1, :cond_13

    .line 1093
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1094
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    move-object v2, p1

    .line 1098
    :goto_0
    if-nez p3, :cond_0

    .line 1099
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1100
    const-string p3, "%"

    .line 1108
    :cond_0
    const-string v1, ""

    .line 1110
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 1111
    :cond_1
    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1112
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .line 1118
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->quotedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v4

    invoke-static {p3, v1, v3, v4}, Lcom/mysql/jdbc/StringUtils;->splitDBdotName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 1120
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v8, :cond_7

    .line 1121
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1126
    :goto_2
    const/4 v4, 0x0

    .line 1128
    const-string v3, "SELECT TABLE_SCHEMA AS TABLE_CAT, NULL AS TABLE_SCHEM, TABLE_NAME, CASE WHEN TABLE_TYPE=\'BASE TABLE\' THEN CASE WHEN TABLE_SCHEMA = \'mysql\' OR TABLE_SCHEMA = \'performance_schema\' THEN \'SYSTEM TABLE\' ELSE \'TABLE\' END WHEN TABLE_TYPE=\'TEMPORARY\' THEN \'LOCAL_TEMPORARY\' ELSE TABLE_TYPE END AS TABLE_TYPE, TABLE_COMMENT AS REMARKS, NULL AS TYPE_CAT, NULL AS TYPE_SCHEM, NULL AS TYPE_NAME, NULL AS SELF_REFERENCING_COL_NAME, NULL AS REF_GENERATION FROM INFORMATION_SCHEMA.TABLES WHERE "

    .line 1134
    const-string v6, "information_schema"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 1135
    if-eqz v2, :cond_9

    .line 1136
    if-nez v6, :cond_3

    const-string v6, "%"

    invoke-static {v5, v2, v6}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_8

    const-string v6, "_"

    invoke-static {v5, v2, v6}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_8

    .line 1138
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "TABLE_SCHEMA = ? "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1147
    :goto_3
    if-eqz v1, :cond_b

    .line 1148
    const-string v6, "%"

    invoke-static {v5, v1, v6}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_a

    const-string v6, "_"

    invoke-static {v5, v1, v6}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_a

    .line 1149
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "AND TABLE_NAME = ? "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1157
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "HAVING TABLE_TYPE IN (?,?,?,?,?) "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1158
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "ORDER BY TABLE_TYPE, TABLE_SCHEMA, TABLE_NAME"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1160
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 1162
    if-eqz v2, :cond_c

    .line 1163
    const/4 v4, 0x1

    :try_start_1
    invoke-interface {v3, v4, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1168
    :goto_5
    const/4 v2, 0x2

    invoke-interface {v3, v2, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1171
    if-eqz p4, :cond_4

    array-length v1, p4

    if-nez v1, :cond_e

    .line 1172
    :cond_4
    invoke-static {}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->values()[Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    move-result-object v1

    .line 1173
    :goto_6
    if-ge v5, v9, :cond_10

    .line 1174
    add-int/lit8 v2, v5, 0x3

    aget-object v4, v1, v5

    invoke-virtual {v4}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1173
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1102
    :cond_5
    const-string v1, "Table name pattern can not be NULL or empty."

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    :cond_6
    move-object v1, v2

    .line 1115
    goto/16 :goto_1

    :cond_7
    move-object v1, p3

    .line 1123
    goto/16 :goto_2

    .line 1140
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "TABLE_SCHEMA LIKE ? "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 1144
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "TABLE_SCHEMA LIKE ? "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 1151
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "AND TABLE_NAME LIKE ? "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 1155
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "AND TABLE_NAME LIKE ? "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 1165
    :cond_c
    const/4 v2, 0x1

    :try_start_2
    const-string v4, "%"

    invoke-interface {v3, v2, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .line 1196
    :catchall_0
    move-exception v1

    move-object v2, v3

    :goto_7
    if-eqz v2, :cond_d

    .line 1197
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 1196
    :cond_d
    throw v1

    :cond_e
    move v1, v5

    .line 1177
    :goto_8
    if-ge v1, v9, :cond_f

    .line 1178
    add-int/lit8 v2, v1, 0x3

    const/16 v4, 0xc

    :try_start_3
    invoke-interface {v3, v2, v4}, Ljava/sql/PreparedStatement;->setNull(II)V

    .line 1177
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1181
    :cond_f
    const/4 v2, 0x3

    move v4, v5

    .line 1182
    :goto_9
    array-length v1, p4

    if-ge v4, v1, :cond_10

    .line 1183
    aget-object v1, p4, v4

    invoke-static {v1}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getTableTypeEqualTo(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    move-result-object v5

    .line 1184
    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    if-eq v5, v1, :cond_12

    .line 1185
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v5}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1182
    :goto_a
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    goto :goto_9

    .line 1190
    :cond_10
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 1192
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-object v1, v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createTablesFields()[Lcom/mysql/jdbc/Field;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1196
    if-eqz v3, :cond_11

    .line 1197
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    .line 1194
    :cond_11
    return-object v2

    .line 1196
    :catchall_1
    move-exception v1

    move-object v2, v4

    goto :goto_7

    :cond_12
    move v1, v2

    goto :goto_a

    :cond_13
    move-object v2, p1

    goto/16 :goto_0
.end method

.method public getVersionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1209
    if-nez p1, :cond_0

    .line 1210
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1211
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .line 1215
    :cond_0
    if-nez p3, :cond_1

    .line 1216
    const-string v1, "Table not specified."

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 1219
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT NULL AS SCOPE, COLUMN_NAME, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1221
    const-string v2, "DATA_TYPE"

    invoke-static {v1, v2}, Lcom/mysql/jdbc/MysqlDefs;->appendJdbcTypeMappingQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1222
    const-string v2, " AS DATA_TYPE, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    const-string v2, "COLUMN_TYPE AS TYPE_NAME, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    const-string v2, "CASE WHEN LCASE(DATA_TYPE)=\'date\' THEN 10 WHEN LCASE(DATA_TYPE)=\'time\' THEN 8 WHEN LCASE(DATA_TYPE)=\'datetime\' THEN 19 WHEN LCASE(DATA_TYPE)=\'timestamp\' THEN 19 WHEN CHARACTER_MAXIMUM_LENGTH IS NULL THEN NUMERIC_PRECISION WHEN CHARACTER_MAXIMUM_LENGTH > 2147483647 THEN 2147483647 ELSE CHARACTER_MAXIMUM_LENGTH END AS COLUMN_SIZE, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mysql/jdbc/MysqlIO;->getMaxBuf()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS BUFFER_LENGTH,NUMERIC_SCALE AS DECIMAL_DIGITS, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS PSEUDO_COLUMN FROM INFORMATION_SCHEMA.COLUMNS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WHERE TABLE_SCHEMA LIKE ? AND TABLE_NAME LIKE ? AND EXTRA LIKE \'%on update CURRENT_TIMESTAMP%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    const/4 v2, 0x0

    .line 1236
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 1238
    if-eqz p1, :cond_3

    .line 1239
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v3, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1244
    :goto_0
    const/4 v1, 0x2

    invoke-interface {v3, v1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1246
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 1247
    move-object v0, v2

    check-cast v0, Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-object v1, v0

    const/16 v4, 0x8

    new-array v4, v4, [Lcom/mysql/jdbc/Field;

    const/4 v5, 0x0

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "SCOPE"

    const/4 v9, 0x5

    const/4 v10, 0x5

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "COLUMN_NAME"

    const/4 v9, 0x1

    const/16 v10, 0x20

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "DATA_TYPE"

    const/4 v9, 0x4

    const/4 v10, 0x5

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "TYPE_NAME"

    const/4 v9, 0x1

    const/16 v10, 0x10

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "COLUMN_SIZE"

    const/4 v9, 0x4

    const/16 v10, 0x10

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "BUFFER_LENGTH"

    const/4 v9, 0x4

    const/16 v10, 0x10

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "DECIMAL_DIGITS"

    const/4 v9, 0x5

    const/16 v10, 0x10

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "PSEUDO_COLUMN"

    const/4 v9, 0x5

    const/4 v10, 0x5

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v4, v5

    invoke-interface {v1, v4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1254
    if-eqz v3, :cond_2

    .line 1255
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    .line 1252
    :cond_2
    return-object v2

    .line 1241
    :cond_3
    const/4 v1, 0x1

    :try_start_2
    const-string v2, "%"

    invoke-interface {v3, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1254
    :catchall_0
    move-exception v1

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_4

    .line 1255
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 1254
    :cond_4
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method public gethasParametersView()Z
    .locals 1

    .prologue
    .line 1203
    iget-boolean v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->hasParametersView:Z

    return v0
.end method
