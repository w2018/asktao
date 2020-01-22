.class Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;
.super Ljava/lang/Object;
.source "PreparedStatement.java"

# interfaces
.implements Lcom/mysql/jdbc/ParameterBindings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/PreparedStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmulatedPreparedStatementBindings"
.end annotation


# instance fields
.field private bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

.field private parameterIsNull:[Z

.field final synthetic this$0:Lcom/mysql/jdbc/PreparedStatement;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/PreparedStatement;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 4878
    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->this$0:Lcom/mysql/jdbc/PreparedStatement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4879
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4880
    iget v2, p1, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->parameterIsNull:[Z

    .line 4881
    iget-object v2, p1, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->parameterIsNull:[Z

    iget v4, p1, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4882
    iget v2, p1, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    new-array v8, v2, [[B

    .line 4883
    iget v2, p1, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    new-array v9, v2, [Lcom/mysql/jdbc/Field;

    move v6, v0

    .line 4885
    :goto_0
    iget v0, p1, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    if-ge v6, v0, :cond_3

    .line 4886
    iget v0, p1, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 4887
    invoke-virtual {p1, v6}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v0

    aput-object v0, v8, v6

    .line 4894
    :goto_1
    iget-object v0, p1, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    aget v0, v0, v6

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p1, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    aget v0, v0, v6

    const/16 v2, 0x7d4

    if-ne v0, v2, :cond_2

    .line 4895
    :cond_0
    const/16 v3, 0x3f

    .line 4909
    :goto_2
    new-instance v0, Lcom/mysql/jdbc/Field;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parameter_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v6, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    aget v4, v4, v6

    aget-object v5, v8, v6

    array-length v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 4910
    iget-object v2, p1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/Field;->setConnection(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4911
    aput-object v0, v9, v6

    .line 4885
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 4889
    :cond_1
    iget v0, p1, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    invoke-virtual {p1, v6, v0}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentationForBatch(II)[B

    move-result-object v0

    aput-object v0, v8, v6

    goto :goto_1

    .line 4898
    :cond_2
    :try_start_0
    iget-object v0, p1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v0, v2}, Lcom/mysql/jdbc/CharsetMapping;->getCollationIndexForJavaEncoding(Ljava/lang/String;Ljava/sql/Connection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_2

    .line 4900
    :catch_0
    move-exception v0

    .line 4901
    throw v0

    .line 4902
    :catch_1
    move-exception v0

    .line 4903
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1009"

    invoke-static {v2, v3, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 4904
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4905
    throw v1

    .line 4914
    :cond_3
    new-instance v0, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p1}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-direct {v0, v8, v2}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4916
    new-instance v2, Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v0, p1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/mysql/jdbc/RowDataStatic;

    invoke-direct {v5, v7}, Lcom/mysql/jdbc/RowDataStatic;-><init>(Ljava/util/List;)V

    iget-object v6, p1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v4, v9

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/mysql/jdbc/ResultSetImpl;-><init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    .line 4918
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ResultSetImpl;->next()Z

    .line 4919
    return-void
.end method


# virtual methods
.method public getArray(I)Ljava/sql/Array;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4922
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getArray(I)Ljava/sql/Array;

    move-result-object v0

    return-object v0
.end method

.method public getAsciiStream(I)Ljava/io/InputStream;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4926
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getAsciiStream(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4930
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryStream(I)Ljava/io/InputStream;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4934
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getBlob(I)Ljava/sql/Blob;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4938
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBlob(I)Ljava/sql/Blob;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4942
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getByte(I)B
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4946
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getByte(I)B

    move-result v0

    return v0
.end method

.method public getBytes(I)[B
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4950
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getCharacterStream(I)Ljava/io/Reader;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4954
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getClob(I)Ljava/sql/Clob;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4958
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getClob(I)Ljava/sql/Clob;

    move-result-object v0

    return-object v0
.end method

.method public getDate(I)Ljava/sql/Date;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4962
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDate(I)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4966
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4970
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4974
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4978
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNCharacterStream(I)Ljava/io/Reader;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4982
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getNClob(I)Ljava/io/Reader;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4986
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 4990
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->this$0:Lcom/mysql/jdbc/PreparedStatement;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->checkBounds(II)V

    .line 4992
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->parameterIsNull:[Z

    add-int/lit8 v1, p1, -0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 4993
    const/4 v0, 0x0

    .line 5012
    :goto_0
    return-object v0

    .line 4998
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->this$0:Lcom/mysql/jdbc/PreparedStatement;

    iget-object v0, v0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 5012
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 5000
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->getByte(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 5002
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->getShort(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 5004
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 5006
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 5008
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 5010
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 4998
    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_0
        -0x5 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x6 -> :sswitch_4
        0x8 -> :sswitch_5
    .end sparse-switch
.end method

.method public getRef(I)Ljava/sql/Ref;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5017
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getRef(I)Ljava/sql/Ref;

    move-result-object v0

    return-object v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5021
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5025
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTime(I)Ljava/sql/Time;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5029
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTime(I)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5033
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getURL(I)Ljava/net/URL;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5037
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getURL(I)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public isNull(I)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 5041
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->this$0:Lcom/mysql/jdbc/PreparedStatement;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->checkBounds(II)V

    .line 5043
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->parameterIsNull:[Z

    add-int/lit8 v1, p1, -0x1

    aget-boolean v0, v0, v1

    return v0
.end method
