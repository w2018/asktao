.class public Lorg/json/JSONML;
.super Ljava/lang/Object;
.source "JSONML.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;Z)Ljava/lang/Object;
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
    const/4 v5, 0x0

    const/16 v8, 0x5b

    const/16 v7, 0x2d

    .line 68
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/json/XMLTokener;->more()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    const-string v0, "Bad XML"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextContent()Ljava/lang/Object;

    move-result-object v0

    .line 72
    sget-object v1, Lorg/json/XML;->LT:Ljava/lang/Character;

    if-ne v0, v1, :cond_23

    .line 73
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    .line 74
    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_e

    .line 75
    sget-object v1, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v0, v1, :cond_3

    .line 79
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    .line 80
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 81
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a closing name instead of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_2
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-eq v1, v2, :cond_1c

    .line 86
    const-string v0, "Misshaped close tag"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 89
    :cond_3
    sget-object v1, Lorg/json/XML;->BANG:Ljava/lang/Character;

    if-ne v0, v1, :cond_c

    .line 93
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 94
    if-ne v0, v7, :cond_5

    .line 95
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    if-ne v0, v7, :cond_4

    .line 96
    const-string v0, "-->"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->skipPast(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_4
    invoke-virtual {p0}, Lorg/json/XMLTokener;->back()V

    goto :goto_0

    .line 100
    :cond_5
    if-ne v0, v8, :cond_7

    .line 101
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    .line 102
    const-string v1, "CDATA"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    if-ne v0, v8, :cond_6

    .line 103
    if-eqz p2, :cond_0

    .line 104
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextCDATA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 107
    :cond_6
    const-string v0, "Expected \'CDATA[\'"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 110
    :cond_7
    const/4 v0, 0x1

    .line 112
    :cond_8
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextMeta()Ljava/lang/Object;

    move-result-object v1

    .line 113
    if-nez v1, :cond_9

    .line 114
    const-string v0, "Missing \'>\' after \'<!\'."

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 115
    :cond_9
    sget-object v2, Lorg/json/XML;->LT:Ljava/lang/Character;

    if-ne v1, v2, :cond_b

    .line 116
    add-int/lit8 v0, v0, 0x1

    .line 120
    :cond_a
    :goto_1
    if-gtz v0, :cond_8

    goto/16 :goto_0

    .line 117
    :cond_b
    sget-object v2, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-ne v1, v2, :cond_a

    .line 118
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 122
    :cond_c
    sget-object v1, Lorg/json/XML;->QUEST:Ljava/lang/Character;

    if-ne v0, v1, :cond_d

    .line 126
    const-string v0, "?>"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->skipPast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :cond_d
    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 134
    :cond_e
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tagName \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 137
    :cond_f
    check-cast v0, Ljava/lang/String;

    .line 138
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 139
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 140
    if-eqz p1, :cond_12

    .line 141
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 142
    if-eqz p2, :cond_10

    .line 143
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_10
    :goto_2
    move-object v1, v5

    .line 153
    :goto_3
    if-nez v1, :cond_11

    .line 154
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    .line 156
    :cond_11
    if-nez v1, :cond_13

    .line 157
    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 146
    :cond_12
    const-string v1, "tagName"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    if-eqz p2, :cond_10

    .line 148
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 159
    :cond_13
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_15

    .line 181
    if-eqz p1, :cond_14

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_14

    .line 182
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 187
    :cond_14
    sget-object v2, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v1, v2, :cond_1e

    .line 188
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-eq v0, v1, :cond_1b

    .line 189
    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 165
    :cond_15
    check-cast v1, Ljava/lang/String;

    .line 166
    if-nez p1, :cond_17

    const-string v2, "tagName"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "childNode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 167
    :cond_16
    const-string v0, "Reserved attribute."

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 169
    :cond_17
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v2

    .line 170
    sget-object v6, Lorg/json/XML;->EQ:Ljava/lang/Character;

    if-ne v2, v6, :cond_1a

    .line 171
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v2

    .line 172
    instance-of v6, v2, Ljava/lang/String;

    if-nez v6, :cond_18

    .line 173
    const-string v0, "Missing value"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 175
    :cond_18
    if-eqz p3, :cond_19

    check-cast v2, Ljava/lang/String;

    :goto_4
    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v5

    .line 176
    goto :goto_3

    .line 175
    :cond_19
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/json/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    .line 178
    :cond_1a
    const-string v6, ""

    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v2

    goto/16 :goto_3

    .line 191
    :cond_1b
    if-nez p2, :cond_0

    .line 192
    if-eqz p1, :cond_1d

    move-object v0, v3

    .line 218
    :cond_1c
    :goto_5
    return-object v0

    :cond_1d
    move-object v0, v4

    .line 195
    goto :goto_5

    .line 201
    :cond_1e
    sget-object v2, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-eq v1, v2, :cond_1f

    .line 202
    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 204
    :cond_1f
    invoke-static {p0, p1, v3, p3}, Lorg/json/JSONML;->parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 205
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mismatched \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' and \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 211
    :cond_20
    if-nez p1, :cond_21

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_21

    .line 212
    const-string v0, "childNodes"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    :cond_21
    if-nez p2, :cond_0

    .line 215
    if-eqz p1, :cond_22

    move-object v0, v3

    .line 216
    goto :goto_5

    :cond_22
    move-object v0, v4

    .line 218
    goto :goto_5

    .line 224
    :cond_23
    if-eqz p2, :cond_0

    .line 225
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 226
    if-eqz p3, :cond_25

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/json/XML;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    :cond_24
    :goto_6
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 226
    :cond_25
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/json/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6
.end method

.method public static toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Lorg/json/XMLTokener;

    invoke-direct {v0, p0}, Lorg/json/XMLTokener;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/json/JSONML;->parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    return-object v0
.end method

.method public static toJSONArray(Ljava/lang/String;Z)Lorg/json/JSONArray;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lorg/json/XMLTokener;

    invoke-direct {v0, p0}, Lorg/json/XMLTokener;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lorg/json/JSONML;->parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    return-object v0
.end method

.method public static toJSONArray(Lorg/json/XMLTokener;)Lorg/json/JSONArray;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 308
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/json/JSONML;->parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    return-object v0
.end method

.method public static toJSONArray(Lorg/json/XMLTokener;Z)Lorg/json/JSONArray;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 291
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lorg/json/JSONML;->parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    return-object v0
.end method

.method public static toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 326
    new-instance v0, Lorg/json/XMLTokener;

    invoke-direct {v0, p0}, Lorg/json/XMLTokener;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v2, v1, v2}, Lorg/json/JSONML;->parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public static toJSONObject(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Lorg/json/XMLTokener;

    invoke-direct {v0, p0}, Lorg/json/XMLTokener;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lorg/json/JSONML;->parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public static toJSONObject(Lorg/json/XMLTokener;)Lorg/json/JSONObject;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 364
    const/4 v0, 0x0

    invoke-static {p0, v1, v0, v1}, Lorg/json/JSONML;->parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public static toJSONObject(Lorg/json/XMLTokener;Z)Lorg/json/JSONObject;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 384
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lorg/json/JSONML;->parse(Lorg/json/XMLTokener;ZLorg/json/JSONArray;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public static toString(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x3c

    const/16 v10, 0x2f

    const/16 v9, 0x22

    const/4 v1, 0x1

    const/16 v8, 0x3e

    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-static {v0}, Lorg/json/XML;->noSpace(Ljava/lang/String;)V

    .line 406
    invoke-static {v0}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 407
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 411
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    .line 412
    const/4 v2, 0x2

    .line 413
    check-cast v0, Lorg/json/JSONObject;

    .line 418
    invoke-virtual {v0}, Lorg/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 419
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 420
    invoke-static {v1}, Lorg/json/XML;->noSpace(Ljava/lang/String;)V

    .line 421
    if-eqz v6, :cond_0

    .line 422
    const/16 v7, 0x20

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 423
    invoke-static {v1}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    const/16 v1, 0x3d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    move v0, v2

    .line 436
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 437
    if-lt v0, v2, :cond_3

    .line 438
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 462
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v1

    .line 431
    goto :goto_1

    .line 441
    :cond_3
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v0

    .line 443
    :cond_4
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 444
    add-int/lit8 v1, v1, 0x1

    .line 445
    if-eqz v0, :cond_5

    .line 446
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 447
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    :cond_5
    :goto_3
    if-lt v1, v2, :cond_4

    .line 457
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 448
    :cond_6
    instance-of v5, v0, Lorg/json/JSONObject;

    if-eqz v5, :cond_7

    .line 449
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lorg/json/JSONML;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 450
    :cond_7
    instance-of v5, v0, Lorg/json/JSONArray;

    if-eqz v5, :cond_8

    .line 451
    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 453
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public static toString(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x3c

    const/16 v8, 0x2f

    const/16 v6, 0x22

    const/16 v7, 0x3e

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 485
    const-string v0, "tagName"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    if-nez v0, :cond_0

    .line 487
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 540
    :goto_0
    return-object v0

    .line 489
    :cond_0
    invoke-static {v0}, Lorg/json/XML;->noSpace(Ljava/lang/String;)V

    .line 490
    invoke-static {v0}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 491
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {p0}, Lorg/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 498
    const-string v4, "tagName"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "childNodes"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 499
    invoke-static {v0}, Lorg/json/XML;->noSpace(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 501
    if-eqz v4, :cond_1

    .line 502
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 503
    invoke-static {v0}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    const/16 v0, 0x3d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 514
    :cond_2
    const-string v0, "childNodes"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 515
    if-nez v4, :cond_3

    .line 516
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 540
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 519
    :cond_3
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 521
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, v5, :cond_8

    .line 522
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 523
    if-eqz v0, :cond_4

    .line 524
    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 525
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    :cond_4
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 526
    :cond_5
    instance-of v6, v0, Lorg/json/JSONObject;

    if-eqz v6, :cond_6

    .line 527
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lorg/json/JSONML;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 528
    :cond_6
    instance-of v6, v0, Lorg/json/JSONArray;

    if-eqz v6, :cond_7

    .line 529
    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 531
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 535
    :cond_8
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
