.class public Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;
.super Ljava/lang/Object;
.source "CallableStatement.java"

# interfaces
.implements Ljava/sql/ParameterMetaData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/CallableStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CallableStatementParamInfo"
.end annotation


# instance fields
.field catalogInUse:Ljava/lang/String;

.field isFunctionCall:Z

.field isReadOnlySafeChecked:Z

.field isReadOnlySafeProcedure:Z

.field nativeSql:Ljava/lang/String;

.field numParameters:I

.field parameterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;",
            ">;"
        }
    .end annotation
.end field

.field parameterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mysql/jdbc/CallableStatement;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/CallableStatement;Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 159
    iput-object p1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->this$0:Lcom/mysql/jdbc/CallableStatement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-boolean v2, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeProcedure:Z

    .line 149
    iput-boolean v2, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeChecked:Z

    .line 160
    iget-object v0, p1, Lcom/mysql/jdbc/CallableStatement;->originalSql:Ljava/lang/String;

    iput-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->nativeSql:Ljava/lang/String;

    .line 161
    iget-object v0, p1, Lcom/mysql/jdbc/CallableStatement;->currentCatalog:Ljava/lang/String;

    iput-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->catalogInUse:Ljava/lang/String;

    .line 162
    iget-boolean v0, p2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isFunctionCall:Z

    iput-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isFunctionCall:Z

    .line 164
    invoke-static {p1}, Lcom/mysql/jdbc/CallableStatement;->access$000(Lcom/mysql/jdbc/CallableStatement;)[I

    move-result-object v3

    .line 165
    array-length v4, v3

    .line 167
    iget-boolean v0, p2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeProcedure:Z

    iput-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeProcedure:Z

    .line 168
    iget-boolean v0, p2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeChecked:Z

    iput-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeChecked:Z

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    iget v1, p2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterMap:Ljava/util/Map;

    .line 172
    iget-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isFunctionCall:Z

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    iget-object v1, p2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isFunctionCall:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 179
    :goto_0
    if-ge v2, v4, :cond_3

    .line 180
    aget v0, v3, v2

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    aget v5, v3, v2

    add-int/2addr v5, v1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    .line 183
    iget-object v5, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v5, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterMap:Ljava/util/Map;

    iget-object v6, v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->paramName:Ljava/lang/String;

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 177
    goto :goto_0

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    .line 189
    return-void
.end method

.method constructor <init>(Lcom/mysql/jdbc/CallableStatement;Ljava/sql/ResultSet;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 192
    iput-object p1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->this$0:Lcom/mysql/jdbc/CallableStatement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-boolean v2, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeProcedure:Z

    .line 149
    iput-boolean v2, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeChecked:Z

    .line 193
    invoke-interface {p2}, Ljava/sql/ResultSet;->last()Z

    move-result v0

    .line 195
    iget-object v1, p1, Lcom/mysql/jdbc/CallableStatement;->originalSql:Ljava/lang/String;

    iput-object v1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->nativeSql:Ljava/lang/String;

    .line 196
    iget-object v1, p1, Lcom/mysql/jdbc/CallableStatement;->currentCatalog:Ljava/lang/String;

    iput-object v1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->catalogInUse:Ljava/lang/String;

    .line 197
    invoke-static {p1}, Lcom/mysql/jdbc/CallableStatement;->access$100(Lcom/mysql/jdbc/CallableStatement;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isFunctionCall:Z

    .line 199
    if-eqz v0, :cond_1

    .line 200
    invoke-interface {p2}, Ljava/sql/ResultSet;->getRow()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    .line 203
    new-instance v0, Ljava/util/HashMap;

    iget v1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterMap:Ljava/util/Map;

    .line 205
    invoke-interface {p2}, Ljava/sql/ResultSet;->beforeFirst()V

    .line 207
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->addParametersFromDBMD(Ljava/sql/ResultSet;)V

    .line 212
    :goto_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isFunctionCall:Z

    if-eqz v0, :cond_0

    .line 213
    iget v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    .line 215
    :cond_0
    return-void

    .line 209
    :cond_1
    iput v2, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    goto :goto_0
.end method

.method private addParametersFromDBMD(Ljava/sql/ResultSet;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 218
    const/4 v2, 0x0

    .line 220
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 223
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 235
    :pswitch_0
    const/4 v10, 0x0

    .line 238
    :goto_1
    const/4 v4, 0x0

    .line 239
    const/4 v3, 0x0

    .line 241
    if-nez v2, :cond_1

    iget-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isFunctionCall:Z

    if-eqz v0, :cond_1

    .line 242
    const/4 v4, 0x1

    .line 243
    const/4 v3, 0x0

    .line 255
    :cond_0
    :goto_2
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v5

    .line 256
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 257
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v7

    .line 258
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v8

    .line 259
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getShort(I)S

    move-result v9

    .line 261
    new-instance v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    add-int/lit8 v11, v2, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;-><init>(Ljava/lang/String;IZZILjava/lang/String;IISI)V

    .line 264
    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v11

    .line 266
    goto :goto_0

    .line 225
    :pswitch_1
    const/4 v10, 0x1

    .line 226
    goto :goto_1

    .line 228
    :pswitch_2
    const/4 v10, 0x2

    .line 229
    goto :goto_1

    .line 232
    :pswitch_3
    const/4 v10, 0x4

    .line 233
    goto :goto_1

    .line 244
    :cond_1
    const/4 v0, 0x2

    if-ne v10, v0, :cond_2

    .line 245
    const/4 v4, 0x1

    .line 246
    const/4 v3, 0x1

    goto :goto_2

    .line 247
    :cond_2
    const/4 v0, 0x1

    if-ne v10, v0, :cond_3

    .line 248
    const/4 v4, 0x0

    .line 249
    const/4 v3, 0x1

    goto :goto_2

    .line 250
    :cond_3
    const/4 v0, 0x4

    if-ne v10, v0, :cond_0

    .line 251
    const/4 v4, 0x1

    .line 252
    const/4 v3, 0x0

    goto :goto_2

    .line 267
    :cond_4
    return-void

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected checkBounds(I)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 270
    add-int/lit8 v0, p1, -0x1

    .line 272
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    if-lt v0, v1, :cond_1

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallableStatement.11"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CallableStatement.12"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CallableStatement.13"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->this$0:Lcom/mysql/jdbc/CallableStatement;

    invoke-virtual {v2}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 276
    :cond_1
    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getParameter(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    .locals 1
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    return-object v0
.end method

.method getParameter(Ljava/lang/String;)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    .locals 1
    .parameter

    .prologue
    .line 293
    iget-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    return-object v0
.end method

.method public getParameterClassName(I)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 297
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameterTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 299
    const-string v1, "BLOB"

    invoke-static {v2, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_0

    const-string v1, "BINARY"

    invoke-static {v2, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v5, :cond_1

    :cond_0
    move v3, v0

    .line 301
    :goto_0
    const-string v1, "UNSIGNED"

    invoke-static {v2, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v5, :cond_2

    move v1, v0

    .line 305
    :goto_1
    const-string v0, "MEDIUMINT"

    invoke-static {v2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
    const/16 v2, 0x9

    .line 309
    :goto_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameterType(I)I

    move-result v0

    iget-object v5, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->this$0:Lcom/mysql/jdbc/CallableStatement;

    iget-object v5, v5, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetMetaData;->getClassNameForJavaType(IZIZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v3, v4

    .line 299
    goto :goto_0

    :cond_2
    move v1, v4

    .line 301
    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2
.end method

.method public getParameterCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 315
    const/4 v0, 0x0

    .line 318
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
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
    .line 322
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->checkBounds(I)V

    .line 324
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameter(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object v0

    iget v0, v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->inOutModifier:I

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
    .line 328
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->checkBounds(I)V

    .line 330
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameter(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object v0

    iget v0, v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->jdbcType:I

    return v0
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
    .line 334
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->checkBounds(I)V

    .line 336
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameter(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object v0

    iget-object v0, v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->typeName:Ljava/lang/String;

    return-object v0
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
    .line 340
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->checkBounds(I)V

    .line 342
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameter(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object v0

    iget v0, v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->precision:I

    return v0
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
    .line 346
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->checkBounds(I)V

    .line 348
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameter(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object v0

    iget v0, v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->scale:I

    return v0
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
    .line 352
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->checkBounds(I)V

    .line 354
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameter(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object v0

    iget-short v0, v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->nullability:S

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
    .line 358
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->checkBounds(I)V

    .line 360
    const/4 v0, 0x0

    return v0
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
    .line 375
    iget-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->this$0:Lcom/mysql/jdbc/CallableStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 378
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method numberOfParameters()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

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
    .line 387
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 388
    :catch_0
    move-exception v0

    .line 389
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

    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->this$0:Lcom/mysql/jdbc/CallableStatement;

    invoke-virtual {v2}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method
