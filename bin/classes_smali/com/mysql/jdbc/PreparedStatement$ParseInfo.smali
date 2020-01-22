.class public final Lcom/mysql/jdbc/PreparedStatement$ParseInfo;
.super Ljava/lang/Object;
.source "PreparedStatement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/PreparedStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParseInfo"
.end annotation


# instance fields
.field private batchHead:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

.field private batchODKUClause:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

.field private batchValues:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

.field canRewriteAsMultiValueInsert:Z

.field charEncoding:Ljava/lang/String;

.field firstStmtChar:C

.field foundLoadData:Z

.field isOnDuplicateKeyUpdate:Z

.field lastUsed:J

.field locationOfOnDuplicateKeyUpdate:I

.field parametersInDuplicateKeyClause:Z

.field statementLength:I

.field statementStartPos:I

.field staticSql:[[B

.field valuesClause:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;)V
    .locals 7
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
    .line 174
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Z)V

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Z)V
    .locals 14
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
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v1, 0x0

    iput-char v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    .line 147
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    .line 149
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->lastUsed:J

    .line 151
    const/4 v1, 0x0

    iput v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    .line 153
    const/4 v1, 0x0

    iput v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementStartPos:I

    .line 155
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->canRewriteAsMultiValueInsert:Z

    .line 157
    const/4 v1, 0x0

    check-cast v1, [[B

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    .line 159
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    .line 161
    const/4 v1, -0x1

    iput v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    .line 165
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->parametersInDuplicateKeyClause:Z

    .line 180
    if-nez p1, :cond_0

    .line 181
    :try_start_0
    const-string v1, "PreparedStatement.61"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :catch_0
    move-exception v1

    .line 346
    new-instance v2, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parse error for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v2, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 349
    throw v2

    .line 185
    :cond_0
    :try_start_1
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->charEncoding:Ljava/lang/String;

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->lastUsed:J

    .line 188
    invoke-interface/range {p3 .. p3}, Ljava/sql/DatabaseMetaData;->getIdentifierQuoteString()Ljava/lang/String;

    move-result-object v2

    .line 190
    const/4 v1, 0x0

    .line 192
    if-eqz v2, :cond_23

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_23

    .line 193
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v9, v1

    .line 196
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    .line 198
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 199
    const/4 v7, 0x0

    .line 200
    const/4 v6, 0x0

    .line 201
    const/4 v5, 0x0

    .line 202
    const/4 v4, 0x0

    .line 205
    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v10

    .line 210
    invoke-static {p1}, Lcom/mysql/jdbc/StatementImpl;->findStartOfStatement(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementStartPos:I

    .line 212
    iget v3, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementStartPos:I

    :goto_1
    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    if-ge v3, v1, :cond_14

    .line 213
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 215
    iget-char v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    if-nez v1, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    iput-char v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    .line 220
    iget-char v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    const/16 v8, 0x49

    if-ne v1, v8, :cond_1

    .line 221
    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getDontCheckOnDuplicateKeyUpdateInSQL()Z

    move-result v1

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getRewriteBatchedStatements()Z

    move-result v8

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v12

    invoke-static {p1, v1, v8, v12}, Lcom/mysql/jdbc/StatementImpl;->getOnDuplicateKeyLocation(Ljava/lang/String;ZZZ)I

    move-result v1

    iput v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    .line 223
    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    const/4 v8, -0x1

    if-eq v1, v8, :cond_2

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    .line 227
    :cond_1
    if-nez v10, :cond_3

    const/16 v1, 0x5c

    if-ne v2, v1, :cond_3

    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_3

    .line 228
    add-int/lit8 v1, v3, 0x1

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    .line 212
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v6, v4

    move v7, v5

    move v5, v3

    move v4, v2

    move v3, v1

    goto :goto_1

    .line 223
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 233
    :cond_3
    if-nez v7, :cond_6

    if-eqz v9, :cond_6

    if-ne v2, v9, :cond_6

    .line 234
    if-nez v5, :cond_5

    const/4 v1, 0x1

    :goto_4
    move v5, v6

    move v6, v7

    move v13, v3

    move v3, v1

    move v1, v13

    .line 296
    :goto_5
    const/16 v7, 0x3f

    if-ne v2, v7, :cond_1e

    if-nez v6, :cond_1e

    if-nez v3, :cond_1e

    .line 297
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v7, 0x0

    aput v4, v2, v7

    const/4 v4, 0x1

    aput v1, v2, v4

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v2, v1, 0x1

    .line 300
    iget-boolean v4, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    if-le v1, v4, :cond_4

    .line 301
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->parametersInDuplicateKeyClause:Z

    :cond_4
    move v4, v5

    move v5, v6

    goto :goto_3

    .line 234
    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    .line 235
    :cond_6
    if-nez v5, :cond_1f

    .line 238
    if-eqz v7, :cond_d

    .line 239
    const/16 v1, 0x27

    if-eq v2, v1, :cond_7

    const/16 v1, 0x22

    if-ne v2, v1, :cond_a

    :cond_7
    if-ne v2, v6, :cond_a

    .line 240
    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_8

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_8

    .line 241
    add-int/lit8 v1, v3, 0x1

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    .line 242
    goto :goto_3

    .line 245
    :cond_8
    if-nez v7, :cond_9

    const/4 v1, 0x1

    .line 246
    :goto_6
    const/4 v6, 0x0

    move v13, v3

    move v3, v5

    move v5, v6

    move v6, v1

    move v1, v13

    goto :goto_5

    .line 245
    :cond_9
    const/4 v1, 0x0

    goto :goto_6

    .line 247
    :cond_a
    const/16 v1, 0x27

    if-eq v2, v1, :cond_b

    const/16 v1, 0x22

    if-ne v2, v1, :cond_1f

    :cond_b
    if-ne v2, v6, :cond_1f

    .line 248
    if-nez v7, :cond_c

    const/4 v1, 0x1

    .line 249
    :goto_7
    const/4 v6, 0x0

    move v13, v3

    move v3, v5

    move v5, v6

    move v6, v1

    move v1, v13

    goto :goto_5

    .line 248
    :cond_c
    const/4 v1, 0x0

    goto :goto_7

    .line 252
    :cond_d
    const/16 v1, 0x23

    if-eq v2, v1, :cond_e

    const/16 v1, 0x2d

    if-ne v2, v1, :cond_10

    add-int/lit8 v1, v3, 0x1

    iget v8, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    if-ge v1, v8, :cond_10

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v8, 0x2d

    if-ne v1, v8, :cond_10

    .line 254
    :cond_e
    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    add-int/lit8 v2, v1, -0x1

    move v1, v3

    .line 256
    :goto_8
    if-ge v1, v2, :cond_22

    .line 257
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 259
    const/16 v8, 0xd

    if-eq v3, v8, :cond_22

    const/16 v8, 0xa

    if-ne v3, v8, :cond_f

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    .line 260
    goto/16 :goto_3

    .line 256
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 265
    :cond_10
    const/16 v1, 0x2f

    if-ne v2, v1, :cond_12

    add-int/lit8 v1, v3, 0x1

    iget v8, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    if-ge v1, v8, :cond_12

    .line 267
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 269
    const/16 v8, 0x2a

    if-ne v1, v8, :cond_20

    .line 270
    add-int/lit8 v1, v3, 0x2

    move v3, v1

    .line 272
    :goto_9
    iget v8, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    if-ge v3, v8, :cond_21

    .line 273
    add-int/lit8 v8, v1, 0x1

    .line 274
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 276
    const/16 v12, 0x2a

    if-ne v1, v12, :cond_11

    add-int/lit8 v1, v3, 0x1

    iget v12, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    if-ge v1, v12, :cond_11

    .line 277
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v12, 0x2f

    if-ne v1, v12, :cond_11

    .line 278
    add-int/lit8 v3, v8, 0x1

    .line 280
    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    if-ge v3, v1, :cond_20

    .line 281
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v2, v3

    :goto_a
    move v3, v5

    move v5, v6

    move v6, v7

    move v13, v2

    move v2, v1

    move v1, v13

    .line 289
    goto/16 :goto_5

    .line 272
    :cond_11
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v8

    goto :goto_9

    .line 289
    :cond_12
    const/16 v1, 0x27

    if-eq v2, v1, :cond_13

    const/16 v1, 0x22

    if-ne v2, v1, :cond_1f

    .line 290
    :cond_13
    const/4 v7, 0x1

    move v1, v3

    move v6, v7

    move v3, v5

    move v5, v2

    .line 291
    goto/16 :goto_5

    .line 306
    :cond_14
    iget-char v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_16

    .line 307
    const-string v1, "LOAD DATA"

    invoke-static {p1, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 308
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    .line 316
    :goto_b
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v4, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    aput v3, v1, v2

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [[B

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    .line 319
    const/4 v1, 0x0

    move v10, v1

    :goto_c
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    array-length v1, v1

    if-ge v10, v1, :cond_1b

    .line 320
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 321
    const/4 v2, 0x1

    aget v2, v1, v2

    .line 322
    const/4 v3, 0x0

    aget v5, v1, v3

    .line 323
    sub-int v6, v2, v5

    .line 325
    iget-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    if-eqz v1, :cond_17

    .line 326
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    invoke-static {p1, v5, v6}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;II)[B

    move-result-object v2

    aput-object v2, v1, v10

    .line 319
    :goto_d
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_c

    .line 310
    :cond_15
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    goto :goto_b

    .line 313
    :cond_16
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    goto :goto_b

    .line 327
    :cond_17
    if-nez p4, :cond_19

    .line 328
    new-array v2, v6, [B

    .line 330
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v6, :cond_18

    .line 331
    add-int v3, v5, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 334
    :cond_18
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    aput-object v2, v1, v10

    goto :goto_d

    .line 336
    :cond_19
    if-eqz p5, :cond_1a

    .line 337
    iget-object v9, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v7

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v8

    move-object v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    invoke-static/range {v1 .. v8}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;IIZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v1

    aput-object v1, v9, v10

    goto :goto_d

    .line 340
    :cond_1a
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v7

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    move-object v2, p1

    move-object/from16 v3, p4

    move-object/from16 v8, p2

    invoke-static/range {v2 .. v9}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v2

    aput-object v2, v1, v10
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_d

    .line 352
    :cond_1b
    if-eqz p6, :cond_1c

    .line 353
    iget-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    iget v3, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementStartPos:I

    invoke-static {p1, v1, v2, v3}, Lcom/mysql/jdbc/PreparedStatement;->canRewrite(Ljava/lang/String;ZII)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->parametersInDuplicateKeyClause:Z

    if-nez v1, :cond_1d

    const/4 v1, 0x1

    :goto_f
    iput-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->canRewriteAsMultiValueInsert:Z

    .line 356
    iget-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->canRewriteAsMultiValueInsert:Z

    if-eqz v1, :cond_1c

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getRewriteBatchedStatements()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 357
    invoke-direct/range {p0 .. p5}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->buildRewriteBatchedParams(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;)V

    .line 360
    :cond_1c
    return-void

    .line 353
    :cond_1d
    const/4 v1, 0x0

    goto :goto_f

    :cond_1e
    move v2, v4

    move v4, v5

    move v5, v6

    goto/16 :goto_3

    :cond_1f
    move v1, v3

    move v3, v5

    move v5, v6

    move v6, v7

    goto/16 :goto_5

    :cond_20
    move v1, v2

    move v2, v3

    goto/16 :goto_a

    :cond_21
    move v13, v2

    move v2, v1

    move v1, v13

    goto/16 :goto_a

    :cond_22
    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    goto/16 :goto_3

    :cond_23
    move v9, v1

    goto/16 :goto_0
.end method

.method private constructor <init>([[BCZZIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-char v2, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    .line 147
    iput-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    .line 149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->lastUsed:J

    .line 151
    iput v2, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    .line 153
    iput v2, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementStartPos:I

    .line 155
    iput-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->canRewriteAsMultiValueInsert:Z

    .line 157
    const/4 v0, 0x0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    .line 159
    iput-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    .line 165
    iput-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->parametersInDuplicateKeyClause:Z

    .line 556
    iput-char p2, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    .line 557
    iput-boolean p3, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    .line 558
    iput-boolean p4, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    .line 559
    iput p5, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    .line 560
    iput p6, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    .line 561
    iput p7, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementStartPos:I

    .line 562
    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    .line 563
    return-void
.end method

.method private buildInfoForBatch(ILcom/mysql/jdbc/PreparedStatement$BatchVisitor;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 502
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchHead:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-object v2, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    .line 503
    array-length v3, v2

    .line 505
    if-le v3, v1, :cond_0

    move v0, v4

    .line 506
    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-ge v0, v5, :cond_0

    .line 507
    aget-object v5, v2, v0

    invoke-interface {p2, v5}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->append([B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v5

    invoke-interface {v5}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->increment()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    :cond_0
    add-int/lit8 v0, v3, -0x1

    aget-object v0, v2, v0

    .line 513
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchValues:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-object v5, v2, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    .line 514
    aget-object v6, v5, v4

    .line 516
    invoke-interface {p2, v0, v6}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->merge([B[B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->increment()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    .line 518
    add-int/lit8 v0, p1, -0x1

    .line 520
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchODKUClause:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    if-eqz v2, :cond_1

    .line 521
    add-int/lit8 v0, v0, -0x1

    .line 524
    :cond_1
    array-length v7, v5

    .line 525
    add-int/lit8 v2, v7, -0x1

    aget-object v8, v5, v2

    move v3, v4

    .line 527
    :goto_1
    if-ge v3, v0, :cond_3

    move v2, v1

    .line 528
    :goto_2
    add-int/lit8 v9, v7, -0x1

    if-ge v2, v9, :cond_2

    .line 529
    aget-object v9, v5, v2

    invoke-interface {p2, v9}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->append([B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v9

    invoke-interface {v9}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->increment()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    .line 528
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 531
    :cond_2
    invoke-interface {p2, v8, v6}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->merge([B[B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v2

    invoke-interface {v2}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->increment()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    .line 527
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 534
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchODKUClause:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    if-eqz v0, :cond_6

    .line 535
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchODKUClause:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-object v2, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    .line 536
    aget-object v0, v2, v4

    .line 537
    invoke-interface {p2}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->decrement()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v3

    invoke-interface {v3, v8, v0}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->merge([B[B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->increment()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    .line 539
    array-length v3, v2

    .line 541
    if-le p1, v1, :cond_4

    move v0, v1

    .line 542
    :goto_3
    if-ge v0, v3, :cond_5

    .line 543
    aget-object v1, v2, v0

    invoke-interface {p2, v1}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->append([B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->increment()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    .line 542
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 546
    :cond_4
    invoke-interface {p2}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->decrement()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v0

    add-int/lit8 v1, v3, -0x1

    aget-object v1, v2, v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->append([B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    .line 552
    :cond_5
    :goto_4
    return-void

    .line 550
    :cond_6
    invoke-interface {p2}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->decrement()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->append([B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    goto :goto_4
.end method

.method private buildRewriteBatchedParams(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;)V
    .locals 9
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
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 370
    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/DatabaseMetaData;->getIdentifierQuoteString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->extractValuesClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->valuesClause:Ljava/lang/String;

    .line 371
    iget-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 375
    :goto_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    if-eqz v0, :cond_2

    .line 376
    iget v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 381
    :goto_1
    new-instance v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Z)V

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchHead:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    .line 382
    new-instance v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->valuesClause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Z)V

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchValues:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    .line 383
    iput-object v8, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchODKUClause:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    .line 385
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 386
    new-instance v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->valuesClause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Z)V

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchODKUClause:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    .line 388
    :cond_0
    return-void

    :cond_1
    move-object v7, v8

    .line 371
    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 378
    goto :goto_1
.end method

.method private extractValuesClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x29

    const/16 v8, 0x28

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 392
    iget v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementStartPos:I

    move v1, v6

    .line 394
    :cond_0
    :goto_0
    if-ne v1, v6, :cond_3

    .line 395
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 396
    const-string v2, "VALUES"

    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v1

    .line 402
    :goto_1
    if-lez v1, :cond_3

    .line 404
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 405
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    if-eq v2, v9, :cond_2

    const/16 v3, 0x60

    if-eq v2, v3, :cond_2

    .line 406
    add-int/lit8 v0, v1, 0x6

    move v1, v6

    .line 407
    goto :goto_0

    .line 399
    :cond_1
    const-string v1, "VALUES"

    invoke-static {v0, p1, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 410
    :cond_2
    add-int/lit8 v2, v1, 0x6

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 411
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    if-eq v2, v8, :cond_0

    .line 412
    add-int/lit8 v0, v1, 0x6

    move v1, v6

    .line 413
    goto :goto_0

    .line 421
    :cond_3
    if-ne v1, v6, :cond_4

    move-object v0, v7

    .line 441
    :goto_2
    return-object v0

    .line 425
    :cond_4
    add-int/lit8 v0, v1, 0x6

    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 427
    if-ne v1, v6, :cond_5

    move-object v0, v7

    .line 428
    goto :goto_2

    .line 431
    :cond_5
    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 433
    if-ne v0, v6, :cond_6

    move-object v0, v7

    .line 434
    goto :goto_2

    .line 437
    :cond_6
    iget-boolean v2, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    if-eqz v2, :cond_7

    .line 438
    iget v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    add-int/lit8 v0, v0, -0x1

    .line 441
    :cond_7
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method declared-synchronized getParseInfoForBatch(I)Lcom/mysql/jdbc/PreparedStatement$ParseInfo;
    .locals 8
    .parameter

    .prologue
    .line 448
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;

    invoke-direct {v1}, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;-><init>()V

    .line 449
    invoke-direct {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->buildInfoForBatch(ILcom/mysql/jdbc/PreparedStatement$BatchVisitor;)V

    .line 451
    new-instance v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;->getStaticSqlStrings()[[B

    move-result-object v1

    iget-char v2, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    iget-boolean v3, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    iget-boolean v4, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    iget v5, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    iget v6, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    iget v7, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementStartPos:I

    invoke-direct/range {v0 .. v7}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;-><init>([[BCZZIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    monitor-exit p0

    return-object v0

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getSqlForBatch(I)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->getParseInfoForBatch(I)Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    move-result-object v0

    .line 465
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->getSqlForBatch(Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSqlForBatch(Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 473
    iget-object v3, p1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    .line 474
    array-length v4, v3

    move v1, v0

    move v2, v0

    .line 476
    :goto_0
    if-ge v1, v4, :cond_0

    .line 477
    aget-object v5, v3, v1

    array-length v5, v5

    add-int/2addr v2, v5

    .line 478
    add-int/lit8 v2, v2, 0x1

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 481
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 483
    :goto_1
    add-int/lit8 v2, v4, -0x1

    if-ge v0, v2, :cond_1

    .line 484
    aget-object v2, v3, v0

    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->charEncoding:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/mysql/jdbc/StringUtils;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 488
    :cond_1
    add-int/lit8 v0, v4, -0x1

    aget-object v0, v3, v0

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
