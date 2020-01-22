.class public Lorg/json/JSONTokener;
.super Ljava/lang/Object;
.source "JSONTokener.java"


# instance fields
.field private character:J

.field private characterPreviousLine:J

.field private eof:Z

.field private index:J

.field private line:J

.field private previous:C

.field private final reader:Ljava/io/Reader;

.field private usePrevious:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    :goto_0
    iput-object p1, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    .line 69
    iput-boolean v1, p0, Lorg/json/JSONTokener;->eof:Z

    .line 70
    iput-boolean v1, p0, Lorg/json/JSONTokener;->usePrevious:Z

    .line 71
    iput-char v1, p0, Lorg/json/JSONTokener;->previous:C

    .line 72
    iput-wide v2, p0, Lorg/json/JSONTokener;->index:J

    .line 73
    iput-wide v4, p0, Lorg/json/JSONTokener;->character:J

    .line 74
    iput-wide v2, p0, Lorg/json/JSONTokener;->characterPreviousLine:J

    .line 75
    iput-wide v4, p0, Lorg/json/JSONTokener;->line:J

    .line 76
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    .line 95
    return-void
.end method

.method private decrementIndexes()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 118
    iget-wide v0, p0, Lorg/json/JSONTokener;->index:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lorg/json/JSONTokener;->index:J

    .line 119
    iget-char v0, p0, Lorg/json/JSONTokener;->previous:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lorg/json/JSONTokener;->previous:C

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 120
    :cond_0
    iget-wide v0, p0, Lorg/json/JSONTokener;->line:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lorg/json/JSONTokener;->line:J

    .line 121
    iget-wide v0, p0, Lorg/json/JSONTokener;->characterPreviousLine:J

    iput-wide v0, p0, Lorg/json/JSONTokener;->character:J

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 122
    :cond_2
    iget-wide v0, p0, Lorg/json/JSONTokener;->character:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 123
    iget-wide v0, p0, Lorg/json/JSONTokener;->character:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lorg/json/JSONTokener;->character:J

    goto :goto_0
.end method

.method public static dehexchar(C)I
    .locals 1
    .parameter

    .prologue
    .line 134
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 135
    add-int/lit8 v0, p0, -0x30

    .line 143
    :goto_0
    return v0

    .line 137
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 138
    add-int/lit8 v0, p0, -0x37

    goto :goto_0

    .line 140
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 141
    add-int/lit8 v0, p0, -0x57

    goto :goto_0

    .line 143
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private incrementIndexes(I)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/16 v4, 0xd

    const-wide/16 v2, 0x1

    .line 219
    if-lez p1, :cond_0

    .line 220
    iget-wide v0, p0, Lorg/json/JSONTokener;->index:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/json/JSONTokener;->index:J

    .line 221
    if-ne p1, v4, :cond_1

    .line 222
    iget-wide v0, p0, Lorg/json/JSONTokener;->line:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/json/JSONTokener;->line:J

    .line 223
    iget-wide v0, p0, Lorg/json/JSONTokener;->character:J

    iput-wide v0, p0, Lorg/json/JSONTokener;->characterPreviousLine:J

    .line 224
    iput-wide v5, p0, Lorg/json/JSONTokener;->character:J

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    .line 226
    iget-char v0, p0, Lorg/json/JSONTokener;->previous:C

    if-eq v0, v4, :cond_2

    .line 227
    iget-wide v0, p0, Lorg/json/JSONTokener;->line:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/json/JSONTokener;->line:J

    .line 228
    iget-wide v0, p0, Lorg/json/JSONTokener;->character:J

    iput-wide v0, p0, Lorg/json/JSONTokener;->characterPreviousLine:J

    .line 230
    :cond_2
    iput-wide v5, p0, Lorg/json/JSONTokener;->character:J

    goto :goto_0

    .line 232
    :cond_3
    iget-wide v0, p0, Lorg/json/JSONTokener;->character:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/json/JSONTokener;->character:J

    goto :goto_0
.end method


# virtual methods
.method public back()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/json/JSONTokener;->usePrevious:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/json/JSONTokener;->index:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 107
    :cond_0
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Stepping back two steps is not supported"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    invoke-direct {p0}, Lorg/json/JSONTokener;->decrementIndexes()V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/json/JSONTokener;->usePrevious:Z

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/json/JSONTokener;->eof:Z

    .line 112
    return-void
.end method

.method public end()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lorg/json/JSONTokener;->eof:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/json/JSONTokener;->usePrevious:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public more()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 164
    iget-boolean v1, p0, Lorg/json/JSONTokener;->usePrevious:Z

    if-eqz v1, :cond_0

    .line 182
    :goto_0
    return v0

    .line 168
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/Reader;->mark(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :try_start_1
    iget-object v1, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v1

    if-gtz v1, :cond_1

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/json/JSONTokener;->eof:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    const/4 v0, 0x0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Unable to preserve stream position"

    invoke-direct {v1, v2, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 178
    :cond_1
    :try_start_2
    iget-object v1, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 179
    :catch_1
    move-exception v0

    .line 180
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Unable to read the next character from the stream"

    invoke-direct {v1, v2, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public next()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 194
    iget-boolean v1, p0, Lorg/json/JSONTokener;->usePrevious:Z

    if-eqz v1, :cond_0

    .line 195
    iput-boolean v0, p0, Lorg/json/JSONTokener;->usePrevious:Z

    .line 196
    iget-char v1, p0, Lorg/json/JSONTokener;->previous:C

    .line 204
    :goto_0
    if-gtz v1, :cond_1

    .line 205
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/json/JSONTokener;->eof:Z

    .line 210
    :goto_1
    return v0

    .line 199
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    new-instance v1, Lorg/json/JSONException;

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 208
    :cond_1
    invoke-direct {p0, v1}, Lorg/json/JSONTokener;->incrementIndexes(I)V

    .line 209
    int-to-char v0, v1

    iput-char v0, p0, Lorg/json/JSONTokener;->previous:C

    .line 210
    iget-char v0, p0, Lorg/json/JSONTokener;->previous:C

    goto :goto_1
.end method

.method public next(C)C
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 246
    if-eq v0, p1, :cond_1

    .line 247
    if-lez v0, :cond_0

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and instead saw \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and instead saw \'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 253
    :cond_1
    return v0
.end method

.method public next(I)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 267
    if-nez p1, :cond_0

    .line 268
    const-string v0, ""

    .line 281
    :goto_0
    return-object v0

    .line 271
    :cond_0
    new-array v1, p1, [C

    .line 272
    const/4 v0, 0x0

    .line 274
    :goto_1
    if-ge v0, p1, :cond_2

    .line 275
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v2

    aput-char v2, v1, v0

    .line 276
    invoke-virtual {p0}, Lorg/json/JSONTokener;->end()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    const-string v0, "Substring bounds error"

    invoke-virtual {p0, v0}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 279
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 281
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public nextClean()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 292
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 293
    if-eqz v0, :cond_1

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    .line 294
    :cond_1
    return v0
.end method

.method public nextString(C)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    .line 316
    sparse-switch v1, :sswitch_data_0

    .line 357
    if-ne v1, p1, :cond_0

    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 320
    :sswitch_0
    const-string v0, "Unterminated string"

    invoke-virtual {p0, v0}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 322
    :sswitch_1
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    .line 323
    sparse-switch v1, :sswitch_data_1

    .line 353
    const-string v0, "Illegal escape."

    invoke-virtual {p0, v0}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 325
    :sswitch_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 328
    :sswitch_3
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 331
    :sswitch_4
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 334
    :sswitch_5
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 337
    :sswitch_6
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 341
    :sswitch_7
    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    const-string v1, "Illegal escape."

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 350
    :sswitch_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 360
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 316
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch

    .line 323
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_8
        0x27 -> :sswitch_8
        0x2f -> :sswitch_8
        0x5c -> :sswitch_8
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_4
        0x72 -> :sswitch_6
        0x74 -> :sswitch_3
        0x75 -> :sswitch_7
    .end sparse-switch
.end method

.method public nextTo(C)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    .line 378
    if-eq v1, p1, :cond_0

    if-eqz v1, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 379
    :cond_0
    if-eqz v1, :cond_1

    .line 380
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 382
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 384
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public nextTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    .line 402
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    if-eqz v1, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 404
    :cond_0
    if-eqz v1, :cond_1

    .line 405
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 407
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 409
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public nextValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 422
    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextClean()C

    move-result v0

    .line 425
    sparse-switch v0, :sswitch_data_0

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    :goto_0
    const/16 v2, 0x20

    if-lt v0, v2, :cond_0

    const-string v2, ",:]}/\\\"[{;=#"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 448
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    goto :goto_0

    .line 428
    :sswitch_0
    invoke-virtual {p0, v0}, Lorg/json/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v0

    .line 459
    :goto_1
    return-object v0

    .line 430
    :sswitch_1
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 431
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    goto :goto_1

    .line 433
    :sswitch_2
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 434
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Lorg/json/JSONTokener;)V

    goto :goto_1

    .line 451
    :cond_0
    iget-boolean v0, p0, Lorg/json/JSONTokener;->eof:Z

    if-nez v0, :cond_1

    .line 452
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 455
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 456
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 457
    const-string v0, "Missing value"

    invoke-virtual {p0, v0}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 459
    :cond_2
    invoke-static {v0}, Lorg/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 425
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x5b -> :sswitch_2
        0x7b -> :sswitch_1
    .end sparse-switch
.end method

.method public skipTo(C)C
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 475
    :try_start_0
    iget-wide v1, p0, Lorg/json/JSONTokener;->index:J

    .line 476
    iget-wide v3, p0, Lorg/json/JSONTokener;->character:J

    .line 477
    iget-wide v5, p0, Lorg/json/JSONTokener;->line:J

    .line 478
    iget-object v0, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    const v7, 0xf4240

    invoke-virtual {v0, v7}, Ljava/io/Reader;->mark(I)V

    .line 480
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 481
    if-nez v0, :cond_1

    .line 485
    iget-object v0, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->reset()V

    .line 486
    iput-wide v1, p0, Lorg/json/JSONTokener;->index:J

    .line 487
    iput-wide v3, p0, Lorg/json/JSONTokener;->character:J

    .line 488
    iput-wide v5, p0, Lorg/json/JSONTokener;->line:J

    .line 489
    const/4 v0, 0x0

    .line 497
    :goto_0
    return v0

    .line 491
    :cond_1
    if-ne v0, p1, :cond_0

    .line 492
    iget-object v1, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/Reader;->mark(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    goto :goto_0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    new-instance v1, Lorg/json/JSONException;

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public syntaxError(Ljava/lang/String;)Lorg/json/JSONException;
    .locals 3
    .parameter

    .prologue
    .line 507
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/JSONTokener;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public syntaxError(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/json/JSONException;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 518
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/JSONTokener;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/json/JSONTokener;->index:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/json/JSONTokener;->character:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/json/JSONTokener;->line:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
