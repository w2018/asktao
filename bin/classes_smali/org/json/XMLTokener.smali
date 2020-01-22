.class public Lorg/json/XMLTokener;
.super Lorg/json/JSONTokener;
.source "XMLTokener.java"


# static fields
.field public static final entity:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    .line 45
    sget-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "amp"

    sget-object v2, Lorg/json/XML;->AMP:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "apos"

    sget-object v2, Lorg/json/XML;->APOS:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "gt"

    sget-object v2, Lorg/json/XML;->GT:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "lt"

    sget-object v2, Lorg/json/XML;->LT:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "quot"

    sget-object v2, Lorg/json/XML;->QUOT:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method static unescapeEntity(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 161
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    :cond_0
    const-string v0, ""

    .line 181
    :goto_0
    return-object v0

    .line 165
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    .line 167
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_2

    .line 169
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 174
    :goto_1
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    aput v0, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    move-object v0, v1

    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 176
    :cond_3
    sget-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 177
    if-nez v0, :cond_4

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public nextCDATA()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x5d

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lorg/json/XMLTokener;->more()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    .line 81
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_0

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 87
    :cond_1
    const-string v0, "Unclosed CDATA"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0
.end method

.method public nextContent()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3c

    .line 104
    :cond_0
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 105
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    if-nez v0, :cond_1

    .line 107
    const/4 v0, 0x0

    .line 119
    :goto_0
    return-object v0

    .line 109
    :cond_1
    if-ne v0, v3, :cond_2

    .line 110
    sget-object v0, Lorg/json/XML;->LT:Ljava/lang/Character;

    goto :goto_0

    .line 112
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    :goto_1
    if-nez v0, :cond_3

    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_3
    if-ne v0, v3, :cond_4

    .line 118
    invoke-virtual {p0}, Lorg/json/XMLTokener;->back()V

    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_4
    const/16 v2, 0x26

    if-ne v0, v2, :cond_5

    .line 122
    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->nextEntity(C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    :goto_2
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    goto :goto_1

    .line 124
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public nextEntity(C)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    :goto_0
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v1

    .line 142
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1

    .line 143
    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 144
    :cond_1
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_2

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Lorg/json/XMLTokener;->unescapeEntity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 147
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing \';\' in XML entity: &"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0
.end method

.method public nextMeta()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 198
    :cond_0
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 199
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    sparse-switch v0, :sswitch_data_0

    .line 229
    :goto_0
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 230
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 231
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 244
    :goto_1
    return-object v0

    .line 202
    :sswitch_0
    const-string v0, "Misshaped meta tag"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 204
    :sswitch_1
    sget-object v0, Lorg/json/XML;->LT:Ljava/lang/Character;

    goto :goto_1

    .line 206
    :sswitch_2
    sget-object v0, Lorg/json/XML;->GT:Ljava/lang/Character;

    goto :goto_1

    .line 208
    :sswitch_3
    sget-object v0, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    goto :goto_1

    .line 210
    :sswitch_4
    sget-object v0, Lorg/json/XML;->EQ:Ljava/lang/Character;

    goto :goto_1

    .line 212
    :sswitch_5
    sget-object v0, Lorg/json/XML;->BANG:Ljava/lang/Character;

    goto :goto_1

    .line 214
    :sswitch_6
    sget-object v0, Lorg/json/XML;->QUEST:Ljava/lang/Character;

    goto :goto_1

    .line 219
    :cond_1
    :sswitch_7
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v1

    .line 220
    if-nez v1, :cond_2

    .line 221
    const-string v0, "Unterminated string"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 223
    :cond_2
    if-ne v1, v0, :cond_1

    .line 224
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 233
    :cond_3
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 243
    :sswitch_8
    invoke-virtual {p0}, Lorg/json/XMLTokener;->back()V

    .line 244
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 200
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_5
        0x22 -> :sswitch_7
        0x27 -> :sswitch_7
        0x2f -> :sswitch_3
        0x3c -> :sswitch_1
        0x3d -> :sswitch_4
        0x3e -> :sswitch_2
        0x3f -> :sswitch_6
    .end sparse-switch

    .line 233
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_8
        0x21 -> :sswitch_8
        0x22 -> :sswitch_8
        0x27 -> :sswitch_8
        0x2f -> :sswitch_8
        0x3c -> :sswitch_8
        0x3d -> :sswitch_8
        0x3e -> :sswitch_8
        0x3f -> :sswitch_8
    .end sparse-switch
.end method

.method public nextToken()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 264
    :cond_0
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 265
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    sparse-switch v0, :sswitch_data_0

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 310
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 311
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    :goto_1
    return-object v0

    .line 268
    :sswitch_0
    const-string v0, "Misshaped element"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 270
    :sswitch_1
    const-string v0, "Misplaced \'<\'"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 272
    :sswitch_2
    sget-object v0, Lorg/json/XML;->GT:Ljava/lang/Character;

    goto :goto_1

    .line 274
    :sswitch_3
    sget-object v0, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    goto :goto_1

    .line 276
    :sswitch_4
    sget-object v0, Lorg/json/XML;->EQ:Ljava/lang/Character;

    goto :goto_1

    .line 278
    :sswitch_5
    sget-object v0, Lorg/json/XML;->BANG:Ljava/lang/Character;

    goto :goto_1

    .line 280
    :sswitch_6
    sget-object v0, Lorg/json/XML;->QUEST:Ljava/lang/Character;

    goto :goto_1

    .line 287
    :sswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    :goto_2
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v2

    .line 290
    if-nez v2, :cond_1

    .line 291
    const-string v0, "Unterminated string"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 293
    :cond_1
    if-ne v2, v0, :cond_2

    .line 294
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 296
    :cond_2
    const/16 v3, 0x26

    if-ne v2, v3, :cond_3

    .line 297
    invoke-virtual {p0, v2}, Lorg/json/XMLTokener;->nextEntity(C)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 299
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 313
    :cond_4
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 315
    :sswitch_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 323
    :sswitch_9
    invoke-virtual {p0}, Lorg/json/XMLTokener;->back()V

    .line 324
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 328
    :sswitch_a
    const-string v0, "Bad character in a name"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 266
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_5
        0x22 -> :sswitch_7
        0x27 -> :sswitch_7
        0x2f -> :sswitch_3
        0x3c -> :sswitch_1
        0x3d -> :sswitch_4
        0x3e -> :sswitch_2
        0x3f -> :sswitch_6
    .end sparse-switch

    .line 313
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_8
        0x21 -> :sswitch_9
        0x22 -> :sswitch_a
        0x27 -> :sswitch_a
        0x2f -> :sswitch_9
        0x3c -> :sswitch_a
        0x3d -> :sswitch_9
        0x3e -> :sswitch_9
        0x3f -> :sswitch_9
        0x5b -> :sswitch_9
        0x5d -> :sswitch_9
    .end sparse-switch
.end method

.method public skipPast(Ljava/lang/String;)V
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 349
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 350
    new-array v6, v5, [C

    move v0, v1

    .line 357
    :goto_0
    if-ge v0, v5, :cond_7

    .line 358
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v2

    .line 359
    if-nez v2, :cond_1

    .line 394
    :cond_0
    :goto_1
    return-void

    .line 362
    :cond_1
    aput-char v2, v6, v0

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    :cond_2
    aput-char v2, v6, v0

    .line 401
    add-int/lit8 v0, v0, 0x1

    .line 402
    if-lt v0, v5, :cond_3

    .line 403
    sub-int/2addr v0, v5

    .line 369
    :cond_3
    :goto_2
    const/4 v3, 0x1

    move v2, v0

    move v4, v1

    .line 373
    :goto_3
    if-ge v4, v5, :cond_6

    .line 374
    aget-char v7, v6, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_4

    move v2, v1

    .line 386
    :goto_4
    if-nez v2, :cond_0

    .line 392
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v2

    .line 393
    if-nez v2, :cond_2

    goto :goto_1

    .line 378
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 379
    if-lt v2, v5, :cond_5

    .line 380
    sub-int/2addr v2, v5

    .line 373
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    move v2, v3

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_2
.end method
