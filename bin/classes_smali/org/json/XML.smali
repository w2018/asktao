.class public Lorg/json/XML;
.super Ljava/lang/Object;
.source "XML.java"


# static fields
.field public static final AMP:Ljava/lang/Character; = null

.field public static final APOS:Ljava/lang/Character; = null

.field public static final BANG:Ljava/lang/Character; = null

.field public static final EQ:Ljava/lang/Character; = null

.field public static final GT:Ljava/lang/Character; = null

.field public static final LT:Ljava/lang/Character; = null

.field public static final NULL_ATTR:Ljava/lang/String; = "xsi:nil"

.field public static final QUEST:Ljava/lang/Character;

.field public static final QUOT:Ljava/lang/Character;

.field public static final SLASH:Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x26

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lorg/json/XML;->AMP:Ljava/lang/Character;

    .line 45
    const/16 v0, 0x27

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lorg/json/XML;->APOS:Ljava/lang/Character;

    .line 48
    const/16 v0, 0x21

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lorg/json/XML;->BANG:Ljava/lang/Character;

    .line 51
    const/16 v0, 0x3d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lorg/json/XML;->EQ:Ljava/lang/Character;

    .line 54
    const/16 v0, 0x3e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lorg/json/XML;->GT:Ljava/lang/Character;

    .line 57
    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lorg/json/XML;->LT:Ljava/lang/Character;

    .line 60
    const/16 v0, 0x3f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lorg/json/XML;->QUEST:Ljava/lang/Character;

    .line 63
    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lorg/json/XML;->QUOT:Ljava/lang/Character;

    .line 66
    const/16 v0, 0x2f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static codePointIterator(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lorg/json/XML$1;

    invoke-direct {v0, p0}, Lorg/json/XML$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 130
    invoke-static {p0}, Lorg/json/XML;->codePointIterator(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 131
    sparse-switch v0, :sswitch_data_0

    .line 148
    invoke-static {v0}, Lorg/json/XML;->mustEscape(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    const-string v3, "&#x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const/16 v0, 0x3b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 133
    :sswitch_0
    const-string v0, "&amp;"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 136
    :sswitch_1
    const-string v0, "&lt;"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 139
    :sswitch_2
    const-string v0, "&gt;"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 142
    :sswitch_3
    const-string v0, "&quot;"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 145
    :sswitch_4
    const-string v0, "&apos;"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 131
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_0
        0x27 -> :sswitch_4
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method private static mustEscape(I)Z
    .locals 1
    .parameter

    .prologue
    .line 173
    invoke-static {p0}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const v0, 0xd7ff

    if-le p0, v0, :cond_4

    :cond_1
    const v0, 0xe000

    if-lt p0, v0, :cond_2

    const v0, 0xfffd

    if-le p0, v0, :cond_4

    :cond_2
    const/high16 v0, 0x1

    if-lt p0, v0, :cond_3

    const v0, 0x10ffff

    if-le p0, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static noSpace(Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 227
    if-nez v1, :cond_0

    .line 228
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Empty string."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 231
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' contains a space character."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_2
    return-void
.end method

.method private static parse(Lorg/json/XMLTokener;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/XMLParserConfiguration;)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v3, 0x5b

    const/16 v2, 0x2d

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 269
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    .line 273
    sget-object v1, Lorg/json/XML;->BANG:Ljava/lang/Character;

    if-ne v0, v1, :cond_a

    .line 274
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 275
    if-ne v0, v2, :cond_4

    .line 276
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    if-ne v0, v2, :cond_1

    .line 277
    const-string v0, "-->"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->skipPast(Ljava/lang/String;)V

    move v4, v6

    .line 409
    :cond_0
    :goto_0
    return v4

    .line 280
    :cond_1
    invoke-virtual {p0}, Lorg/json/XMLTokener;->back()V

    :cond_2
    move v0, v4

    .line 296
    :cond_3
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextMeta()Ljava/lang/Object;

    move-result-object v1

    .line 297
    if-nez v1, :cond_7

    .line 298
    const-string v0, "Missing \'>\' after \'<!\'."

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 281
    :cond_4
    if-ne v0, v3, :cond_2

    .line 282
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    .line 283
    const-string v1, "CDATA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 284
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    if-ne v0, v3, :cond_6

    .line 285
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextCDATA()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 287
    iget-object v1, p3, Lorg/json/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    move v4, v6

    .line 289
    goto :goto_0

    .line 292
    :cond_6
    const-string v0, "Expected \'CDATA[\'"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 299
    :cond_7
    sget-object v2, Lorg/json/XML;->LT:Ljava/lang/Character;

    if-ne v1, v2, :cond_9

    .line 300
    add-int/lit8 v0, v0, 0x1

    .line 304
    :cond_8
    :goto_1
    if-gtz v0, :cond_3

    move v4, v6

    .line 305
    goto :goto_0

    .line 301
    :cond_9
    sget-object v2, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-ne v1, v2, :cond_8

    .line 302
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 306
    :cond_a
    sget-object v1, Lorg/json/XML;->QUEST:Ljava/lang/Character;

    if-ne v0, v1, :cond_b

    .line 309
    const-string v0, "?>"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->skipPast(Ljava/lang/String;)V

    move v4, v6

    .line 310
    goto :goto_0

    .line 311
    :cond_b
    sget-object v1, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v0, v1, :cond_e

    .line 315
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    .line 316
    if-nez p2, :cond_c

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched close tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 319
    :cond_c
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 322
    :cond_d
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-eq v0, v1, :cond_0

    .line 323
    const-string v0, "Misshaped close tag"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 327
    :cond_e
    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_f

    .line 328
    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 333
    :cond_f
    check-cast v0, Ljava/lang/String;

    .line 335
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    move v5, v6

    move-object v1, v7

    .line 338
    :goto_2
    if-nez v1, :cond_10

    .line 339
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    .line 342
    :cond_10
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 343
    check-cast v1, Ljava/lang/String;

    .line 344
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v2

    .line 345
    sget-object v3, Lorg/json/XML;->EQ:Ljava/lang/Character;

    if-ne v2, v3, :cond_15

    .line 346
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v3

    .line 347
    instance-of v2, v3, Ljava/lang/String;

    if-nez v2, :cond_11

    .line 348
    const-string v0, "Missing value"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 351
    :cond_11
    iget-boolean v2, p3, Lorg/json/XMLParserConfiguration;->convertNilAttributeToNull:Z

    if-eqz v2, :cond_12

    const-string v2, "xsi:nil"

    .line 352
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    .line 353
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v1, v4

    :goto_3
    move v5, v1

    move-object v1, v7

    .line 361
    goto :goto_2

    .line 355
    :cond_12
    if-nez v5, :cond_13

    .line 357
    iget-boolean v2, p3, Lorg/json/XMLParserConfiguration;->keepStrings:Z

    if-eqz v2, :cond_14

    .line 358
    check-cast v3, Ljava/lang/String;

    .line 356
    :goto_4
    invoke-virtual {v8, v1, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_13
    move v1, v5

    goto :goto_3

    .line 359
    :cond_14
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/json/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_4

    .line 363
    :cond_15
    const-string v3, ""

    invoke-virtual {v8, v1, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v2

    goto :goto_2

    .line 367
    :cond_16
    sget-object v2, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v1, v2, :cond_1a

    .line 369
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-eq v1, v2, :cond_17

    .line 370
    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 372
    :cond_17
    if-eqz v5, :cond_18

    .line 373
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_5
    move v4, v6

    .line 379
    goto/16 :goto_0

    .line 374
    :cond_18
    invoke-virtual {v8}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_19

    .line 375
    invoke-virtual {p1, v0, v8}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    .line 377
    :cond_19
    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    .line 381
    :cond_1a
    sget-object v2, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-ne v1, v2, :cond_22

    .line 384
    :cond_1b
    :goto_6
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextContent()Ljava/lang/Object;

    move-result-object v1

    .line 385
    if-nez v1, :cond_1d

    .line 386
    if-eqz v0, :cond_1c

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unclosed tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    :cond_1c
    move v4, v6

    .line 389
    goto/16 :goto_0

    .line 390
    :cond_1d
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1f

    .line 391
    check-cast v1, Ljava/lang/String;

    .line 392
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1b

    .line 393
    iget-object v2, p3, Lorg/json/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    .line 394
    iget-boolean v3, p3, Lorg/json/XMLParserConfiguration;->keepStrings:Z

    if-eqz v3, :cond_1e

    .line 393
    :goto_7
    invoke-virtual {v8, v2, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    .line 394
    :cond_1e
    invoke-static {v1}, Lorg/json/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_7

    .line 397
    :cond_1f
    sget-object v2, Lorg/json/XML;->LT:Ljava/lang/Character;

    if-ne v1, v2, :cond_1b

    .line 399
    invoke-static {p0, v8, v0, p3}, Lorg/json/XML;->parse(Lorg/json/XMLTokener;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/XMLParserConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 400
    invoke-virtual {v8}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_20

    .line 401
    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_8
    move v4, v6

    .line 409
    goto/16 :goto_0

    .line 402
    :cond_20
    invoke-virtual {v8}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-ne v1, v4, :cond_21

    iget-object v1, p3, Lorg/json/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    .line 403
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 404
    iget-object v1, p3, Lorg/json/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    .line 405
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 404
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_8

    .line 407
    :cond_21
    invoke-virtual {p1, v0, v8}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_8

    .line 414
    :cond_22
    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0
.end method

.method public static stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 429
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-object p0

    .line 432
    :cond_1
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 435
    :cond_2
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 436
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 438
    :cond_3
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 439
    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_0

    .line 447
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 448
    const/16 v1, 0x30

    if-lt v0, v1, :cond_5

    const/16 v1, 0x39

    if-le v0, v1, :cond_6

    :cond_5
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    .line 452
    :cond_6
    const/16 v0, 0x2e

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v2, :cond_7

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v2, :cond_7

    const/16 v0, 0x45

    .line 453
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v2, :cond_7

    const-string v0, "-0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 454
    :cond_7
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 456
    goto :goto_0

    .line 459
    :cond_8
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_9

    .line 462
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto/16 :goto_0

    :cond_9
    move-object p0, v0

    .line 464
    goto/16 :goto_0

    .line 467
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public static toJSONObject(Ljava/io/Reader;)Lorg/json/JSONObject;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 509
    sget-object v0, Lorg/json/XMLParserConfiguration;->ORIGINAL:Lorg/json/XMLParserConfiguration;

    invoke-static {p0, v0}, Lorg/json/XML;->toJSONObject(Ljava/io/Reader;Lorg/json/XMLParserConfiguration;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONObject(Ljava/io/Reader;Lorg/json/XMLParserConfiguration;)Lorg/json/JSONObject;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 559
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 560
    new-instance v1, Lorg/json/XMLTokener;

    invoke-direct {v1, p0}, Lorg/json/XMLTokener;-><init>(Ljava/io/Reader;)V

    .line 561
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/json/XMLTokener;->more()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 562
    const-string v2, "<"

    invoke-virtual {v1, v2}, Lorg/json/XMLTokener;->skipPast(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v1}, Lorg/json/XMLTokener;->more()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 564
    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p1}, Lorg/json/XML;->parse(Lorg/json/XMLTokener;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/XMLParserConfiguration;)Z

    goto :goto_0

    .line 567
    :cond_1
    return-object v0
.end method

.method public static toJSONObject(Ljava/io/Reader;Z)Lorg/json/JSONObject;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 533
    if-eqz p1, :cond_0

    .line 534
    sget-object v0, Lorg/json/XMLParserConfiguration;->KEEP_STRINGS:Lorg/json/XMLParserConfiguration;

    invoke-static {p0, v0}, Lorg/json/XML;->toJSONObject(Ljava/io/Reader;Lorg/json/XMLParserConfiguration;)Lorg/json/JSONObject;

    move-result-object v0

    .line 536
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/json/XMLParserConfiguration;->ORIGINAL:Lorg/json/XMLParserConfiguration;

    invoke-static {p0, v0}, Lorg/json/XML;->toJSONObject(Ljava/io/Reader;Lorg/json/XMLParserConfiguration;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public static toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 490
    sget-object v0, Lorg/json/XMLParserConfiguration;->ORIGINAL:Lorg/json/XMLParserConfiguration;

    invoke-static {p0, v0}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;Lorg/json/XMLParserConfiguration;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONObject(Ljava/lang/String;Lorg/json/XMLParserConfiguration;)Lorg/json/JSONObject;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 616
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/json/XML;->toJSONObject(Ljava/io/Reader;Lorg/json/XMLParserConfiguration;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONObject(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 592
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/json/XML;->toJSONObject(Ljava/io/Reader;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 628
    const/4 v0, 0x0

    sget-object v1, Lorg/json/XMLParserConfiguration;->ORIGINAL:Lorg/json/XMLParserConfiguration;

    invoke-static {p0, v0, v1}, Lorg/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;Lorg/json/XMLParserConfiguration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 642
    sget-object v0, Lorg/json/XMLParserConfiguration;->ORIGINAL:Lorg/json/XMLParserConfiguration;

    invoke-static {p0, p1, v0}, Lorg/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;Lorg/json/XMLParserConfiguration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;Lorg/json/XMLParserConfiguration;)Ljava/lang/String;
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x3c

    const/4 v3, 0x0

    const/16 v9, 0x3e

    .line 659
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 664
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_b

    .line 667
    if-eqz p1, :cond_0

    .line 668
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 669
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 675
    :cond_0
    check-cast p0, Lorg/json/JSONObject;

    .line 676
    invoke-virtual {p0}, Lorg/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 677
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 678
    if-nez v2, :cond_3

    .line 679
    const-string v1, ""

    .line 685
    :goto_1
    iget-object v2, p2, Lorg/json/XMLParserConfiguration;->cDataTagName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 686
    instance-of v0, v1, Lorg/json/JSONArray;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 687
    check-cast v0, Lorg/json/JSONArray;

    .line 688
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v1, v3

    .line 690
    :goto_2
    if-ge v1, v2, :cond_1

    .line 691
    if-lez v1, :cond_2

    .line 692
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 694
    :cond_2
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v6

    .line 695
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 680
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 681
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 698
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 703
    :cond_5
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_7

    .line 704
    check-cast v1, Lorg/json/JSONArray;

    .line 705
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v2, v3

    .line 707
    :goto_3
    if-ge v2, v6, :cond_1

    .line 708
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v7

    .line 709
    instance-of v8, v7, Lorg/json/JSONArray;

    if-eqz v8, :cond_6

    .line 710
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 713
    const/4 v8, 0x0

    invoke-static {v7, v8, p2}, Lorg/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;Lorg/json/XMLParserConfiguration;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    const-string v7, "</"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 707
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 718
    :cond_6
    invoke-static {v7, v0, p2}, Lorg/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;Lorg/json/XMLParserConfiguration;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 721
    :cond_7
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 722
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    const-string v0, "/>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 729
    :cond_8
    invoke-static {v1, v0, p2}, Lorg/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;Lorg/json/XMLParserConfiguration;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 732
    :cond_9
    if-eqz p1, :cond_a

    .line 735
    const-string v0, "</"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 739
    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 762
    :goto_5
    return-object v0

    .line 743
    :cond_b
    if-eqz p0, :cond_10

    instance-of v0, p0, Lorg/json/JSONArray;

    if-nez v0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 744
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 745
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    .line 749
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v1, v3

    .line 751
    :goto_7
    if-ge v1, v2, :cond_f

    .line 752
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    .line 756
    if-nez p1, :cond_e

    const-string v0, "array"

    :goto_8
    invoke-static {v3, v0, p2}, Lorg/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;Lorg/json/XMLParserConfiguration;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 747
    :cond_d
    check-cast p0, Lorg/json/JSONArray;

    goto :goto_6

    :cond_e
    move-object v0, p1

    .line 756
    goto :goto_8

    .line 758
    :cond_f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 761
    :cond_10
    if-nez p0, :cond_11

    const-string v0, "null"

    .line 762
    :goto_9
    if-nez p1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 761
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 763
    :cond_12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 764
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_14
    move-object v1, v2

    goto/16 :goto_1
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    .line 196
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 197
    const/16 v4, 0x26

    if-ne v3, v4, :cond_1

    .line 198
    const/16 v4, 0x3b

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 199
    if-le v4, v0, :cond_0

    .line 200
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-static {v3}, Lorg/json/XMLTokener;->unescapeEntity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 195
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 211
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 214
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
