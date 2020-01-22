.class Lcom/mysql/jdbc/DatabaseMetaData$8;
.super Lcom/mysql/jdbc/IterateBlock;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/DatabaseMetaData;->getProceduresAndOrFunctions([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mysql/jdbc/IterateBlock",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mysql/jdbc/DatabaseMetaData;

.field final synthetic val$fields:[Lcom/mysql/jdbc/Field;

.field final synthetic val$procNamePattern:Ljava/lang/String;

.field final synthetic val$procedureRowsToSort:Ljava/util/List;

.field final synthetic val$returnFunctions:Z

.field final synthetic val$returnProcedures:Z


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;ZZLjava/lang/String;Ljava/util/List;[Lcom/mysql/jdbc/Field;)V
    .locals 0
    .parameter
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
    .line 4087
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iput-boolean p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnProcedures:Z

    iput-boolean p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnFunctions:Z

    iput-object p5, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procNamePattern:Ljava/lang/String;

    iput-object p6, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procedureRowsToSort:Ljava/util/List;

    iput-object p7, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$fields:[Lcom/mysql/jdbc/Field;

    invoke-direct {p0, p2}, Lcom/mysql/jdbc/IterateBlock;-><init>(Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;)V

    return-void
.end method


# virtual methods
.method bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4087
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$8;->forEach(Ljava/lang/String;)V

    return-void
.end method

.method forEach(Ljava/lang/String;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 4093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4095
    const-string v1, "SELECT name, type, comment FROM mysql.proc WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4096
    iget-boolean v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnProcedures:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnFunctions:Z

    if-nez v1, :cond_4

    .line 4097
    const-string v1, "type = \'PROCEDURE\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4101
    :cond_0
    :goto_0
    const-string v1, "name LIKE ? AND db <=> ? ORDER BY name, type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4103
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v12

    .line 4109
    if-eqz p1, :cond_5

    .line 4110
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v0, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4111
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 4113
    :goto_1
    const/4 v0, 0x2

    invoke-interface {v12, v0, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 4118
    :goto_2
    const/4 v7, 0x1

    .line 4120
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procNamePattern:Ljava/lang/String;

    invoke-interface {v12, v0, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4123
    :try_start_1
    invoke-interface {v12}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 4124
    const/4 v4, 0x0

    .line 4126
    :try_start_2
    iget-boolean v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnProcedures:Z

    if-eqz v0, :cond_1

    .line 4127
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const/4 v1, 0x1

    iget-object v6, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procedureRowsToSort:Ljava/util/List;

    move-object v5, v2

    invoke-virtual/range {v0 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData;->convertToJdbcProcedureList(ZLjava/lang/String;Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/util/List;I)V

    .line 4130
    :cond_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnFunctions:Z

    if-eqz v0, :cond_2

    .line 4131
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v6, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procedureRowsToSort:Ljava/util/List;

    iget-object v8, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$fields:[Lcom/mysql/jdbc/Field;

    move-object v5, v2

    invoke-virtual/range {v1 .. v8}, Lcom/mysql/jdbc/DatabaseMetaData;->convertToJdbcFunctionList(Ljava/lang/String;Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/util/List;I[Lcom/mysql/jdbc/Field;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_5

    .line 4164
    :cond_2
    :goto_3
    if-eqz v3, :cond_9

    .line 4166
    :try_start_3
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v11

    .line 4172
    :goto_4
    if-eqz v12, :cond_3

    .line 4174
    :try_start_4
    invoke-interface {v12}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    .line 4180
    :cond_3
    :goto_5
    if-eqz v0, :cond_8

    .line 4181
    throw v0

    .line 4098
    :cond_4
    iget-boolean v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnProcedures:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnFunctions:Z

    if-eqz v1, :cond_0

    .line 4099
    const-string v1, "type = \'FUNCTION\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4115
    :cond_5
    const/4 v0, 0x2

    const/16 v1, 0xc

    :try_start_5
    invoke-interface {v12, v0, v1}, Ljava/sql/PreparedStatement;->setNull(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v2, p1

    goto :goto_2

    .line 4134
    :catch_0
    move-exception v0

    move v4, v10

    move-object v3, v11

    .line 4135
    :goto_6
    :try_start_6
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v0, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface {v0, v1, v5, v6}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_6

    move v7, v13

    .line 4139
    :goto_7
    iget-boolean v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnFunctions:Z

    if-eqz v0, :cond_d

    .line 4140
    invoke-interface {v12}, Ljava/sql/PreparedStatement;->close()V

    .line 4142
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v1, "SHOW FUNCTION STATUS LIKE ?"

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v9

    .line 4143
    const/4 v0, 0x1

    :try_start_7
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procNamePattern:Ljava/lang/String;

    invoke-interface {v9, v0, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 4144
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v3

    .line 4146
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v6, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procedureRowsToSort:Ljava/util/List;

    iget-object v8, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$fields:[Lcom/mysql/jdbc/Field;

    move-object v5, v2

    invoke-virtual/range {v1 .. v8}, Lcom/mysql/jdbc/DatabaseMetaData;->convertToJdbcFunctionList(Ljava/lang/String;Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/util/List;I[Lcom/mysql/jdbc/Field;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v1, v9

    .line 4150
    :goto_8
    :try_start_8
    iget-boolean v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnProcedures:Z

    if-eqz v0, :cond_c

    .line 4151
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 4153
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v5, "SHOW PROCEDURE STATUS LIKE ?"

    invoke-virtual {v0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-object v8

    .line 4154
    const/4 v0, 0x1

    :try_start_9
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procNamePattern:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 4155
    invoke-interface {v8}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v3

    .line 4157
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procedureRowsToSort:Ljava/util/List;

    move-object v5, v2

    invoke-virtual/range {v0 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData;->convertToJdbcProcedureList(ZLjava/lang/String;Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/util/List;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object v12, v8

    goto :goto_3

    :cond_6
    move v7, v10

    .line 4135
    goto :goto_7

    .line 4162
    :cond_7
    throw v0

    .line 4184
    :cond_8
    return-void

    .line 4162
    :catchall_0
    move-exception v0

    move-object v1, v12

    move-object v3, v11

    .line 4164
    :goto_9
    if-eqz v3, :cond_b

    .line 4166
    :try_start_a
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_1

    move-object v2, v11

    .line 4172
    :goto_a
    if-eqz v1, :cond_a

    .line 4174
    :try_start_b
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_2

    move-object v1, v2

    .line 4180
    :goto_b
    if-eqz v1, :cond_7

    .line 4181
    throw v1

    .line 4167
    :catch_1
    move-exception v11

    move-object v2, v11

    .line 4168
    goto :goto_a

    .line 4175
    :catch_2
    move-exception v1

    goto :goto_b

    .line 4167
    :catch_3
    move-exception v11

    move-object v0, v11

    .line 4168
    goto/16 :goto_4

    .line 4175
    :catch_4
    move-exception v0

    goto/16 :goto_5

    .line 4162
    :catchall_1
    move-exception v0

    move-object v1, v12

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v1, v9

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v1, v8

    goto :goto_9

    .line 4134
    :catch_5
    move-exception v0

    move v4, v9

    goto/16 :goto_6

    :cond_9
    move-object v0, v11

    goto/16 :goto_4

    :cond_a
    move-object v1, v2

    goto :goto_b

    :cond_b
    move-object v2, v11

    goto :goto_a

    :cond_c
    move-object v12, v1

    goto/16 :goto_3

    :cond_d
    move-object v1, v12

    goto :goto_8

    :cond_e
    move-object v2, p1

    goto/16 :goto_1
.end method
