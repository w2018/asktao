.class public Lorg/json/JSONArray;
.super Ljava/lang/Object;
.source "JSONArray.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final myArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 196
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 198
    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 199
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 200
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "JSONArray initial value should be a string or collection or array."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/json/JSONArray;-><init>(Lorg/json/JSONTokener;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    if-nez p1, :cond_1

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    .line 180
    :cond_0
    return-void

    .line 175
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    .line 176
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 177
    iget-object v2, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONTokener;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x5d

    .line 107
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 108
    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextClean()C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    .line 109
    const-string v0, "A JSONArray text must start with \'[\'"

    invoke-virtual {p1, v0}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 112
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextClean()C

    move-result v0

    .line 113
    if-nez v0, :cond_1

    .line 115
    const-string v0, "Expected a \',\' or \']\'"

    invoke-virtual {p1, v0}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 117
    :cond_1
    if-eq v0, v2, :cond_4

    .line 118
    invoke-virtual {p1}, Lorg/json/JSONTokener;->back()V

    .line 120
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextClean()C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_2

    .line 121
    invoke-virtual {p1}, Lorg/json/JSONTokener;->back()V

    .line 122
    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextClean()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 145
    const-string v0, "Expected a \',\' or \']\'"

    invoke-virtual {p1, v0}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 124
    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONTokener;->back()V

    .line 125
    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 130
    :sswitch_0
    const-string v0, "Expected a \',\' or \']\'"

    invoke-virtual {p1, v0}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 132
    :sswitch_1
    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextClean()C

    move-result v0

    .line 133
    if-nez v0, :cond_3

    .line 135
    const-string v0, "Expected a \',\' or \']\'"

    invoke-virtual {p1, v0}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 137
    :cond_3
    if-ne v0, v2, :cond_5

    .line 149
    :cond_4
    :sswitch_2
    return-void

    .line 140
    :cond_5
    invoke-virtual {p1}, Lorg/json/JSONTokener;->back()V

    goto :goto_0

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2c -> :sswitch_1
        0x5d -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 224
    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    return-object v0
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 346
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/json/JSONObject;->objectToBigDecimal(Ljava/lang/Object;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 347
    if-nez v1, :cond_0

    .line 348
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] could not convert to BigDecimal ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :cond_0
    return-object v1
.end method

.method public getBigInteger(I)Ljava/math/BigInteger;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 366
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/json/JSONObject;->objectToBigInteger(Ljava/lang/Object;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 367
    if-nez v1, :cond_0

    .line 368
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] could not convert to BigDecimal ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 371
    :cond_0
    return-object v1
.end method

.method public getBoolean(I)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 243
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    const-string v2, "false"

    .line 245
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    :cond_0
    const/4 v0, 0x0

    .line 250
    :goto_0
    return v0

    .line 247
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast v1, Ljava/lang/String;

    const-string v0, "true"

    .line 249
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 252
    :cond_3
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not a boolean."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getNumber(I)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getEnum(Ljava/lang/Class;I)Ljava/lang/Enum;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;I)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONArray;->optEnum(Ljava/lang/Class;I)Ljava/lang/Enum;

    move-result-object v0

    .line 321
    if-nez v0, :cond_0

    .line 325
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not an enum of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 326
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_0
    return-object v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getNumber(I)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getNumber(I)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getJSONArray(I)Lorg/json/JSONArray;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 399
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    .line 400
    check-cast v0, Lorg/json/JSONArray;

    return-object v0

    .line 402
    :cond_0
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not a JSONArray."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getJSONObject(I)Lorg/json/JSONObject;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 417
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 418
    check-cast v0, Lorg/json/JSONObject;

    return-object v0

    .line 420
    :cond_0
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not a JSONObject."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 434
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getNumber(I)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumber(I)Ljava/lang/Number;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 296
    :try_start_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 297
    check-cast v0, Ljava/lang/Number;

    .line 299
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/JSONObject;->stringToNumber(Ljava/lang/String;)Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a number."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 448
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 449
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 451
    :cond_0
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not a string."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1455
    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 2
    .parameter

    .prologue
    .line 462
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public join(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 478
    if-nez v1, :cond_0

    .line 479
    const-string v0, ""

    .line 489
    :goto_0
    return-object v0

    .line 482
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 483
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 485
    const/4 v0, 0x1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 486
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    .line 487
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 489
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public opt(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 509
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 510
    :cond_1
    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public optBigDecimal(ILjava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 729
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 730
    invoke-static {v0, p2}, Lorg/json/JSONObject;->objectToBigDecimal(Ljava/lang/Object;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public optBigInteger(ILjava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 710
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 711
    invoke-static {v0, p2}, Lorg/json/JSONObject;->objectToBigInteger(Ljava/lang/Object;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public optBoolean(I)Z
    .locals 1
    .parameter

    .prologue
    .line 523
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->optBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public optBoolean(IZ)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 539
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 541
    :goto_0
    return p2

    .line 540
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public optDouble(I)D
    .locals 2
    .parameter

    .prologue
    .line 555
    const-wide/high16 v0, 0x7ff8

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(ID)D
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 570
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->optNumber(ILjava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    .line 571
    if-nez v0, :cond_0

    .line 578
    :goto_0
    return-wide p2

    .line 574
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    goto :goto_0
.end method

.method public optEnum(Ljava/lang/Class;I)Ljava/lang/Enum;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;I)TE;"
        }
    .end annotation

    .prologue
    .line 661
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/json/JSONArray;->optEnum(Ljava/lang/Class;ILjava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public optEnum(Ljava/lang/Class;ILjava/lang/Enum;)Ljava/lang/Enum;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 680
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 681
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 694
    :goto_0
    return-object p3

    .line 684
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 687
    check-cast v0, Ljava/lang/Enum;

    move-object p3, v0

    .line 688
    goto :goto_0

    .line 690
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    goto :goto_0

    .line 693
    :catch_0
    move-exception v0

    goto :goto_0

    .line 691
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public optFloat(I)F
    .locals 1
    .parameter

    .prologue
    .line 591
    const/high16 v0, 0x7fc0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->optFloat(IF)F

    move-result v0

    return v0
.end method

.method public optFloat(IF)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 606
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->optNumber(ILjava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    .line 607
    if-nez v0, :cond_0

    .line 614
    :goto_0
    return p2

    .line 610
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result p2

    goto :goto_0
.end method

.method public optInt(I)I
    .locals 1
    .parameter

    .prologue
    .line 627
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->optInt(II)I

    move-result v0

    return v0
.end method

.method public optInt(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 642
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->optNumber(ILjava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    .line 643
    if-nez v0, :cond_0

    .line 646
    :goto_0
    return p2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public optJSONArray(I)Lorg/json/JSONArray;
    .locals 2
    .parameter

    .prologue
    .line 742
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 743
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/json/JSONArray;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optJSONObject(I)Lorg/json/JSONObject;
    .locals 2
    .parameter

    .prologue
    .line 756
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 757
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/json/JSONObject;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optLong(I)J
    .locals 2
    .parameter

    .prologue
    .line 770
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(IJ)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 785
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->optNumber(ILjava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    .line 786
    if-nez v0, :cond_0

    .line 789
    :goto_0
    return-wide p2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    goto :goto_0
.end method

.method public optNumber(I)Ljava/lang/Number;
    .locals 1
    .parameter

    .prologue
    .line 803
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->optNumber(ILjava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public optNumber(ILjava/lang/Number;)Ljava/lang/Number;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 819
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 820
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-object p2

    .line 823
    :cond_1
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 824
    check-cast v0, Ljava/lang/Number;

    move-object p2, v0

    goto :goto_0

    .line 827
    :cond_2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 829
    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/json/JSONObject;->stringToNumber(Ljava/lang/String;)Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 830
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public optQuery(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1187
    new-instance v0, Lorg/json/JSONPointer;

    invoke-direct {v0, p1}, Lorg/json/JSONPointer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optQuery(Lorg/json/JSONPointer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public optQuery(Lorg/json/JSONPointer;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1200
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json/JSONPointer;->queryFrom(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1202
    :goto_0
    return-object v0

    .line 1201
    :catch_0
    move-exception v0

    .line 1202
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optString(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 847
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 861
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 862
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p2

    .line 863
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public put(D)Lorg/json/JSONArray;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 901
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(F)Lorg/json/JSONArray;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 914
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(I)Lorg/json/JSONArray;
    .locals 1
    .parameter

    .prologue
    .line 925
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(ID)Lorg/json/JSONArray;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1019
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(IF)Lorg/json/JSONArray;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1036
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(II)Lorg/json/JSONArray;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1053
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(IJ)Lorg/json/JSONArray;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1070
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(ILjava/lang/Object;)Lorg/json/JSONArray;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1110
    if-gez p1, :cond_0

    .line 1111
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1113
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1114
    invoke-static {p2}, Lorg/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 1115
    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1129
    :goto_0
    return-object p0

    .line 1118
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 1120
    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0

    goto :goto_0

    .line 1124
    :cond_2
    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1125
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 1127
    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1129
    :cond_3
    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0

    goto :goto_0
.end method

.method public put(ILjava/util/Collection;)Lorg/json/JSONArray;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<*>;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1002
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(ILjava/util/Map;)Lorg/json/JSONArray;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<**>;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1089
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 1090
    return-object p0
.end method

.method public put(IZ)Lorg/json/JSONArray;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 986
    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public put(J)Lorg/json/JSONArray;
    .locals 1
    .parameter

    .prologue
    .line 936
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;)Lorg/json/JSONArray;
    .locals 1
    .parameter

    .prologue
    .line 967
    invoke-static {p1}, Lorg/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 968
    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    return-object p0
.end method

.method public put(Ljava/util/Collection;)Lorg/json/JSONArray;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 888
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/util/Map;)Lorg/json/JSONArray;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 952
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(Z)Lorg/json/JSONArray;
    .locals 1
    .parameter

    .prologue
    .line 874
    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public query(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1152
    new-instance v0, Lorg/json/JSONPointer;

    invoke-direct {v0, p1}, Lorg/json/JSONPointer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->query(Lorg/json/JSONPointer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public query(Lorg/json/JSONPointer;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1175
    invoke-virtual {p1, p0}, Lorg/json/JSONPointer;->queryFrom(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1215
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1216
    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 1215
    :goto_0
    return-object v0

    .line 1217
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public similar(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1228
    instance-of v0, p1, Lorg/json/JSONArray;

    if-nez v0, :cond_0

    move v0, v2

    .line 1256
    :goto_0
    return v0

    .line 1231
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    move-object v0, p1

    .line 1232
    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eq v4, v0, :cond_1

    move v0, v2

    .line 1233
    goto :goto_0

    :cond_1
    move v3, v2

    .line 1235
    :goto_1
    if-ge v3, v4, :cond_7

    .line 1236
    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, p1

    .line 1237
    check-cast v0, Lorg/json/JSONArray;

    iget-object v0, v0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1238
    if-ne v1, v5, :cond_3

    .line 1235
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1241
    :cond_3
    if-nez v1, :cond_4

    move v0, v2

    .line 1242
    goto :goto_0

    .line 1244
    :cond_4
    instance-of v0, v1, Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 1245
    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->similar(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 1246
    goto :goto_0

    .line 1248
    :cond_5
    instance-of v0, v1, Lorg/json/JSONArray;

    if-eqz v0, :cond_6

    .line 1249
    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->similar(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 1250
    goto :goto_0

    .line 1252
    :cond_6
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 1253
    goto :goto_0

    .line 1256
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toJSONObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1272
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1273
    :cond_0
    const/4 v0, 0x0

    .line 1279
    :goto_0
    return-object v0

    .line 1275
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(I)V

    .line 1276
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1277
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1276
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 1279
    goto :goto_0
.end method

.method public toList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1434
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1435
    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1436
    if-eqz v0, :cond_0

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1437
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1438
    :cond_1
    instance-of v3, v0, Lorg/json/JSONArray;

    if-eqz v3, :cond_2

    .line 1439
    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1440
    :cond_2
    instance-of v3, v0, Lorg/json/JSONObject;

    if-eqz v3, :cond_3

    .line 1441
    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1443
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1446
    :cond_4
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1297
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1299
    :goto_0
    return-object v0

    .line 1298
    :catch_0
    move-exception v0

    .line 1299
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1331
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1332
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    monitor-enter v1

    .line 1333
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1, v2}, Lorg/json/JSONArray;->write(Ljava/io/Writer;II)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1334
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write(Ljava/io/Writer;)Ljava/io/Writer;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1348
    invoke-virtual {p0, p1, v0, v0}, Lorg/json/JSONArray;->write(Ljava/io/Writer;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/Writer;II)Ljava/io/Writer;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1383
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 1384
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1386
    if-ne v3, v2, :cond_1

    .line 1388
    :try_start_1
    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0, p2, p3}, Lorg/json/JSONObject;->writeValue(Ljava/io/Writer;Ljava/lang/Object;II)Ljava/io/Writer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1417
    :cond_0
    :goto_0
    const/16 v0, 0x5d

    :try_start_2
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 1418
    return-object p1

    .line 1390
    :catch_0
    move-exception v0

    .line 1391
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Unable to write JSONArray value at index: 0"

    invoke-direct {v1, v2, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1419
    :catch_1
    move-exception v0

    .line 1420
    new-instance v1, Lorg/json/JSONException;

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1393
    :cond_1
    if-eqz v3, :cond_0

    .line 1394
    add-int v4, p3, p2

    move v1, v0

    .line 1396
    :goto_1
    if-ge v1, v3, :cond_4

    .line 1397
    if-eqz v0, :cond_2

    .line 1398
    const/16 v0, 0x2c

    :try_start_3
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 1400
    :cond_2
    if-lez p2, :cond_3

    .line 1401
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 1403
    :cond_3
    invoke-static {p1, v4}, Lorg/json/JSONObject;->indent(Ljava/io/Writer;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1405
    :try_start_4
    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0, p2, v4}, Lorg/json/JSONObject;->writeValue(Ljava/io/Writer;Ljava/lang/Object;II)Ljava/io/Writer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1396
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    .line 1407
    :catch_2
    move-exception v0

    .line 1408
    :try_start_5
    new-instance v2, Lorg/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to write JSONArray value at index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1412
    :cond_4
    if-lez p2, :cond_5

    .line 1413
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 1415
    :cond_5
    invoke-static {p1, p3}, Lorg/json/JSONObject;->indent(Ljava/io/Writer;I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0
.end method
