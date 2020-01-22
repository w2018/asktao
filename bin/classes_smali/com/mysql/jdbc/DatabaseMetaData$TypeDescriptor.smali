.class Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;
.super Ljava/lang/Object;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/DatabaseMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TypeDescriptor"
.end annotation


# instance fields
.field bufferLength:I

.field charOctetLength:I

.field columnSize:Ljava/lang/Integer;

.field dataType:S

.field decimalDigits:Ljava/lang/Integer;

.field isNullable:Ljava/lang/String;

.field nullability:I

.field numPrecRadix:I

.field final synthetic this$0:Lcom/mysql/jdbc/DatabaseMetaData;

.field typeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/16 v8, 0xff

    const/16 v7, 0xa

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 170
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput v7, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->numPrecRadix:I

    .line 171
    if-nez p2, :cond_0

    .line 172
    const-string v0, "NULL typeinfo not supported."

    const-string v1, "S1009"

    invoke-virtual {p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 175
    :cond_0
    const-string v0, ""

    .line 178
    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_3

    .line 179
    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 184
    :goto_0
    const-string v1, "unsigned"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 186
    if-eq v1, v6, :cond_1

    .line 187
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_1
    const-string v1, "unsigned"

    invoke-static {p2, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_4

    const-string v1, "set"

    invoke-static {p2, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "enum"

    invoke-static {p2, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " unsigned"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move v1, v2

    .line 202
    :goto_1
    iget-object v5, p1, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getCapitalizeTypeNames()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 203
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 206
    :cond_2
    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(Ljava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->dataType:S

    .line 208
    iput-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    .line 212
    const-string v0, "enum"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 213
    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 214
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v1, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 217
    :goto_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 218
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    :cond_3
    move-object v0, p2

    .line 181
    goto/16 :goto_0

    :cond_4
    move v1, v3

    move-object v4, v0

    .line 199
    goto :goto_1

    .line 221
    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    .line 356
    :cond_6
    :goto_3
    invoke-static {}, Lcom/mysql/jdbc/MysqlIO;->getMaxBuf()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->bufferLength:I

    .line 359
    iput v7, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->numPrecRadix:I

    .line 362
    if-eqz p3, :cond_31

    .line 363
    const-string v0, "YES"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 364
    iput v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->nullability:I

    .line 365
    const-string v0, "YES"

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->isNullable:Ljava/lang/String;

    .line 380
    :goto_4
    return-void

    .line 223
    :cond_7
    const-string v0, "set"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 224
    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 225
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v1, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    .line 230
    if-lez v0, :cond_32

    .line 231
    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v3

    .line 234
    :goto_5
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 235
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 237
    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 238
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    add-int/2addr v0, v4

    goto :goto_5

    .line 240
    :cond_8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_5

    .line 244
    :cond_9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    goto :goto_3

    .line 246
    :cond_a
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_b

    .line 248
    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    .line 249
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 251
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    .line 255
    const-string v0, "char"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_c

    const-string v0, "text"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_c

    const-string v0, "blob"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_c

    const-string v0, "binary"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_c

    const-string v0, "bit"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_f

    :cond_c
    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_f

    .line 258
    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 260
    if-ne v0, v6, :cond_d

    .line 261
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 264
    :cond_d
    const-string v1, "("

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    .line 267
    iget-object v0, p1, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getTinyInt1isBit()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_6

    const-string v0, "tinyint"

    invoke-static {p2, v3, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 269
    iget-object v0, p1, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getTransformedBitIsBoolean()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 270
    const/16 v0, 0x10

    iput-short v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->dataType:S

    .line 271
    const-string v0, "BOOLEAN"

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    goto/16 :goto_3

    .line 273
    :cond_e
    const/4 v0, -0x7

    iput-short v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->dataType:S

    .line 274
    const-string v0, "BIT"

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    goto/16 :goto_3

    .line 277
    :cond_f
    const-string v0, "tinyint"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 278
    iget-object v0, p1, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getTinyInt1isBit()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "(1)"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_11

    .line 279
    iget-object v0, p1, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getTransformedBitIsBoolean()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 280
    const/16 v0, 0x10

    iput-short v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->dataType:S

    .line 281
    const-string v0, "BOOLEAN"

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    goto/16 :goto_3

    .line 283
    :cond_10
    const/4 v0, -0x7

    iput-short v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->dataType:S

    .line 284
    const-string v0, "BIT"

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    goto/16 :goto_3

    .line 287
    :cond_11
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    .line 288
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 290
    :cond_12
    const-string v0, "smallint"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 291
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    .line 292
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 293
    :cond_13
    const-string v0, "mediumint"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 294
    if-eqz v1, :cond_14

    const/16 v0, 0x8

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    .line 295
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 294
    :cond_14
    const/4 v0, 0x7

    goto :goto_6

    .line 296
    :cond_15
    const-string v0, "int"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 297
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    .line 298
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 299
    :cond_16
    const-string v0, "integer"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 300
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    .line 301
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 302
    :cond_17
    const-string v0, "bigint"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 303
    if-eqz v1, :cond_18

    const/16 v0, 0x14

    :goto_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    .line 304
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 303
    :cond_18
    const/16 v0, 0x13

    goto :goto_7

    .line 305
    :cond_19
    const-string v0, "int24"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 306
    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    .line 307
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 308
    :cond_1a
    const-string v0, "real"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 309
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 310
    :cond_1b
    const-string v0, "float"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 311
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 312
    :cond_1c
    const-string v0, "decimal"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 313
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 314
    :cond_1d
    const-string v0, "numeric"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 315
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 316
    :cond_1e
    const-string v0, "double"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 317
    const/16 v0, 0x16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 318
    :cond_1f
    const-string v0, "char"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 319
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 320
    :cond_20
    const-string v0, "varchar"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 321
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 322
    :cond_21
    const-string v0, "timestamp"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 323
    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 324
    :cond_22
    const-string v0, "datetime"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 325
    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 326
    :cond_23
    const-string v0, "date"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 327
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 328
    :cond_24
    const-string v0, "time"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 329
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 331
    :cond_25
    const-string v0, "tinyblob"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 332
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 333
    :cond_26
    const-string v0, "blob"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 334
    const v0, 0xffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 335
    :cond_27
    const-string v0, "mediumblob"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 336
    const v0, 0xffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 337
    :cond_28
    const-string v0, "longblob"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 338
    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 339
    :cond_29
    const-string v0, "tinytext"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 340
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 341
    :cond_2a
    const-string v0, "text"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 342
    const v0, 0xffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 343
    :cond_2b
    const-string v0, "mediumtext"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 344
    const v0, 0xffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 345
    :cond_2c
    const-string v0, "longtext"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 346
    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 347
    :cond_2d
    const-string v0, "enum"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 348
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 349
    :cond_2e
    const-string v0, "set"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 350
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 367
    :cond_2f
    const-string v0, "UNKNOWN"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 368
    const/4 v0, 0x2

    iput v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->nullability:I

    .line 369
    const-string v0, ""

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->isNullable:Ljava/lang/String;

    goto/16 :goto_4

    .line 373
    :cond_30
    iput v3, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->nullability:I

    .line 374
    const-string v0, "NO"

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->isNullable:Ljava/lang/String;

    goto/16 :goto_4

    .line 377
    :cond_31
    iput v3, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->nullability:I

    .line 378
    const-string v0, "NO"

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->isNullable:Ljava/lang/String;

    goto/16 :goto_4

    :cond_32
    move v0, v3

    goto/16 :goto_5
.end method
