.class public Lorg/json/JSONWriter;
.super Ljava/lang/Object;
.source "JSONWriter.java"


# static fields
.field private static final maxdepth:I = 0xc8


# instance fields
.field private comma:Z

.field protected mode:C

.field private final stack:[Lorg/json/JSONObject;

.field private top:I

.field protected writer:Ljava/lang/Appendable;


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-boolean v1, p0, Lorg/json/JSONWriter;->comma:Z

    .line 99
    const/16 v0, 0x69

    iput-char v0, p0, Lorg/json/JSONWriter;->mode:C

    .line 100
    const/16 v0, 0xc8

    new-array v0, v0, [Lorg/json/JSONObject;

    iput-object v0, p0, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    .line 101
    iput v1, p0, Lorg/json/JSONWriter;->top:I

    .line 102
    iput-object p1, p0, Lorg/json/JSONWriter;->writer:Ljava/lang/Appendable;

    .line 103
    return-void
.end method

.method private append(Ljava/lang/String;)Lorg/json/JSONWriter;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x6f

    const/16 v1, 0x61

    .line 112
    if-nez p1, :cond_0

    .line 113
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Null pointer"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    if-ne v0, v1, :cond_4

    .line 117
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lorg/json/JSONWriter;->comma:Z

    if-eqz v0, :cond_2

    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    if-ne v0, v1, :cond_2

    .line 118
    iget-object v0, p0, Lorg/json/JSONWriter;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 120
    :cond_2
    iget-object v0, p0, Lorg/json/JSONWriter;->writer:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    if-ne v0, v2, :cond_3

    .line 128
    const/16 v0, 0x6b

    iput-char v0, p0, Lorg/json/JSONWriter;->mode:C

    .line 130
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/json/JSONWriter;->comma:Z

    .line 131
    return-object p0

    .line 121
    :catch_0
    move-exception v0

    .line 125
    new-instance v1, Lorg/json/JSONException;

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 133
    :cond_4
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Value out of sequence."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private end(CC)Lorg/json/JSONWriter;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 163
    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    if-eq v0, p1, :cond_1

    .line 164
    new-instance v1, Lorg/json/JSONException;

    const/16 v0, 0x61

    if-ne p1, v0, :cond_0

    .line 165
    const-string v0, "Misplaced endArray."

    .line 166
    :goto_0
    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, "Misplaced endObject."

    goto :goto_0

    .line 168
    :cond_1
    invoke-direct {p0, p1}, Lorg/json/JSONWriter;->pop(C)V

    .line 170
    :try_start_0
    iget-object v0, p0, Lorg/json/JSONWriter;->writer:Ljava/lang/Appendable;

    invoke-interface {v0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/json/JSONWriter;->comma:Z

    .line 178
    return-object p0

    .line 171
    :catch_0
    move-exception v0

    .line 175
    new-instance v1, Lorg/json/JSONException;

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private pop(C)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x6b

    const/16 v0, 0x61

    .line 270
    iget v2, p0, Lorg/json/JSONWriter;->top:I

    if-gtz v2, :cond_0

    .line 271
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Nesting error."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    iget-object v2, p0, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    iget v3, p0, Lorg/json/JSONWriter;->top:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    move v2, v0

    .line 274
    :goto_0
    if-eq v2, p1, :cond_2

    .line 275
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Nesting error."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v2, v1

    .line 273
    goto :goto_0

    .line 277
    :cond_2
    iget v2, p0, Lorg/json/JSONWriter;->top:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/json/JSONWriter;->top:I

    .line 278
    iget v2, p0, Lorg/json/JSONWriter;->top:I

    if-nez v2, :cond_4

    .line 279
    const/16 v0, 0x64

    .line 282
    :cond_3
    :goto_1
    iput-char v0, p0, Lorg/json/JSONWriter;->mode:C

    .line 283
    return-void

    .line 280
    :cond_4
    iget-object v2, p0, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    iget v3, p0, Lorg/json/JSONWriter;->top:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_3

    move v0, v1

    .line 282
    goto :goto_1
.end method

.method private push(Lorg/json/JSONObject;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 291
    iget v0, p0, Lorg/json/JSONWriter;->top:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    .line 292
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Nesting too deep."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    iget-object v0, p0, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    iget v1, p0, Lorg/json/JSONWriter;->top:I

    aput-object p1, v0, v1

    .line 295
    if-nez p1, :cond_1

    const/16 v0, 0x61

    :goto_0
    iput-char v0, p0, Lorg/json/JSONWriter;->mode:C

    .line 296
    iget v0, p0, Lorg/json/JSONWriter;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/json/JSONWriter;->top:I

    .line 297
    return-void

    .line 295
    :cond_1
    const/16 v0, 0x6b

    goto :goto_0
.end method

.method public static valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 324
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    :cond_0
    const-string v0, "null"

    .line 368
    :cond_1
    :goto_0
    return-object v0

    .line 327
    :cond_2
    instance-of v0, p0, Lorg/json/JSONString;

    if-eqz v0, :cond_3

    .line 330
    :try_start_0
    check-cast p0, Lorg/json/JSONString;

    invoke-interface {p0}, Lorg/json/JSONString;->toJSONString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 334
    if-nez v0, :cond_1

    .line 337
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad value from toJSONString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    new-instance v1, Lorg/json/JSONException;

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 339
    :cond_3
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_4

    .line 341
    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    .line 342
    sget-object v1, Lorg/json/JSONObject;->NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 348
    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 350
    :cond_4
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_5

    instance-of v0, p0, Lorg/json/JSONObject;

    if-nez v0, :cond_5

    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_6

    .line 352
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 354
    :cond_6
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 355
    check-cast p0, Ljava/util/Map;

    .line 356
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 358
    :cond_7
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_8

    .line 359
    check-cast p0, Ljava/util/Collection;

    .line 360
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 362
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 363
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 365
    :cond_9
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_a

    .line 366
    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 368
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public array()Lorg/json/JSONWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 146
    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0x69

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0x61

    if-ne v0, v1, :cond_1

    .line 147
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->push(Lorg/json/JSONObject;)V

    .line 148
    const-string v0, "["

    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/json/JSONWriter;->comma:Z

    .line 150
    return-object p0

    .line 152
    :cond_1
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Misplaced array."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endArray()Lorg/json/JSONWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 188
    const/16 v0, 0x61

    const/16 v1, 0x5d

    invoke-direct {p0, v0, v1}, Lorg/json/JSONWriter;->end(CC)Lorg/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lorg/json/JSONWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 198
    const/16 v0, 0x6b

    const/16 v1, 0x7d

    invoke-direct {p0, v0, v1}, Lorg/json/JSONWriter;->end(CC)Lorg/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public key(Ljava/lang/String;)Lorg/json/JSONWriter;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 211
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Null key."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_3

    .line 215
    :try_start_0
    iget-object v0, p0, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    iget v1, p0, Lorg/json/JSONWriter;->top:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 217
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :catch_0
    move-exception v0

    .line 233
    new-instance v1, Lorg/json/JSONException;

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 220
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 221
    iget-boolean v0, p0, Lorg/json/JSONWriter;->comma:Z

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lorg/json/JSONWriter;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 224
    :cond_2
    iget-object v0, p0, Lorg/json/JSONWriter;->writer:Ljava/lang/Appendable;

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 225
    iget-object v0, p0, Lorg/json/JSONWriter;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x3a

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/json/JSONWriter;->comma:Z

    .line 227
    const/16 v0, 0x6f

    iput-char v0, p0, Lorg/json/JSONWriter;->mode:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 228
    return-object p0

    .line 236
    :cond_3
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Misplaced key."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public object()Lorg/json/JSONWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x6f

    .line 250
    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    .line 251
    iput-char v2, p0, Lorg/json/JSONWriter;->mode:C

    .line 253
    :cond_0
    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0x61

    if-ne v0, v1, :cond_2

    .line 254
    :cond_1
    const-string v0, "{"

    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    .line 255
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->push(Lorg/json/JSONObject;)V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/json/JSONWriter;->comma:Z

    .line 257
    return-object p0

    .line 259
    :cond_2
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Misplaced object."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public value(D)Lorg/json/JSONWriter;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 389
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(J)Lorg/json/JSONWriter;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(Ljava/lang/Object;)Lorg/json/JSONWriter;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-static {p1}, Lorg/json/JSONWriter;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(Z)Lorg/json/JSONWriter;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 379
    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
