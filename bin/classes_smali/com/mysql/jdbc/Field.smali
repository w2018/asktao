.class public Lcom/mysql/jdbc/Field;
.super Ljava/lang/Object;
.source "Field.java"


# static fields
.field private static final AUTO_INCREMENT_FLAG:I = 0x200

.field private static final NO_CHARSET_INFO:I = -0x1


# instance fields
.field private buffer:[B

.field private colDecimals:I

.field private colFlag:S

.field private collationIndex:I

.field private collationName:Ljava/lang/String;

.field private connection:Lcom/mysql/jdbc/MySQLConnection;

.field private databaseName:Ljava/lang/String;

.field private databaseNameLength:I

.field private databaseNameStart:I

.field protected defaultValueLength:I

.field protected defaultValueStart:I

.field private encoding:Ljava/lang/String;

.field private fullName:Ljava/lang/String;

.field private fullOriginalName:Ljava/lang/String;

.field private isImplicitTempTable:Z

.field private isSingleBit:Z

.field private length:J

.field private maxBytesPerChar:I

.field private mysqlType:I

.field private name:Ljava/lang/String;

.field private nameLength:I

.field private nameStart:I

.field private originalColumnName:Ljava/lang/String;

.field private originalColumnNameLength:I

.field private originalColumnNameStart:I

.field private originalTableName:Ljava/lang/String;

.field private originalTableNameLength:I

.field private originalTableNameStart:I

.field private precisionAdjustFactor:I

.field private sqlType:I

.field private tableName:Ljava/lang/String;

.field private tableNameLength:I

.field private tableNameStart:I

.field private useOldNameMetadata:Z

.field private final valueNeedsQuoting:Z


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/MySQLConnection;[BIIIIIIIIIIJISIIII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v2, 0x0

    iput v2, p0, Lcom/mysql/jdbc/Field;->collationIndex:I

    .line 44
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mysql/jdbc/Field;->encoding:Ljava/lang/String;

    .line 50
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mysql/jdbc/Field;->collationName:Ljava/lang/String;

    .line 52
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 54
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mysql/jdbc/Field;->databaseName:Ljava/lang/String;

    .line 56
    const/4 v2, -0x1

    iput v2, p0, Lcom/mysql/jdbc/Field;->databaseNameLength:I

    .line 59
    const/4 v2, -0x1

    iput v2, p0, Lcom/mysql/jdbc/Field;->databaseNameStart:I

    .line 61
    const/4 v2, -0x1

    iput v2, p0, Lcom/mysql/jdbc/Field;->defaultValueLength:I

    .line 64
    const/4 v2, -0x1

    iput v2, p0, Lcom/mysql/jdbc/Field;->defaultValueStart:I

    .line 66
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mysql/jdbc/Field;->fullName:Ljava/lang/String;

    .line 68
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mysql/jdbc/Field;->fullOriginalName:Ljava/lang/String;

    .line 70
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mysql/jdbc/Field;->isImplicitTempTable:Z

    .line 74
    const/4 v2, -0x1

    iput v2, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    .line 82
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mysql/jdbc/Field;->originalColumnName:Ljava/lang/String;

    .line 84
    const/4 v2, -0x1

    iput v2, p0, Lcom/mysql/jdbc/Field;->originalColumnNameLength:I

    .line 87
    const/4 v2, -0x1

    iput v2, p0, Lcom/mysql/jdbc/Field;->originalColumnNameStart:I

    .line 89
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mysql/jdbc/Field;->originalTableName:Ljava/lang/String;

    .line 91
    const/4 v2, -0x1

    iput v2, p0, Lcom/mysql/jdbc/Field;->originalTableNameLength:I

    .line 94
    const/4 v2, -0x1

    iput v2, p0, Lcom/mysql/jdbc/Field;->originalTableNameStart:I

    .line 96
    const/4 v2, 0x0

    iput v2, p0, Lcom/mysql/jdbc/Field;->precisionAdjustFactor:I

    .line 98
    const/4 v2, -0x1

    iput v2, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 106
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mysql/jdbc/Field;->useOldNameMetadata:Z

    .line 120
    iput-object p1, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 121
    iput-object p2, p0, Lcom/mysql/jdbc/Field;->buffer:[B

    .line 122
    move/from16 v0, p9

    iput v0, p0, Lcom/mysql/jdbc/Field;->nameStart:I

    .line 123
    move/from16 v0, p10

    iput v0, p0, Lcom/mysql/jdbc/Field;->nameLength:I

    .line 124
    iput p5, p0, Lcom/mysql/jdbc/Field;->tableNameStart:I

    .line 125
    iput p6, p0, Lcom/mysql/jdbc/Field;->tableNameLength:I

    .line 126
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/mysql/jdbc/Field;->length:J

    .line 127
    move/from16 v0, p16

    iput-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    .line 128
    move/from16 v0, p17

    iput v0, p0, Lcom/mysql/jdbc/Field;->colDecimals:I

    .line 129
    move/from16 v0, p15

    iput v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    .line 132
    iput p3, p0, Lcom/mysql/jdbc/Field;->databaseNameStart:I

    .line 133
    iput p4, p0, Lcom/mysql/jdbc/Field;->databaseNameLength:I

    .line 135
    iput p7, p0, Lcom/mysql/jdbc/Field;->originalTableNameStart:I

    .line 136
    move/from16 v0, p8

    iput v0, p0, Lcom/mysql/jdbc/Field;->originalTableNameLength:I

    .line 138
    move/from16 v0, p11

    iput v0, p0, Lcom/mysql/jdbc/Field;->originalColumnNameStart:I

    .line 139
    move/from16 v0, p12

    iput v0, p0, Lcom/mysql/jdbc/Field;->originalColumnNameLength:I

    .line 141
    move/from16 v0, p18

    iput v0, p0, Lcom/mysql/jdbc/Field;->defaultValueStart:I

    .line 142
    move/from16 v0, p19

    iput v0, p0, Lcom/mysql/jdbc/Field;->defaultValueLength:I

    .line 145
    move/from16 v0, p20

    iput v0, p0, Lcom/mysql/jdbc/Field;->collationIndex:I

    .line 148
    iget v2, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    iput v2, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 150
    invoke-direct {p0}, Lcom/mysql/jdbc/Field;->checkForImplicitTemporaryTable()V

    .line 152
    iget v2, p0, Lcom/mysql/jdbc/Field;->originalTableNameLength:I

    if-nez v2, :cond_9

    const/4 v2, 0x1

    .line 154
    :goto_0
    iget v3, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    const/16 v4, 0xfc

    if-ne v3, v4, :cond_1

    .line 155
    iget-object v3, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getBlobsAreStrings()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getFunctionsNeverReturnBlobs()Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    .line 156
    :cond_0
    const/16 v3, 0xc

    iput v3, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 157
    const/16 v3, 0xf

    iput v3, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    .line 172
    :cond_1
    :goto_1
    iget v3, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    const/4 v4, -0x6

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Lcom/mysql/jdbc/Field;->length:J

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getTinyInt1isBit()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 174
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getTinyInt1isBit()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getTransformedBitIsBoolean()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 176
    const/16 v3, 0x10

    iput v3, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 184
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/mysql/jdbc/Field;->isNativeNumericType()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-direct {p0}, Lcom/mysql/jdbc/Field;->isNativeDateTimeType()Z

    move-result v3

    if-nez v3, :cond_12

    .line 185
    iget-object v3, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget v4, p0, Lcom/mysql/jdbc/Field;->collationIndex:I

    invoke-interface {v3, v4}, Lcom/mysql/jdbc/MySQLConnection;->getEncodingForIndex(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mysql/jdbc/Field;->encoding:Ljava/lang/String;

    .line 189
    const-string v3, "UnicodeBig"

    iget-object v4, p0, Lcom/mysql/jdbc/Field;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 190
    const-string v3, "UTF-16"

    iput-object v3, p0, Lcom/mysql/jdbc/Field;->encoding:Ljava/lang/String;

    .line 194
    :cond_3
    iget v3, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    const/16 v4, 0xf5

    if-ne v3, v4, :cond_4

    .line 195
    const-string v3, "UTF-8"

    iput-object v3, p0, Lcom/mysql/jdbc/Field;->encoding:Ljava/lang/String;

    .line 200
    :cond_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result v3

    .line 202
    iget-object v4, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    const/16 v5, 0xfd

    if-ne v4, v5, :cond_5

    if-eqz v3, :cond_5

    iget v4, p0, Lcom/mysql/jdbc/Field;->collationIndex:I

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_5

    .line 204
    iget-object v4, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getFunctionsNeverReturnBlobs()Z

    move-result v4

    if-eqz v4, :cond_f

    if-eqz v2, :cond_f

    .line 205
    const/16 v2, 0xc

    iput v2, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 206
    const/16 v2, 0xf

    iput v2, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    .line 212
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v6}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    const/16 v4, 0xfe

    if-ne v2, v4, :cond_6

    if-eqz v3, :cond_6

    iget v2, p0, Lcom/mysql/jdbc/Field;->collationIndex:I

    const/16 v4, 0x3f

    if-ne v2, v4, :cond_6

    .line 219
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->isOpaqueBinary()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getBlobsAreStrings()Z

    move-result v2

    if-nez v2, :cond_6

    .line 220
    const/4 v2, -0x2

    iput v2, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 224
    :cond_6
    iget v2, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    const/16 v4, 0x10

    if-ne v2, v4, :cond_14

    .line 225
    iget-wide v4, p0, Lcom/mysql/jdbc/Field;->length:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_7

    iget-wide v4, p0, Lcom/mysql/jdbc/Field;->length:J

    const-wide/16 v6, 0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/16 v6, 0x15

    invoke-interface {v2, v4, v5, v6}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/16 v6, 0xa

    invoke-interface {v2, v4, v5, v6}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_7
    const/4 v2, 0x1

    :goto_4
    iput-boolean v2, p0, Lcom/mysql/jdbc/Field;->isSingleBit:Z

    .line 228
    iget-boolean v2, p0, Lcom/mysql/jdbc/Field;->isSingleBit:Z

    if-nez v2, :cond_14

    .line 229
    iget-short v2, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    or-int/lit16 v2, v2, 0x80

    int-to-short v2, v2

    iput-short v2, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    .line 230
    iget-short v2, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    or-int/lit8 v2, v2, 0x10

    int-to-short v2, v2

    iput-short v2, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    .line 231
    const/4 v2, 0x1

    .line 238
    :goto_5
    iget v3, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    const/4 v4, -0x4

    if-ne v3, v4, :cond_11

    if-nez v2, :cond_11

    .line 239
    const/4 v2, -0x1

    iput v2, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 250
    :cond_8
    :goto_6
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v2

    if-nez v2, :cond_13

    .line 251
    iget v2, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    sparse-switch v2, :sswitch_data_0

    .line 272
    :goto_7
    invoke-direct {p0}, Lcom/mysql/jdbc/Field;->determineNeedsQuoting()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/Field;->valueNeedsQuoting:Z

    .line 273
    return-void

    .line 152
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 158
    :cond_a
    iget v3, p0, Lcom/mysql/jdbc/Field;->collationIndex:I

    const/16 v4, 0x3f

    if-eq v3, v4, :cond_b

    iget-object v3, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v3

    if-nez v3, :cond_d

    .line 159
    :cond_b
    iget-object v3, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getUseBlobToStoreUTF8OutsideBMP()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-direct {p0}, Lcom/mysql/jdbc/Field;->shouldSetupForUtf8StringInBlob()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 160
    invoke-direct {p0}, Lcom/mysql/jdbc/Field;->setupForUtf8StringInBlob()V

    goto/16 :goto_1

    .line 162
    :cond_c
    invoke-direct {p0}, Lcom/mysql/jdbc/Field;->setBlobTypeBasedOnLength()V

    .line 163
    iget v3, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    invoke-static {v3}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v3

    iput v3, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    goto/16 :goto_1

    .line 167
    :cond_d
    const/16 v3, 0xfd

    iput v3, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    .line 168
    const/4 v3, -0x1

    iput v3, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    goto/16 :goto_1

    .line 178
    :cond_e
    const/4 v3, -0x7

    iput v3, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    goto/16 :goto_2

    .line 207
    :cond_f
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->isOpaqueBinary()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 208
    const/4 v2, -0x3

    iput v2, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    goto/16 :goto_3

    .line 225
    :cond_10
    const/4 v2, 0x0

    goto :goto_4

    .line 240
    :cond_11
    iget v3, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_8

    if-nez v2, :cond_8

    .line 241
    const/16 v2, 0xc

    iput v2, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    goto :goto_6

    .line 244
    :cond_12
    const-string v2, "US-ASCII"

    iput-object v2, p0, Lcom/mysql/jdbc/Field;->encoding:Ljava/lang/String;

    goto :goto_6

    .line 254
    :sswitch_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/mysql/jdbc/Field;->precisionAdjustFactor:I

    goto :goto_7

    .line 259
    :sswitch_1
    const/4 v2, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Field;->precisionAdjustFactor:I

    goto :goto_7

    .line 264
    :cond_13
    iget v2, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    packed-switch v2, :pswitch_data_0

    goto :goto_7

    .line 267
    :pswitch_0
    const/4 v2, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Field;->precisionAdjustFactor:I

    goto :goto_7

    :cond_14
    move v2, v3

    goto/16 :goto_5

    .line 251
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0xf6 -> :sswitch_0
    .end sparse-switch

    .line 264
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method constructor <init>(Lcom/mysql/jdbc/MySQLConnection;[BIIIIIISI)V
    .locals 22
    .parameter
    .parameter
    .parameter
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
    .line 333
    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    move/from16 v0, p7

    int-to-long v14, v0

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v16, p8

    move/from16 v17, p9

    move/from16 v18, p10

    invoke-direct/range {v1 .. v21}, Lcom/mysql/jdbc/Field;-><init>(Lcom/mysql/jdbc/MySQLConnection;[BIIIIIIIIIIJISIIII)V

    .line 335
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v2, p0, Lcom/mysql/jdbc/Field;->collationIndex:I

    .line 44
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->encoding:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->collationName:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 54
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->databaseName:Ljava/lang/String;

    .line 56
    iput v0, p0, Lcom/mysql/jdbc/Field;->databaseNameLength:I

    .line 59
    iput v0, p0, Lcom/mysql/jdbc/Field;->databaseNameStart:I

    .line 61
    iput v0, p0, Lcom/mysql/jdbc/Field;->defaultValueLength:I

    .line 64
    iput v0, p0, Lcom/mysql/jdbc/Field;->defaultValueStart:I

    .line 66
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->fullName:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->fullOriginalName:Ljava/lang/String;

    .line 70
    iput-boolean v2, p0, Lcom/mysql/jdbc/Field;->isImplicitTempTable:Z

    .line 74
    iput v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    .line 82
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->originalColumnName:Ljava/lang/String;

    .line 84
    iput v0, p0, Lcom/mysql/jdbc/Field;->originalColumnNameLength:I

    .line 87
    iput v0, p0, Lcom/mysql/jdbc/Field;->originalColumnNameStart:I

    .line 89
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->originalTableName:Ljava/lang/String;

    .line 91
    iput v0, p0, Lcom/mysql/jdbc/Field;->originalTableNameLength:I

    .line 94
    iput v0, p0, Lcom/mysql/jdbc/Field;->originalTableNameStart:I

    .line 96
    iput v2, p0, Lcom/mysql/jdbc/Field;->precisionAdjustFactor:I

    .line 98
    iput v0, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 106
    iput-boolean v2, p0, Lcom/mysql/jdbc/Field;->useOldNameMetadata:Z

    .line 341
    iput-object p1, p0, Lcom/mysql/jdbc/Field;->tableName:Ljava/lang/String;

    .line 342
    iput-object p2, p0, Lcom/mysql/jdbc/Field;->name:Ljava/lang/String;

    .line 343
    int-to-long v0, p4

    iput-wide v0, p0, Lcom/mysql/jdbc/Field;->length:J

    .line 344
    iput p3, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 345
    iput-short v2, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    .line 346
    iput v2, p0, Lcom/mysql/jdbc/Field;->colDecimals:I

    .line 347
    invoke-direct {p0}, Lcom/mysql/jdbc/Field;->determineNeedsQuoting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/Field;->valueNeedsQuoting:Z

    .line 348
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v2, p0, Lcom/mysql/jdbc/Field;->collationIndex:I

    .line 44
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->encoding:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->collationName:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 54
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->databaseName:Ljava/lang/String;

    .line 56
    iput v0, p0, Lcom/mysql/jdbc/Field;->databaseNameLength:I

    .line 59
    iput v0, p0, Lcom/mysql/jdbc/Field;->databaseNameStart:I

    .line 61
    iput v0, p0, Lcom/mysql/jdbc/Field;->defaultValueLength:I

    .line 64
    iput v0, p0, Lcom/mysql/jdbc/Field;->defaultValueStart:I

    .line 66
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->fullName:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->fullOriginalName:Ljava/lang/String;

    .line 70
    iput-boolean v2, p0, Lcom/mysql/jdbc/Field;->isImplicitTempTable:Z

    .line 74
    iput v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    .line 82
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->originalColumnName:Ljava/lang/String;

    .line 84
    iput v0, p0, Lcom/mysql/jdbc/Field;->originalColumnNameLength:I

    .line 87
    iput v0, p0, Lcom/mysql/jdbc/Field;->originalColumnNameStart:I

    .line 89
    iput-object v1, p0, Lcom/mysql/jdbc/Field;->originalTableName:Ljava/lang/String;

    .line 91
    iput v0, p0, Lcom/mysql/jdbc/Field;->originalTableNameLength:I

    .line 94
    iput v0, p0, Lcom/mysql/jdbc/Field;->originalTableNameStart:I

    .line 96
    iput v2, p0, Lcom/mysql/jdbc/Field;->precisionAdjustFactor:I

    .line 98
    iput v0, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 106
    iput-boolean v2, p0, Lcom/mysql/jdbc/Field;->useOldNameMetadata:Z

    .line 367
    iput-object p1, p0, Lcom/mysql/jdbc/Field;->tableName:Ljava/lang/String;

    .line 368
    iput-object p2, p0, Lcom/mysql/jdbc/Field;->name:Ljava/lang/String;

    .line 369
    int-to-long v0, p5

    iput-wide v0, p0, Lcom/mysql/jdbc/Field;->length:J

    .line 370
    iput p4, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 371
    iput-short v2, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    .line 372
    iput v2, p0, Lcom/mysql/jdbc/Field;->colDecimals:I

    .line 373
    iput p3, p0, Lcom/mysql/jdbc/Field;->collationIndex:I

    .line 374
    invoke-direct {p0}, Lcom/mysql/jdbc/Field;->determineNeedsQuoting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/Field;->valueNeedsQuoting:Z

    .line 376
    iget v0, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    packed-switch v0, :pswitch_data_0

    .line 383
    :goto_0
    return-void

    .line 379
    :pswitch_0
    iget-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    or-int/lit16 v0, v0, 0x80

    int-to-short v0, v0

    iput-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    .line 380
    iget-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    or-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    iput-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    goto :goto_0

    .line 376
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkForImplicitTemporaryTable()V
    .locals 2

    .prologue
    .line 386
    iget v0, p0, Lcom/mysql/jdbc/Field;->tableNameLength:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/Field;->buffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Field;->tableNameStart:I

    aget-byte v0, v0, v1

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/Field;->buffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Field;->tableNameStart:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    const/16 v1, 0x73

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/Field;->buffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Field;->tableNameStart:I

    add-int/lit8 v1, v1, 0x2

    aget-byte v0, v0, v1

    const/16 v1, 0x71

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/Field;->buffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Field;->tableNameStart:I

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/Field;->buffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Field;->tableNameStart:I

    add-int/lit8 v1, v1, 0x4

    aget-byte v0, v0, v1

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mysql/jdbc/Field;->isImplicitTempTable:Z

    .line 389
    return-void

    .line 386
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private determineNeedsQuoting()Z
    .locals 1

    .prologue
    .line 892
    iget v0, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    packed-switch v0, :pswitch_data_0

    .line 906
    :pswitch_0
    const/4 v0, 0x1

    .line 908
    :goto_0
    return v0

    .line 903
    :pswitch_1
    const/4 v0, 0x0

    .line 904
    goto :goto_0

    .line 892
    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getStringFromBytes(II)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 607
    if-eq p1, v1, :cond_0

    if-ne p2, v1, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-object v0

    .line 611
    :cond_1
    if-nez p2, :cond_2

    .line 612
    const-string v0, ""

    goto :goto_0

    .line 617
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v1, :cond_8

    .line 618
    iget-object v1, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 619
    iget-object v1, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getCharacterSetMetadata()Ljava/lang/String;

    move-result-object v1

    .line 621
    if-nez v1, :cond_3

    .line 622
    iget-object v1, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 625
    :cond_3
    if-eqz v1, :cond_6

    .line 628
    iget-object v2, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v2, :cond_4

    .line 629
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v0

    .line 632
    :cond_4
    if-eqz v0, :cond_5

    .line 633
    iget-object v1, p0, Lcom/mysql/jdbc/Field;->buffer:[B

    invoke-virtual {v0, v1, p1, p2}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toString([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 637
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->buffer:[B

    invoke-static {v0, p1, p2, v1}, Lcom/mysql/jdbc/StringUtils;->toString([BIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 638
    :catch_0
    move-exception v0

    .line 639
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field.12"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Field.13"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_6
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->buffer:[B

    invoke-static {v0, p1, p2}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 648
    :cond_7
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->buffer:[B

    invoke-static {v0, p1, p2}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 652
    :cond_8
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->buffer:[B

    invoke-static {v0, p1, p2}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isImplicitTemporaryTable()Z
    .locals 1

    .prologue
    .line 694
    iget-boolean v0, p0, Lcom/mysql/jdbc/Field;->isImplicitTempTable:Z

    return v0
.end method

.method private isNativeDateTimeType()Z
    .locals 2

    .prologue
    .line 786
    iget v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNativeNumericType()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 781
    iget v1, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    if-lt v1, v0, :cond_0

    iget v1, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setBlobTypeBasedOnLength()V
    .locals 4

    .prologue
    .line 769
    iget-wide v0, p0, Lcom/mysql/jdbc/Field;->length:J

    const-wide/16 v2, 0xff

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 770
    const/16 v0, 0xf9

    iput v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 771
    :cond_1
    iget-wide v0, p0, Lcom/mysql/jdbc/Field;->length:J

    const-wide/32 v2, 0xffff

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 772
    const/16 v0, 0xfc

    iput v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    goto :goto_0

    .line 773
    :cond_2
    iget-wide v0, p0, Lcom/mysql/jdbc/Field;->length:J

    const-wide/32 v2, 0xffffff

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 774
    const/16 v0, 0xfa

    iput v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    goto :goto_0

    .line 775
    :cond_3
    iget-wide v0, p0, Lcom/mysql/jdbc/Field;->length:J

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 776
    const/16 v0, 0xfb

    iput v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    goto :goto_0
.end method

.method private setupForUtf8StringInBlob()V
    .locals 4

    .prologue
    .line 317
    iget-wide v0, p0, Lcom/mysql/jdbc/Field;->length:J

    const-wide/16 v2, 0xff

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/mysql/jdbc/Field;->length:J

    const-wide/32 v2, 0xffff

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 318
    :cond_0
    const/16 v0, 0xf

    iput v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    .line 319
    const/16 v0, 0xc

    iput v0, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 325
    :goto_0
    const/16 v0, 0x21

    iput v0, p0, Lcom/mysql/jdbc/Field;->collationIndex:I

    .line 326
    return-void

    .line 321
    :cond_1
    const/16 v0, 0xfd

    iput v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    .line 322
    const/4 v0, -0x1

    iput v0, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    goto :goto_0
.end method

.method private shouldSetupForUtf8StringInBlob()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 276
    iget-object v1, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUtf8OutsideBmpIncludedColumnNamePattern()Ljava/lang/String;

    move-result-object v1

    .line 277
    iget-object v2, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUtf8OutsideBmpExcludedColumnNamePattern()Ljava/lang/String;

    move-result-object v2

    .line 279
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/mysql/jdbc/StringUtils;->isEmptyOrWhitespaceOnly(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 281
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->isEmptyOrWhitespaceOnly(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_3

    .line 284
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_3

    .line 313
    :cond_0
    :goto_0
    return v0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    :try_start_2
    const-string v1, "Illegal regex specified for \"utf8OutsideBmpIncludedColumnNamePattern\""

    const-string v2, "S1009"

    iget-object v3, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 291
    iget-object v2, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getParanoid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 292
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 295
    :cond_1
    throw v1
    :try_end_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    .line 301
    :catch_1
    move-exception v0

    .line 302
    const-string v1, "Illegal regex specified for \"utf8OutsideBmpExcludedColumnNamePattern\""

    const-string v2, "S1009"

    iget-object v3, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 305
    iget-object v2, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getParanoid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 306
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 309
    :cond_2
    throw v1

    .line 299
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getCollation()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 412
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->collationName:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 413
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_4

    .line 414
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 415
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseDynamicCharsetInfo()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 416
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v0

    .line 418
    invoke-interface {v0}, Ljava/sql/DatabaseMetaData;->getIdentifierQuoteString()Ljava/lang/String;

    move-result-object v0

    .line 420
    const-string v2, " "

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    const-string v0, ""

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    .line 425
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v3

    .line 426
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v4

    .line 428
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    .line 430
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1c

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 431
    const-string v6, "SHOW FULL COLUMNS FROM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string v2, "."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 444
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->createStatement()Ljava/sql/Statement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 446
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    .line 448
    :cond_1
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 449
    const-string v0, "Field"

    invoke-interface {v1, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    const-string v0, "Collation"

    invoke-interface {v1, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/Field;->collationName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 456
    :cond_2
    if-eqz v1, :cond_3

    .line 457
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 461
    :cond_3
    if-eqz v2, :cond_4

    .line 462
    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    .line 480
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->collationName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v0

    .line 456
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_1
    if-eqz v1, :cond_5

    .line 457
    :try_start_4
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 461
    :cond_5
    if-eqz v2, :cond_6

    .line 462
    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    .line 456
    :cond_6
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 412
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 469
    :cond_7
    :try_start_5
    sget-object v0, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_COLLATION_NAME:[Ljava/lang/String;

    iget v1, p0, Lcom/mysql/jdbc/Field;->collationIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/mysql/jdbc/Field;->collationName:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 472
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 473
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 456
    :catchall_2
    move-exception v0

    goto :goto_1
.end method

.method public getColumnLabel()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 488
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->databaseName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/Field;->databaseNameStart:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/Field;->databaseNameLength:I

    if-eq v0, v1, :cond_0

    .line 489
    iget v0, p0, Lcom/mysql/jdbc/Field;->databaseNameStart:I

    iget v1, p0, Lcom/mysql/jdbc/Field;->databaseNameLength:I

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/Field;->getStringFromBytes(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/Field;->databaseName:Ljava/lang/String;

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->databaseName:Ljava/lang/String;

    return-object v0
.end method

.method getDecimals()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/mysql/jdbc/Field;->colDecimals:I

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 500
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->fullName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 502
    iget-object v1, p0, Lcom/mysql/jdbc/Field;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 506
    iget-object v1, p0, Lcom/mysql/jdbc/Field;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/Field;->fullName:Ljava/lang/String;

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getFullOriginalName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    .line 517
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->originalColumnName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 518
    const/4 v0, 0x0

    .line 532
    :goto_0
    return-object v0

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->fullName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 523
    iget-object v1, p0, Lcom/mysql/jdbc/Field;->originalTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 527
    iget-object v1, p0, Lcom/mysql/jdbc/Field;->originalColumnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/Field;->fullOriginalName:Ljava/lang/String;

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->fullOriginalName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 536
    iget-wide v0, p0, Lcom/mysql/jdbc/Field;->length:J

    return-wide v0
.end method

.method public declared-synchronized getMaxBytesPerCharacter()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 540
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/Field;->maxBytesPerChar:I

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget v1, p0, Lcom/mysql/jdbc/Field;->collationIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->getMaxBytesPerChar(Ljava/lang/Integer;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/Field;->maxBytesPerChar:I

    .line 543
    :cond_0
    iget v0, p0, Lcom/mysql/jdbc/Field;->maxBytesPerChar:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMysqlType()I
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 551
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 552
    iget v0, p0, Lcom/mysql/jdbc/Field;->nameStart:I

    iget v1, p0, Lcom/mysql/jdbc/Field;->nameLength:I

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/Field;->getStringFromBytes(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/Field;->name:Ljava/lang/String;

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameNoAliases()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/mysql/jdbc/Field;->useOldNameMetadata:Z

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 567
    :goto_0
    return-object v0

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 567
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOriginalName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 571
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->originalColumnName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/Field;->originalColumnNameStart:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/Field;->originalColumnNameLength:I

    if-eq v0, v1, :cond_0

    .line 572
    iget v0, p0, Lcom/mysql/jdbc/Field;->originalColumnNameStart:I

    iget v1, p0, Lcom/mysql/jdbc/Field;->originalColumnNameLength:I

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/Field;->getStringFromBytes(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/Field;->originalColumnName:Ljava/lang/String;

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->originalColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalTableName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 579
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->originalTableName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/Field;->originalTableNameStart:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/Field;->originalTableNameLength:I

    if-eq v0, v1, :cond_0

    .line 580
    iget v0, p0, Lcom/mysql/jdbc/Field;->originalTableNameStart:I

    iget v1, p0, Lcom/mysql/jdbc/Field;->originalTableNameLength:I

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/Field;->getStringFromBytes(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/Field;->originalTableName:Ljava/lang/String;

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->originalTableName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecisionAdjustFactor()I
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Lcom/mysql/jdbc/Field;->precisionAdjustFactor:I

    return v0
.end method

.method public getSQLType()I
    .locals 1

    .prologue
    .line 599
    iget v0, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    return v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 663
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->tableName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 664
    iget v0, p0, Lcom/mysql/jdbc/Field;->tableNameStart:I

    iget v1, p0, Lcom/mysql/jdbc/Field;->tableNameLength:I

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/Field;->getStringFromBytes(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/Field;->tableName:Ljava/lang/String;

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getTableNameNoAliases()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 671
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v0

    .line 675
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getvalueNeedsQuoting()Z
    .locals 1

    .prologue
    .line 886
    iget-boolean v0, p0, Lcom/mysql/jdbc/Field;->valueNeedsQuoting:Z

    return v0
.end method

.method public isAutoIncrement()Z
    .locals 1

    .prologue
    .line 679
    iget-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    and-int/lit16 v0, v0, 0x200

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBinary()Z
    .locals 1

    .prologue
    .line 683
    iget-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    and-int/lit16 v0, v0, 0x80

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlob()Z
    .locals 1

    .prologue
    .line 687
    iget-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultipleKey()Z
    .locals 1

    .prologue
    .line 698
    iget-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNotNull()Z
    .locals 1

    .prologue
    .line 702
    iget-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isOpaqueBinary()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 711
    iget v2, p0, Lcom/mysql/jdbc/Field;->collationIndex:I

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    const/16 v3, 0xfe

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    const/16 v3, 0xfd

    if-ne v2, v3, :cond_3

    .line 714
    :cond_0
    iget v2, p0, Lcom/mysql/jdbc/Field;->originalTableNameLength:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v3, 0x5

    const/16 v4, 0x19

    invoke-interface {v2, v3, v1, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 723
    :cond_1
    :goto_0
    return v0

    .line 720
    :cond_2
    invoke-direct {p0}, Lcom/mysql/jdbc/Field;->isImplicitTemporaryTable()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 723
    :cond_3
    iget-object v2, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v3, 0x4

    invoke-interface {v2, v3, v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "binary"

    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public isPrimaryKey()Z
    .locals 1

    .prologue
    .line 728
    iget-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isReadOnly()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 738
    iget-object v2, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v3, 0x4

    invoke-interface {v2, v3, v1, v0}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 739
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v2

    .line 740
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v3

    .line 742
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    move v0, v1

    .line 745
    :cond_1
    return v0
.end method

.method protected isSingleBit()Z
    .locals 1

    .prologue
    .line 882
    iget-boolean v0, p0, Lcom/mysql/jdbc/Field;->isSingleBit:Z

    return v0
.end method

.method public isUniqueKey()Z
    .locals 1

    .prologue
    .line 749
    iget-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnsigned()Z
    .locals 1

    .prologue
    .line 753
    iget-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZeroFill()Z
    .locals 1

    .prologue
    .line 761
    iget-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    and-int/lit8 v0, v0, 0x40

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setConnection(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 1
    .parameter

    .prologue
    .line 791
    iput-object p1, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 793
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/Field;->collationIndex:I

    if-nez v0, :cond_1

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/Field;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/Field;->encoding:Ljava/lang/String;

    .line 796
    :cond_1
    return-void
.end method

.method public setEncoding(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 401
    iput-object p1, p0, Lcom/mysql/jdbc/Field;->encoding:Ljava/lang/String;

    .line 403
    :try_start_0
    invoke-static {p1, p2}, Lcom/mysql/jdbc/CharsetMapping;->getCollationIndexForJavaEncoding(Ljava/lang/String;Ljava/sql/Connection;)I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/Field;->collationIndex:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 406
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 407
    throw v1
.end method

.method setMysqlType(I)V
    .locals 1
    .parameter

    .prologue
    .line 799
    iput p1, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    .line 800
    iget v0, p0, Lcom/mysql/jdbc/Field;->mysqlType:I

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/Field;->sqlType:I

    .line 801
    return-void
.end method

.method public setUnsigned()V
    .locals 1

    .prologue
    .line 757
    iget-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    iput-short v0, p0, Lcom/mysql/jdbc/Field;->colFlag:S

    .line 758
    return-void
.end method

.method protected setUseOldNameMetadata(Z)V
    .locals 0
    .parameter

    .prologue
    .line 804
    iput-boolean p1, p0, Lcom/mysql/jdbc/Field;->useOldNameMetadata:Z

    .line 805
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 810
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 811
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    const-string v1, "catalog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    const-string v1, ",tableName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    const-string v1, ",originalTableName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    const-string v1, ",columnName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    const-string v1, ",originalColumnName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    const-string v1, ",mysqlType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 825
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    invoke-static {v1}, Lcom/mysql/jdbc/MysqlDefs;->typeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    const-string v1, ",flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->isAutoIncrement()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 831
    const-string v1, " AUTO_INCREMENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->isPrimaryKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 835
    const-string v1, " PRIMARY_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->isUniqueKey()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 839
    const-string v1, " UNIQUE_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 843
    const-string v1, " BINARY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->isBlob()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 847
    const-string v1, " BLOB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    :cond_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->isMultipleKey()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 851
    const-string v1, " MULTI_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    :cond_5
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 855
    const-string v1, " UNSIGNED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    :cond_6
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->isZeroFill()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 859
    const-string v1, " ZEROFILL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    :cond_7
    const-string v1, ", charsetIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    iget v1, p0, Lcom/mysql/jdbc/Field;->collationIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 864
    const-string v1, ", charsetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    iget-object v1, p0, Lcom/mysql/jdbc/Field;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 877
    :goto_0
    return-object v0

    .line 876
    :catch_0
    move-exception v0

    .line 877
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
