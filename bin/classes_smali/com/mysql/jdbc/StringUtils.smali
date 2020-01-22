.class public Lcom/mysql/jdbc/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/StringUtils$SearchMode;
    }
.end annotation


# static fields
.field private static final BYTE_RANGE:I = 0x100

.field private static final HEX_DIGITS:[C = null

.field private static final NON_COMMENTS_MYSQL_VERSION_REF_LENGTH:I = 0x5

.field public static final SEARCH_MODE__ALL:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_MODE__BSESC_COM_WS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_MODE__BSESC_MRK_WS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_MODE__COM_WS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_MODE__MRK_COM_WS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_MODE__MRK_WS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_MODE__NONE:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_ID_CHARS:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyzABCDEFGHIGKLMNOPQRSTUVWXYZ0123456789$_#@"

.field static final WILDCARD_ESCAPE:C = '\\'

.field static final WILDCARD_MANY:C = '%'

.field static final WILDCARD_ONE:C = '_'

.field private static final WILD_COMPARE_CONTINUE_WITH_WILD:I = 0x1

.field private static final WILD_COMPARE_MATCH:I = 0x0

.field private static final WILD_COMPARE_NO_MATCH:I = -0x1

.field private static allBytes:[B

.field private static byteToChars:[C

.field private static final charsetsByAlias:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static final platformEncoding:Ljava/lang/String;

.field private static toPlainStringMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x100

    const/16 v5, 0xff

    const/4 v0, 0x0

    .line 63
    const-class v1, Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    .line 68
    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v2, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BLOCK_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v3, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_LINE_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v4, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    .line 74
    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->ALLOW_BACKSLASH_ESCAPE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v2, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BLOCK_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v3, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_LINE_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v4, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__BSESC_COM_WS:Ljava/util/Set;

    .line 80
    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->ALLOW_BACKSLASH_ESCAPE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v2, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v3, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__BSESC_MRK_WS:Ljava/util/Set;

    .line 86
    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BLOCK_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v2, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_LINE_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v3, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__COM_WS:Ljava/util/Set;

    .line 92
    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v2, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_WS:Ljava/util/Set;

    .line 98
    const-class v1, Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__NONE:Ljava/util/Set;

    .line 105
    new-array v1, v6, [B

    sput-object v1, Lcom/mysql/jdbc/StringUtils;->allBytes:[B

    .line 107
    new-array v1, v6, [C

    sput-object v1, Lcom/mysql/jdbc/StringUtils;->byteToChars:[C

    .line 119
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/mysql/jdbc/StringUtils;->charsetsByAlias:Ljava/util/concurrent/ConcurrentHashMap;

    .line 121
    const-string v1, "file.encoding"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/StringUtils;->platformEncoding:Ljava/lang/String;

    .line 151
    const/16 v1, -0x80

    :goto_0
    const/16 v2, 0x7f

    if-gt v1, v2, :cond_0

    .line 152
    sget-object v2, Lcom/mysql/jdbc/StringUtils;->allBytes:[B

    add-int/lit16 v3, v1, 0x80

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/mysql/jdbc/StringUtils;->allBytes:[B

    invoke-direct {v1, v2, v0, v5}, Ljava/lang/String;-><init>([BII)V

    .line 157
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 159
    :goto_1
    if-ge v0, v5, :cond_1

    if-ge v0, v2, :cond_1

    .line 160
    sget-object v3, Lcom/mysql/jdbc/StringUtils;->byteToChars:[C

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v3, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 164
    :cond_1
    :try_start_0
    const-class v0, Ljava/math/BigDecimal;

    const-string v1, "toPlainString"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/StringUtils;->toPlainStringMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2376
    :goto_2
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mysql/jdbc/StringUtils;->HEX_DIGITS:[C

    return-void

    .line 165
    :catch_0
    move-exception v0

    goto :goto_2

    .line 2376
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static appendAsHex(Ljava/lang/StringBuilder;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2386
    if-nez p1, :cond_0

    .line 2387
    const-string v0, "0x0"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2406
    :goto_0
    return-void

    .line 2391
    :cond_0
    const/16 v1, 0x20

    .line 2393
    const/4 v0, 0x0

    .line 2395
    const-string v2, "0x"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2397
    :cond_1
    add-int/lit8 v1, v1, -0x4

    .line 2398
    ushr-int v2, p1, v1

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    .line 2399
    if-eqz v0, :cond_3

    .line 2400
    sget-object v3, Lcom/mysql/jdbc/StringUtils;->HEX_DIGITS:[C

    aget-char v2, v3, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2405
    :cond_2
    :goto_1
    if-nez v1, :cond_1

    goto :goto_0

    .line 2401
    :cond_3
    if-eqz v2, :cond_2

    .line 2402
    sget-object v0, Lcom/mysql/jdbc/StringUtils;->HEX_DIGITS:[C

    aget-char v0, v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2403
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static appendAsHex(Ljava/lang/StringBuilder;[B)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 2379
    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2380
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-byte v2, p1, v0

    .line 2381
    sget-object v3, Lcom/mysql/jdbc/StringUtils;->HEX_DIGITS:[C

    ushr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mysql/jdbc/StringUtils;->HEX_DIGITS:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2383
    :cond_0
    return-void
.end method

.method public static consistentToString(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 180
    if-nez p0, :cond_0

    .line 194
    :goto_0
    return-object v0

    .line 184
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/StringUtils;->toPlainStringMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 186
    :try_start_0
    sget-object v1, Lcom/mysql/jdbc/StringUtils;->toPlainStringMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 194
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 187
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static dumpAsHex([BI)Ljava/lang/String;
    .locals 14
    .parameter
    .parameter

    .prologue
    const/16 v13, 0x7f

    const/16 v12, 0x20

    const/4 v11, 0x1

    const/16 v10, 0x8

    const/4 v2, 0x0

    .line 208
    new-instance v6, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, p1, 0x4

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 211
    div-int/lit8 v7, p1, 0x8

    move v5, v2

    move v1, v2

    .line 213
    :goto_0
    if-ge v5, v7, :cond_4

    if-ge v1, p1, :cond_4

    move v3, v2

    move v4, v1

    .line 216
    :goto_1
    if-ge v3, v10, :cond_1

    .line 217
    aget-byte v0, p0, v4

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v11, :cond_0

    .line 220
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    add-int/lit8 v4, v4, 0x1

    .line 216
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 227
    :cond_1
    const-string v0, "    "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 229
    :goto_2
    if-ge v0, v10, :cond_3

    .line 230
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    .line 232
    if-le v3, v12, :cond_2

    if-ge v3, v13, :cond_2

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 235
    :cond_2
    const-string v3, ". "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 241
    :cond_3
    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_4
    move v3, v1

    .line 246
    :goto_4
    if-ge v3, p1, :cond_6

    .line 247
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v11, :cond_5

    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    add-int/lit8 v2, v2, 0x1

    .line 246
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_6
    move v0, v2

    .line 257
    :goto_5
    if-ge v0, v10, :cond_7

    .line 258
    const-string v2, "   "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 261
    :cond_7
    const-string v0, "    "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 263
    :goto_6
    if-ge v0, p1, :cond_9

    .line 264
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 266
    if-le v1, v12, :cond_8

    if-ge v1, v13, :cond_8

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 269
    :cond_8
    const-string v1, ". "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 273
    :cond_9
    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static endsWith([BLjava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    move v0, v1

    .line 279
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 280
    array-length v2, p0

    sub-int/2addr v2, v0

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    .line 282
    aget-byte v2, p0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    .line 283
    const/4 v1, 0x0

    .line 286
    :cond_0
    return v1

    .line 279
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static escapeEasternUnicodeByteStream([BLjava/lang/String;)[B
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x62

    const/4 v0, 0x0

    const/16 v6, 0x5c

    .line 301
    if-nez p0, :cond_0

    .line 302
    const/4 v0, 0x0

    .line 392
    :goto_0
    return-object v0

    .line 304
    :cond_0
    array-length v1, p0

    if-nez v1, :cond_1

    .line 305
    new-array v0, v0, [B

    goto :goto_0

    .line 308
    :cond_1
    array-length v3, p0

    .line 312
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move v1, v0

    .line 315
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_2

    .line 317
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v1, v2

    .line 384
    :goto_2
    if-lt v1, v3, :cond_8

    .line 392
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_2
    aget-byte v2, p0, v1

    .line 324
    if-gez v2, :cond_3

    .line 325
    add-int/lit16 v2, v2, 0x100

    .line 329
    :cond_3
    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 347
    const/16 v5, 0x80

    if-lt v2, v5, :cond_6

    .line 348
    add-int/lit8 v2, v3, -0x1

    if-ge v1, v2, :cond_5

    .line 349
    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p0, v2

    .line 351
    if-gez v2, :cond_4

    .line 352
    add-int/lit16 v2, v2, 0x100

    .line 356
    :cond_4
    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 357
    add-int/lit8 v1, v1, 0x1

    .line 360
    if-ne v2, v6, :cond_5

    .line 361
    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 381
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 364
    :cond_6
    if-ne v2, v6, :cond_5

    .line 365
    add-int/lit8 v2, v3, -0x1

    if-ge v1, v2, :cond_5

    .line 366
    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p0, v2

    .line 368
    if-gez v2, :cond_7

    .line 369
    add-int/lit16 v2, v2, 0x100

    .line 372
    :cond_7
    if-ne v2, v7, :cond_5

    .line 374
    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 375
    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 389
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static escapeQuote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2038
    if-nez p0, :cond_0

    .line 2039
    const/4 v0, 0x0

    .line 2066
    :goto_0
    return-object v0

    .line 2042
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1, p1}, Lcom/mysql/jdbc/StringUtils;->stripEnclosure([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v0

    .line 2044
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2048
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2049
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2051
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2053
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2054
    :goto_1
    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    .line 2056
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2057
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2058
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2060
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 2063
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 127
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/StringUtils;->charsetsByAlias:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    .line 129
    if-nez v0, :cond_0

    .line 130
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 131
    sget-object v0, Lcom/mysql/jdbc/StringUtils;->charsetsByAlias:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 132
    if-eqz v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :catch_1
    move-exception v0

    .line 144
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :catch_2
    move-exception v0

    .line 146
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static firstAlphaCharUc(Ljava/lang/String;I)C
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 426
    if-nez p0, :cond_1

    .line 440
    :cond_0
    :goto_0
    return v0

    .line 430
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 432
    :goto_1
    if-ge p1, v1, :cond_0

    .line 433
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 435
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 436
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    goto :goto_0

    .line 432
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method public static firstNonWsCharUc(Ljava/lang/String;)C
    .locals 1
    .parameter

    .prologue
    .line 404
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mysql/jdbc/StringUtils;->firstNonWsCharUc(Ljava/lang/String;I)C

    move-result v0

    return v0
.end method

.method public static firstNonWsCharUc(Ljava/lang/String;I)C
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 408
    if-nez p0, :cond_1

    .line 422
    :cond_0
    :goto_0
    return v0

    .line 412
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 414
    :goto_1
    if-ge p1, v1, :cond_0

    .line 415
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 417
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 418
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    goto :goto_0

    .line 414
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method public static fixDecimalExponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x2b

    const/4 v1, -0x1

    .line 453
    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 455
    if-ne v0, v1, :cond_0

    .line 456
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 459
    :cond_0
    if-eq v0, v1, :cond_1

    .line 460
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_1

    .line 461
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 463
    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1

    if-eq v1, v4, :cond_1

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 465
    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 467
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 473
    :cond_1
    return-object p0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 3
    .parameter

    .prologue
    .line 2325
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v2, Lcom/mysql/jdbc/StringUtils;->platformEncoding:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;IILjava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2330
    :goto_0
    return-object v0

    .line 2326
    :catch_0
    move-exception v0

    .line 2330
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;II)[B
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2335
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/StringUtils;->platformEncoding:Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;IILjava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2340
    :goto_0
    return-object v0

    .line 2336
    :catch_0
    move-exception v0

    .line 2340
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;IILjava/lang/String;)[B
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2353
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2354
    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 2355
    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 2369
    :goto_0
    return-object v0

    .line 2357
    :cond_1
    invoke-virtual {p0, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 2360
    :cond_2
    invoke-static {p3}, Lcom/mysql/jdbc/StringUtils;->findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 2362
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1, p1, p2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2365
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 2366
    new-array v0, v2, [B

    .line 2367
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;IIZLcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 3
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
    .line 594
    if-eqz p1, :cond_1

    .line 595
    :try_start_0
    invoke-virtual {p1, p0, p4, p5}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytes(Ljava/lang/String;II)[B

    move-result-object v0

    .line 610
    :cond_0
    :goto_0
    return-object v0

    .line 596
    :cond_1
    if-nez p2, :cond_2

    .line 597
    invoke-static {p0, p4, p5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;II)[B

    move-result-object v0

    goto :goto_0

    .line 599
    :cond_2
    add-int v0, p4, p5

    invoke-virtual {p0, p4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 600
    invoke-static {v1, p2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 602
    if-nez p6, :cond_0

    invoke-static {p2}, Lcom/mysql/jdbc/CharsetMapping;->requiresEscapeEasternUnicode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 604
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 605
    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->escapeEasternUnicodeByteStream([BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 611
    :catch_0
    move-exception v0

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StringUtils.5"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "StringUtils.6"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public static getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 2
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
    .line 563
    if-eqz p1, :cond_1

    .line 564
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 578
    :cond_0
    :goto_0
    return-object v0

    .line 565
    :cond_1
    if-nez p2, :cond_2

    .line 566
    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 568
    :cond_2
    invoke-static {p0, p2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 570
    if-nez p4, :cond_0

    invoke-static {p2}, Lcom/mysql/jdbc/CharsetMapping;->requiresEscapeEasternUnicode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 573
    invoke-static {v0, p0}, Lcom/mysql/jdbc/StringUtils;->escapeEasternUnicodeByteStream([BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 579
    :catch_0
    move-exception v0

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StringUtils.5"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "StringUtils.6"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2344
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;IILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static final getBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 8
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
    .line 640
    if-eqz p6, :cond_0

    :try_start_0
    invoke-interface {p6, p1}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v1

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p7

    .line 642
    invoke-static/range {v0 .. v7}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;IIZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v0

    return-object v0

    .line 640
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->getInstance(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/SingleByteCharsetConverter;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 643
    :catch_0
    move-exception v0

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StringUtils.5"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "StringUtils.6"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 6
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
    .line 624
    if-eqz p4, :cond_0

    :try_start_0
    invoke-interface {p4, p1}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v1

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    .line 626
    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v0

    return-object v0

    .line 624
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->getInstance(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/SingleByteCharsetConverter;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 627
    :catch_0
    move-exception v0

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StringUtils.5"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "StringUtils.6"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public static getBytes([C)[B
    .locals 3
    .parameter

    .prologue
    .line 2288
    const/4 v0, 0x0

    :try_start_0
    array-length v1, p0

    sget-object v2, Lcom/mysql/jdbc/StringUtils;->platformEncoding:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/mysql/jdbc/StringUtils;->getBytes([CIILjava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2293
    :goto_0
    return-object v0

    .line 2289
    :catch_0
    move-exception v0

    .line 2293
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBytes([CII)[B
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2298
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/StringUtils;->platformEncoding:Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/mysql/jdbc/StringUtils;->getBytes([CIILjava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2303
    :goto_0
    return-object v0

    .line 2299
    :catch_0
    move-exception v0

    .line 2303
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBytes([CIILjava/lang/String;)[B
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2311
    invoke-static {p3}, Lcom/mysql/jdbc/StringUtils;->findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 2313
    invoke-static {p0, p1, p2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2316
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 2317
    new-array v2, v1, [B

    .line 2318
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2320
    return-object v2
.end method

.method public static getBytes([CLcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;IIZLcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 2
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
    .line 516
    if-eqz p1, :cond_1

    .line 517
    :try_start_0
    invoke-virtual {p1, p0, p4, p5}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytes([CII)[B

    move-result-object v0

    .line 531
    :cond_0
    :goto_0
    return-object v0

    .line 518
    :cond_1
    if-nez p2, :cond_2

    .line 519
    invoke-static {p0, p4, p5}, Lcom/mysql/jdbc/StringUtils;->getBytes([CII)[B

    move-result-object v0

    goto :goto_0

    .line 521
    :cond_2
    invoke-static {p0, p4, p5, p2}, Lcom/mysql/jdbc/StringUtils;->getBytes([CIILjava/lang/String;)[B

    move-result-object v0

    .line 523
    if-nez p6, :cond_0

    invoke-static {p2}, Lcom/mysql/jdbc/CharsetMapping;->requiresEscapeEasternUnicode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 526
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p4, p5}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->escapeEasternUnicodeByteStream([BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StringUtils.0"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "StringUtils.1"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public static getBytes([CLcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 2
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
    .line 485
    if-eqz p1, :cond_1

    .line 486
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytes([C)[B

    move-result-object v0

    .line 500
    :cond_0
    :goto_0
    return-object v0

    .line 487
    :cond_1
    if-nez p2, :cond_2

    .line 488
    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->getBytes([C)[B

    move-result-object v0

    goto :goto_0

    .line 490
    :cond_2
    invoke-static {p0, p2}, Lcom/mysql/jdbc/StringUtils;->getBytes([CLjava/lang/String;)[B

    move-result-object v0

    .line 492
    if-nez p4, :cond_0

    invoke-static {p2}, Lcom/mysql/jdbc/CharsetMapping;->requiresEscapeEasternUnicode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 495
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->escapeEasternUnicodeByteStream([BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StringUtils.0"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "StringUtils.1"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public static getBytes([CLjava/lang/String;)[B
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2307
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/mysql/jdbc/StringUtils;->getBytes([CIILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytes([CLjava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 6
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
    .line 545
    if-eqz p4, :cond_0

    :try_start_0
    invoke-interface {p4, p1}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v1

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    .line 547
    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->getBytes([CLcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v0

    return-object v0

    .line 545
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->getInstance(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/SingleByteCharsetConverter;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StringUtils.0"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "StringUtils.1"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public static getBytesNullTerminated(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2409
    invoke-static {p1}, Lcom/mysql/jdbc/StringUtils;->findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 2411
    invoke-virtual {v0, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2413
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 2414
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [B

    .line 2415
    invoke-virtual {v0, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2416
    aput-byte v3, v2, v1

    .line 2418
    return-object v2
.end method

.method public static getBytesWrapped(Ljava/lang/String;CCLcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 3
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
    .line 658
    if-eqz p3, :cond_1

    .line 659
    :try_start_0
    invoke-virtual {p3, p0, p1, p2}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytesWrapped(Ljava/lang/String;CC)[B

    move-result-object v0

    .line 684
    :cond_0
    :goto_0
    return-object v0

    .line 660
    :cond_1
    if-nez p4, :cond_2

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 662
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 668
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 669
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 673
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 674
    invoke-static {v1, p4}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 676
    if-nez p6, :cond_0

    invoke-static {p4}, Lcom/mysql/jdbc/CharsetMapping;->requiresEscapeEasternUnicode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 678
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 679
    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->escapeEasternUnicodeByteStream([BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 685
    :catch_0
    move-exception v0

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StringUtils.10"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "StringUtils.11"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public static getInt([B)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 692
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    return v0
.end method

.method public static getInt([BII)I
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 696
    const/16 v8, 0xa

    move v0, p1

    .line 701
    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v3, p0, v0

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 705
    :cond_0
    if-ne v0, p2, :cond_1

    .line 706
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_1
    aget-byte v3, p0, v0

    int-to-char v3, v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_4

    .line 714
    add-int/lit8 v0, v0, 0x1

    move v3, v0

    move v0, v1

    .line 722
    :goto_1
    const v9, 0xccccccc

    .line 723
    const/4 v4, 0x7

    .line 725
    if-eqz v0, :cond_2

    .line 726
    const/16 v4, 0x8

    :cond_2
    move v5, v2

    move v7, v3

    .line 733
    :goto_2
    if-ge v7, p2, :cond_3

    .line 734
    aget-byte v6, p0, v7

    int-to-char v6, v6

    .line 736
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 737
    add-int/lit8 v6, v6, -0x30

    int-to-char v6, v6

    .line 744
    :goto_3
    if-lt v6, v8, :cond_6

    .line 757
    :cond_3
    if-ne v7, v3, :cond_9

    .line 758
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :cond_4
    aget-byte v3, p0, v0

    int-to-char v3, v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_c

    .line 716
    add-int/lit8 v0, v0, 0x1

    move v3, v0

    move v0, v2

    goto :goto_1

    .line 738
    :cond_5
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 739
    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    add-int/lit8 v6, v6, -0x41

    add-int/lit8 v6, v6, 0xa

    int-to-char v6, v6

    goto :goto_3

    .line 749
    :cond_6
    if-gt v2, v9, :cond_7

    if-ne v2, v9, :cond_8

    if-le v6, v4, :cond_8

    :cond_7
    move v5, v1

    .line 733
    :goto_4
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_2

    .line 752
    :cond_8
    mul-int/2addr v2, v8

    .line 753
    add-int/2addr v2, v6

    goto :goto_4

    .line 761
    :cond_9
    if-eqz v5, :cond_a

    .line 762
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_a
    if-eqz v0, :cond_b

    neg-int v2, v2

    :cond_b
    return v2

    :cond_c
    move v3, v0

    move v0, v2

    goto :goto_1
.end method

.method public static getLong([B)J
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 770
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/StringUtils;->getLong([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong([BII)J
    .locals 15
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 774
    const/16 v10, 0xa

    move/from16 v2, p1

    .line 779
    :goto_0
    move/from16 v0, p2

    if-ge v2, v0, :cond_0

    aget-byte v1, p0, v2

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 780
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 783
    :cond_0
    move/from16 v0, p2

    if-ne v2, v0, :cond_1

    .line 784
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 788
    :cond_1
    const/4 v1, 0x0

    .line 790
    aget-byte v3, p0, v2

    int-to-char v3, v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_5

    .line 791
    const/4 v1, 0x1

    .line 792
    add-int/lit8 v2, v2, 0x1

    .line 800
    :cond_2
    :goto_1
    const-wide v3, 0x7fffffffffffffffL

    int-to-long v5, v10

    div-long v11, v3, v5

    .line 801
    const-wide v3, 0x7fffffffffffffffL

    int-to-long v5, v10

    rem-long/2addr v3, v5

    long-to-int v3, v3

    int-to-long v3, v3

    .line 803
    if-eqz v1, :cond_3

    .line 804
    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 807
    :cond_3
    const/4 v7, 0x0

    .line 808
    const-wide/16 v5, 0x0

    move v9, v2

    .line 810
    :goto_2
    move/from16 v0, p2

    if-ge v9, v0, :cond_4

    .line 811
    aget-byte v8, p0, v9

    int-to-char v8, v8

    .line 813
    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 814
    add-int/lit8 v8, v8, -0x30

    int-to-char v8, v8

    .line 821
    :goto_3
    if-lt v8, v10, :cond_7

    .line 834
    :cond_4
    if-ne v9, v2, :cond_a

    .line 835
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 793
    :cond_5
    aget-byte v3, p0, v2

    int-to-char v3, v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_2

    .line 794
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 815
    :cond_6
    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 816
    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    add-int/lit8 v8, v8, -0x41

    add-int/lit8 v8, v8, 0xa

    int-to-char v8, v8

    goto :goto_3

    .line 826
    :cond_7
    cmp-long v13, v5, v11

    if-gtz v13, :cond_8

    cmp-long v13, v5, v11

    if-nez v13, :cond_9

    int-to-long v13, v8

    cmp-long v13, v13, v3

    if-lez v13, :cond_9

    .line 827
    :cond_8
    const/4 v7, 0x1

    .line 810
    :goto_4
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_2

    .line 829
    :cond_9
    int-to-long v13, v10

    mul-long/2addr v5, v13

    .line 830
    int-to-long v13, v8

    add-long/2addr v5, v13

    goto :goto_4

    .line 838
    :cond_a
    if-eqz v7, :cond_b

    .line 839
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 843
    :cond_b
    if-eqz v1, :cond_c

    neg-long v5, v5

    :cond_c
    return-wide v5
.end method

.method public static getShort([B)S
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 847
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/StringUtils;->getShort([BII)S

    move-result v0

    return v0
.end method

.method public static getShort([BII)S
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 851
    const/16 v8, 0xa

    move v0, p1

    .line 856
    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v3, p0, v0

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 857
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 860
    :cond_0
    if-ne v0, p2, :cond_1

    .line 861
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 867
    :cond_1
    aget-byte v3, p0, v0

    int-to-char v3, v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_4

    .line 869
    add-int/lit8 v0, v0, 0x1

    move v3, v0

    move v0, v1

    .line 877
    :goto_1
    const/16 v4, 0xccc

    int-to-short v9, v4

    .line 878
    const/4 v4, 0x7

    int-to-short v4, v4

    .line 880
    if-eqz v0, :cond_2

    .line 881
    add-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    :cond_2
    move v5, v2

    move v7, v3

    .line 887
    :goto_2
    if-ge v7, p2, :cond_3

    .line 888
    aget-byte v6, p0, v7

    int-to-char v6, v6

    .line 890
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 891
    add-int/lit8 v6, v6, -0x30

    int-to-char v6, v6

    .line 898
    :goto_3
    if-lt v6, v8, :cond_6

    .line 911
    :cond_3
    if-ne v7, v3, :cond_9

    .line 912
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 870
    :cond_4
    aget-byte v3, p0, v0

    int-to-char v3, v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_c

    .line 871
    add-int/lit8 v0, v0, 0x1

    move v3, v0

    move v0, v2

    goto :goto_1

    .line 892
    :cond_5
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 893
    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    add-int/lit8 v6, v6, -0x41

    add-int/lit8 v6, v6, 0xa

    int-to-char v6, v6

    goto :goto_3

    .line 903
    :cond_6
    if-gt v2, v9, :cond_7

    if-ne v2, v9, :cond_8

    if-le v6, v4, :cond_8

    :cond_7
    move v5, v1

    .line 887
    :goto_4
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_2

    .line 906
    :cond_8
    mul-int/2addr v2, v8

    int-to-short v2, v2

    .line 907
    add-int/2addr v2, v6

    int-to-short v2, v2

    goto :goto_4

    .line 915
    :cond_9
    if-eqz v5, :cond_a

    .line 916
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_a
    if-eqz v0, :cond_b

    neg-int v0, v2

    int-to-short v2, v0

    :cond_b
    return v2

    :cond_c
    move v3, v0

    move v0, v2

    goto :goto_1
.end method

.method public static indexOf([BC)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1830
    if-nez p0, :cond_1

    .line 1842
    :cond_0
    :goto_0
    return v0

    .line 1834
    :cond_1
    array-length v2, p0

    .line 1836
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 1837
    aget-byte v3, p0, v1

    if-ne v3, p1, :cond_2

    move v0, v1

    .line 1838
    goto :goto_0

    .line 1836
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 948
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v1

    .line 976
    :cond_1
    :goto_0
    return v0

    .line 952
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 953
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 954
    sub-int v3, v0, v2

    .line 956
    if-gt p0, v3, :cond_3

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 957
    goto :goto_0

    .line 961
    :cond_4
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 962
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    move v0, p0

    .line 964
    :goto_1
    if-gt v0, v3, :cond_8

    .line 965
    invoke-static {p1, v0, v2, v4}, Lcom/mysql/jdbc/StringUtils;->isCharAtPosNotEqualIgnoreCase(Ljava/lang/String;ICC)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 967
    :cond_5
    add-int/lit8 v0, v0, 0x1

    if-gt v0, v3, :cond_6

    invoke-static {p1, v0, v2, v4}, Lcom/mysql/jdbc/StringUtils;->isCharAtPosNotEqualIgnoreCase(Ljava/lang/String;ICC)Z

    move-result v5

    if-nez v5, :cond_5

    .line 971
    :cond_6
    if-gt v0, v3, :cond_7

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 964
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    move v0, v1

    .line 976
    goto :goto_0
.end method

.method public static indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1118
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1119
    :cond_0
    const/4 v0, -0x1

    .line 1168
    :cond_1
    :goto_0
    return v0

    .line 1122
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1123
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1124
    sub-int v1, v0, v2

    .line 1126
    if-gt p0, v1, :cond_3

    if-nez v2, :cond_4

    .line 1127
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 1130
    :cond_4
    sget-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {p6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1131
    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_6

    .line 1132
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "StringUtils.15"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1134
    :cond_6
    if-nez p5, :cond_7

    .line 1135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "StringUtils.16"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p5, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1137
    :cond_7
    invoke-virtual {p5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_9

    aget-char v4, v2, v0

    .line 1138
    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    .line 1139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "StringUtils.16"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p5, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1137
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1145
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    .line 1146
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    .line 1148
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {p6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1150
    invoke-static {p6}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p6

    .line 1151
    sget-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {p6, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v6, p6

    :goto_2
    move v0, p0

    .line 1154
    :goto_3
    if-gt v0, v1, :cond_c

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1155
    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/StringUtils;->indexOfNextChar(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    .line 1157
    const/4 v2, -0x1

    if-ne v0, v2, :cond_a

    .line 1158
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 1161
    :cond_a
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1163
    invoke-static {v2, v7, v8}, Lcom/mysql/jdbc/StringUtils;->isCharEqualIgnoreCase(CCC)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1154
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1168
    :cond_c
    const/4 v0, -0x1

    goto/16 :goto_0

    :cond_d
    move-object v6, p6

    goto :goto_2
.end method

.method public static indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1091
    const-string v5, ""

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public static indexOfIgnoreCase(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I
    .locals 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1004
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1005
    :cond_0
    const/4 v2, -0x1

    .line 1068
    :goto_0
    return v2

    .line 1008
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    .line 1009
    const/4 v3, 0x0

    .line 1010
    move-object/from16 v0, p2

    array-length v4, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, p2, v2

    .line 1011
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    .line 1010
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1014
    :cond_2
    if-nez v3, :cond_3

    .line 1015
    const/4 v2, -0x1

    goto :goto_0

    .line 1018
    :cond_3
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    .line 1019
    if-lez v16, :cond_4

    add-int/lit8 v2, v16, -0x1

    :goto_2
    add-int/2addr v2, v3

    .line 1020
    sub-int v17, v15, v2

    .line 1022
    move/from16 v0, p0

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 1023
    const/4 v2, -0x1

    goto :goto_0

    .line 1019
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 1026
    :cond_5
    sget-object v2, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_7

    .line 1028
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "StringUtils.15"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x1

    aput-object p4, v4, v5

    invoke-static {v3, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1031
    :cond_7
    const/4 v2, 0x0

    aget-object v2, p2, v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1033
    invoke-static/range {p5 .. p5}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p5

    .line 1034
    sget-object v2, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object/from16 v7, p5

    .line 1039
    :goto_3
    sget-object v2, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v14

    .line 1040
    invoke-interface {v14, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1041
    sget-object v2, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v14, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move/from16 v2, p0

    .line 1043
    :goto_4
    move/from16 v0, v17

    if-gt v2, v0, :cond_e

    .line 1044
    const/4 v3, 0x0

    aget-object v4, p2, v3

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v3

    .line 1046
    const/4 v2, -0x1

    if-eq v3, v2, :cond_8

    move/from16 v0, v17

    if-le v3, v0, :cond_9

    .line 1047
    :cond_8
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 1050
    :cond_9
    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int v8, v3, v2

    .line 1051
    const/4 v4, 0x0

    .line 1052
    const/4 v2, 0x1

    .line 1053
    :goto_5
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v16

    if-ge v4, v0, :cond_c

    if-eqz v2, :cond_c

    .line 1054
    add-int/lit8 v9, v15, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v8 .. v14}, Lcom/mysql/jdbc/StringUtils;->indexOfNextChar(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v5

    .line 1055
    if-eq v8, v5, :cond_a

    aget-object v6, p2, v4

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 1057
    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    .line 1059
    :cond_b
    aget-object v6, p2, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int v8, v5, v6

    goto :goto_5

    .line 1063
    :cond_c
    if-eqz v2, :cond_d

    move v2, v3

    .line 1064
    goto/16 :goto_0

    .line 1043
    :cond_d
    add-int/lit8 v2, v3, 0x1

    goto :goto_4

    .line 1068
    :cond_e
    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_f
    move-object/from16 v7, p5

    goto :goto_3
.end method

.method public static indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 933
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static indexOfNextChar(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1191
    if-nez p2, :cond_1

    .line 1192
    const/4 v2, -0x1

    .line 1321
    :cond_0
    :goto_0
    return v2

    .line 1195
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    .line 1197
    if-lt p0, v6, :cond_2

    .line 1198
    const/4 v2, -0x1

    goto :goto_0

    .line 1202
    :cond_2
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1203
    add-int/lit8 v1, p0, 0x1

    if-ge v1, v6, :cond_3

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_1
    move v2, p0

    move v3, v1

    .line 1205
    :goto_2
    if-gt v2, p1, :cond_2d

    .line 1208
    add-int/lit8 v1, v2, 0x2

    if-ge v1, v6, :cond_4

    add-int/lit8 v1, v2, 0x2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1210
    :goto_3
    const/4 v5, 0x0

    .line 1213
    sget-object v7, Lcom/mysql/jdbc/StringUtils$SearchMode;->ALLOW_BACKSLASH_ESCAPE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    move-object/from16 v0, p6

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x5c

    if-ne v4, v7, :cond_6

    .line 1214
    add-int/lit8 v3, v2, 0x1

    .line 1217
    add-int/lit8 v2, v3, 0x2

    if-ge v2, v6, :cond_5

    add-int/lit8 v2, v3, 0x2

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_4
    move v12, v3

    move v3, v1

    move v1, v12

    .line 1205
    :goto_5
    add-int/lit8 p0, v1, 0x1

    move v4, v3

    move v3, v2

    move v2, p0

    goto :goto_2

    .line 1203
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 1208
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 1217
    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 1219
    :cond_6
    sget-object v7, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    move-object/from16 v0, p6

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_15

    .line 1221
    const/4 v3, 0x0

    .line 1223
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1224
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_b

    const/4 v1, 0x1

    :goto_6
    move v5, v3

    .line 1225
    :cond_7
    :goto_7
    add-int/lit8 v2, v2, 0x1

    if-gt v2, p1, :cond_12

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_8

    if-eqz v5, :cond_12

    .line 1226
    :cond_8
    if-nez v1, :cond_f

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v9, -0x1

    if-eq v3, v9, :cond_f

    .line 1228
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 1229
    const/4 v3, 0x0

    .line 1231
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v12, v3

    move v3, v2

    move v2, v12

    .line 1232
    :cond_9
    :goto_8
    add-int/lit8 v3, v3, 0x1

    if-gt v3, p1, :cond_e

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v9, :cond_a

    if-eqz v2, :cond_e

    .line 1234
    :cond_a
    if-ne v10, v8, :cond_c

    .line 1235
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1224
    :cond_b
    const/4 v1, 0x0

    goto :goto_6

    .line 1236
    :cond_c
    if-ne v10, v9, :cond_d

    .line 1237
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 1238
    :cond_d
    sget-object v11, Lcom/mysql/jdbc/StringUtils$SearchMode;->ALLOW_BACKSLASH_ESCAPE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_9

    .line 1239
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_e
    move v2, v3

    .line 1242
    goto :goto_7

    :cond_f
    if-ne v8, v4, :cond_10

    .line 1243
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_7

    .line 1244
    :cond_10
    if-ne v8, v7, :cond_11

    .line 1245
    add-int/lit8 v3, v5, -0x1

    move v5, v3

    goto :goto_7

    .line 1246
    :cond_11
    sget-object v3, Lcom/mysql/jdbc/StringUtils$SearchMode;->ALLOW_BACKSLASH_ESCAPE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x5c

    if-ne v8, v3, :cond_7

    .line 1247
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1251
    :cond_12
    add-int/lit8 v1, v2, 0x1

    if-ge v1, v6, :cond_13

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1252
    :goto_9
    add-int/lit8 v1, v2, 0x2

    if-ge v1, v6, :cond_14

    add-int/lit8 v1, v2, 0x2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_a
    move v12, v2

    move v2, v1

    move v1, v12

    .line 1254
    goto/16 :goto_5

    .line 1251
    :cond_13
    const/4 v3, 0x0

    goto :goto_9

    .line 1252
    :cond_14
    const/4 v1, 0x0

    goto :goto_a

    .line 1254
    :cond_15
    sget-object v7, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BLOCK_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    move-object/from16 v0, p6

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    const/16 v7, 0x2f

    if-ne v4, v7, :cond_1e

    const/16 v7, 0x2a

    if-ne v3, v7, :cond_1e

    .line 1255
    const/16 v3, 0x21

    if-eq v1, v3, :cond_19

    .line 1257
    add-int/lit8 v1, v2, 0x1

    .line 1259
    :goto_b
    add-int/lit8 v2, v1, 0x1

    if-gt v2, p1, :cond_17

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2a

    if-ne v1, v3, :cond_2f

    add-int/lit8 v1, v2, 0x1

    if-ge v1, v6, :cond_16

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_c
    const/16 v3, 0x2f

    if-eq v1, v3, :cond_17

    move v1, v2

    goto :goto_b

    :cond_16
    const/4 v1, 0x0

    goto :goto_c

    .line 1262
    :cond_17
    add-int/lit8 v2, v2, 0x1

    .line 1280
    :cond_18
    :goto_d
    add-int/lit8 v1, v2, 0x1

    if-ge v1, v6, :cond_1c

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1281
    :goto_e
    add-int/lit8 v1, v2, 0x2

    if-ge v1, v6, :cond_1d

    add-int/lit8 v1, v2, 0x2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_f
    move v12, v2

    move v2, v1

    move v1, v12

    goto/16 :goto_5

    .line 1266
    :cond_19
    add-int/lit8 v1, v2, 0x1

    .line 1267
    add-int/lit8 v2, v1, 0x1

    .line 1269
    const/4 v1, 0x1

    .line 1270
    :goto_10
    const/4 v3, 0x5

    if-gt v1, v3, :cond_1a

    .line 1271
    add-int v3, v2, v1

    if-ge v3, v6, :cond_1a

    add-int v3, v2, v1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1275
    :cond_1a
    const/4 v3, 0x5

    if-ne v1, v3, :cond_18

    .line 1276
    add-int/lit8 v2, v2, 0x5

    goto :goto_d

    .line 1270
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1280
    :cond_1c
    const/4 v3, 0x0

    goto :goto_e

    .line 1281
    :cond_1d
    const/4 v1, 0x0

    goto :goto_f

    .line 1283
    :cond_1e
    sget-object v7, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BLOCK_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    move-object/from16 v0, p6

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    const/16 v7, 0x2a

    if-ne v4, v7, :cond_20

    const/16 v7, 0x2f

    if-ne v3, v7, :cond_20

    .line 1286
    add-int/lit8 v3, v2, 0x1

    .line 1289
    add-int/lit8 v2, v3, 0x2

    if-ge v2, v6, :cond_1f

    add-int/lit8 v2, v3, 0x2

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_11
    move v12, v3

    move v3, v1

    move v1, v12

    goto/16 :goto_5

    :cond_1f
    const/4 v2, 0x0

    goto :goto_11

    .line 1291
    :cond_20
    sget-object v7, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_LINE_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    move-object/from16 v0, p6

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    const/16 v7, 0x2d

    if-ne v4, v7, :cond_21

    const/16 v7, 0x2d

    if-ne v3, v7, :cond_21

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_22

    const/16 v5, 0x3b

    if-ne v1, v5, :cond_23

    const/4 v5, 0x1

    :goto_12
    if-nez v5, :cond_22

    if-eqz v1, :cond_22

    :cond_21
    const/16 v7, 0x23

    if-ne v4, v7, :cond_2c

    :cond_22
    move v1, v5

    .line 1294
    if-eqz v1, :cond_2e

    .line 1296
    add-int/lit8 v1, v2, 0x1

    .line 1297
    add-int/lit8 v2, v1, 0x1

    .line 1299
    add-int/lit8 v1, v2, 0x1

    if-ge v1, v6, :cond_24

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1300
    :goto_13
    add-int/lit8 v1, v2, 0x2

    if-ge v1, v6, :cond_25

    add-int/lit8 v1, v2, 0x2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_14
    move v12, v2

    move v2, v1

    move v1, v12

    goto/16 :goto_5

    .line 1291
    :cond_23
    const/4 v5, 0x0

    goto :goto_12

    .line 1299
    :cond_24
    const/4 v3, 0x0

    goto :goto_13

    .line 1300
    :cond_25
    const/4 v1, 0x0

    goto :goto_14

    .line 1303
    :cond_26
    :goto_15
    add-int/lit8 v2, v2, 0x1

    if-gt v2, p1, :cond_27

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_27

    const/16 v3, 0xd

    if-ne v1, v3, :cond_26

    .line 1307
    :cond_27
    add-int/lit8 v3, v2, 0x1

    if-ge v3, v6, :cond_29

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1308
    :goto_16
    const/16 v4, 0xd

    if-ne v1, v4, :cond_28

    const/16 v1, 0xa

    if-ne v3, v1, :cond_28

    .line 1310
    add-int/lit8 v2, v2, 0x1

    .line 1311
    add-int/lit8 v1, v2, 0x1

    if-ge v1, v6, :cond_2a

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_17
    move v3, v1

    .line 1313
    :cond_28
    add-int/lit8 v1, v2, 0x2

    if-ge v1, v6, :cond_2b

    add-int/lit8 v1, v2, 0x2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_18
    move v12, v2

    move v2, v1

    move v1, v12

    goto/16 :goto_5

    .line 1307
    :cond_29
    const/4 v3, 0x0

    goto :goto_16

    .line 1311
    :cond_2a
    const/4 v1, 0x0

    goto :goto_17

    .line 1313
    :cond_2b
    const/4 v1, 0x0

    goto :goto_18

    .line 1316
    :cond_2c
    sget-object v5, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    move-object/from16 v0, p6

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_0

    move v12, v2

    move v2, v1

    move v1, v12

    goto/16 :goto_5

    .line 1321
    :cond_2d
    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_2e
    move v1, v4

    goto :goto_15

    :cond_2f
    move v1, v2

    goto/16 :goto_b
.end method

.method public static indexOfQuoteDoubleAware(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 2220
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_2

    :cond_0
    move v0, v1

    .line 2239
    :cond_1
    return v0

    .line 2224
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 2229
    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    .line 2230
    :goto_0
    if-eqz v2, :cond_1

    .line 2231
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 2232
    if-eq v3, v1, :cond_3

    if-eq v3, v4, :cond_3

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2233
    :cond_3
    const/4 v0, 0x0

    move v2, v0

    move v0, v3

    goto :goto_0

    .line 2235
    :cond_4
    add-int/lit8 p2, v3, 0x2

    move v0, v3

    goto :goto_0
.end method

.method private static isCharAtPosNotEqualIgnoreCase(Ljava/lang/String;ICC)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1325
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    if-eq v0, p3, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    if-eq v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCharEqualIgnoreCase(CCC)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1329
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    if-eq v0, p2, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmptyOrWhitespaceOnly(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2022
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 2034
    :cond_1
    :goto_0
    return v0

    .line 2026
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v0

    .line 2028
    :goto_1
    if-ge v2, v3, :cond_3

    .line 2029
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2028
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 2034
    goto :goto_0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1846
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStrictlyNumeric(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2430
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2438
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 2433
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2434
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2433
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2438
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static final isValidIdChar(C)Z
    .locals 2
    .parameter

    .prologue
    .line 2373
    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIGKLMNOPQRSTUVWXYZ0123456789$_#@"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lastIndexOf([BC)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1816
    if-nez p0, :cond_1

    .line 1826
    :cond_0
    :goto_0
    return v0

    .line 1820
    :cond_1
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    .line 1821
    aget-byte v2, p0, v1

    if-ne v2, p1, :cond_2

    move v0, v1

    .line 1822
    goto :goto_0

    .line 1820
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2100
    if-nez p0, :cond_1

    .line 2101
    const/4 v0, 0x0

    .line 2135
    :cond_0
    :goto_0
    return-object v0

    .line 2104
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2106
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2107
    if-eqz v2, :cond_0

    const-string v1, " "

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2112
    if-nez p2, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2114
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2117
    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2118
    :goto_1
    if-ltz v1, :cond_2

    .line 2119
    add-int v4, v1, v2

    .line 2120
    invoke-virtual {v3, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 2122
    if-ne v5, v4, :cond_2

    .line 2123
    add-int v1, v5, v2

    invoke-virtual {v3, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    .line 2130
    :cond_2
    if-ltz v1, :cond_0

    .line 2135
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static quoteIdentifier(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2158
    const-string v0, "`"

    invoke-static {p0, v0, p1}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static s2b(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)[B
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1788
    if-nez p0, :cond_0

    .line 1789
    const/4 v0, 0x0

    .line 1812
    :goto_0
    return-object v0

    .line 1792
    :cond_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1794
    :try_start_0
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 1796
    if-nez v0, :cond_1

    .line 1797
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 1800
    :cond_1
    invoke-interface {p1, v0}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v1

    .line 1802
    if-eqz v1, :cond_2

    .line 1803
    invoke-virtual {v1, p0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 1806
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1807
    :catch_0
    move-exception v0

    .line 1808
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 1812
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static sanitizeProcOrFuncName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1975
    if-eqz p0, :cond_0

    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1976
    :cond_0
    const/4 p0, 0x0

    .line 1979
    :cond_1
    return-object p0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1418
    if-nez p0, :cond_0

    .line 1419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1453
    :goto_0
    return-object v0

    .line 1422
    :cond_0
    if-nez p1, :cond_1

    .line 1423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1427
    :cond_1
    const/4 v0, 0x0

    .line 1429
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1432
    :goto_1
    sget-object v6, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1433
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1435
    if-eqz p5, :cond_2

    .line 1436
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1439
    :cond_2
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1440
    add-int/lit8 v0, v1, 0x1

    .line 1441
    goto :goto_1

    .line 1443
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1444
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1446
    if-eqz p5, :cond_4

    .line 1447
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1450
    :cond_4
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v0, v7

    .line 1453
    goto :goto_0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1391
    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1347
    if-nez p0, :cond_0

    .line 1348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1369
    :goto_0
    return-object v0

    .line 1351
    :cond_0
    if-nez p1, :cond_1

    .line 1352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1355
    :cond_1
    new-instance v2, Ljava/util/StringTokenizer;

    const/4 v0, 0x0

    invoke-direct {v2, p0, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1357
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1359
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1360
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1362
    if-eqz p2, :cond_2

    .line 1363
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1366
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 1369
    goto :goto_0
.end method

.method public static splitDBdotName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1998
    if-eqz p0, :cond_0

    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1999
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2018
    :goto_0
    return-object v0

    .line 2003
    :cond_1
    const-string v1, " "

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2004
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2011
    :goto_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 2012
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2013
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2018
    :goto_2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v0

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 2006
    :cond_2
    const-string v2, "."

    if-eqz p3, :cond_3

    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_WS:Ljava/util/Set;

    :goto_3
    move-object v1, p0

    move-object v3, p2

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v1

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__BSESC_MRK_WS:Ljava/util/Set;

    goto :goto_3

    .line 2015
    :cond_4
    invoke-static {p0, p2}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method private static startsWith([BLjava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1457
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1459
    array-length v1, p0

    if-ge v1, v2, :cond_1

    .line 1467
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 1462
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1463
    aget-byte v3, p0, v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1462
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1467
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1485
    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1500
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static startsWithIgnoreCaseAndNonAlphaNumeric(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1516
    if-nez p0, :cond_1

    .line 1517
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 1530
    :cond_0
    :goto_0
    return v0

    .line 1521
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1523
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1524
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1525
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1530
    :cond_2
    invoke-static {p0, v0, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1523
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static startsWithIgnoreCaseAndWs(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 1590
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 1591
    aget-object v2, p1, v0

    invoke-static {p0, v2, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1595
    :goto_1
    return v0

    .line 1590
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1595
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1545
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1563
    if-nez p0, :cond_1

    .line 1564
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 1575
    :goto_0
    return v0

    .line 1564
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1567
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1569
    :goto_1
    if-ge p2, v0, :cond_2

    .line 1570
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1575
    :cond_2
    invoke-static {p0, p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1569
    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method

.method public static stripComments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1871
    if-nez p0, :cond_0

    .line 1872
    const/4 v0, 0x0

    .line 1959
    :goto_0
    return-object v0

    .line 1875
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1880
    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 1882
    const/4 v3, 0x0

    .line 1884
    const/4 v2, -0x1

    .line 1891
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {v5}, Ljava/io/StringReader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 1893
    const/4 v1, -0x1

    if-eq v2, v1, :cond_6

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_6

    .line 1894
    const/4 v2, 0x0

    .line 1895
    const/4 v1, -0x1

    move v3, v2

    move v2, v1

    .line 1901
    :cond_2
    :goto_2
    if-nez v3, :cond_c

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_c

    if-nez p4, :cond_3

    if-eqz p3, :cond_c

    .line 1902
    :cond_3
    invoke-virtual {v5}, Ljava/io/StringReader;->read()I

    move-result v0

    .line 1903
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_8

    if-eqz p3, :cond_8

    .line 1904
    const/4 v0, 0x0

    move v1, v0

    .line 1905
    :goto_3
    invoke-virtual {v5}, Ljava/io/StringReader;->read()I

    move-result v0

    const/16 v6, 0x2f

    if-ne v0, v6, :cond_4

    const/16 v6, 0x2a

    if-eq v1, v6, :cond_1

    .line 1906
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_7

    .line 1908
    invoke-virtual {v5}, Ljava/io/StringReader;->read()I

    move-result v0

    .line 1909
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 1910
    invoke-virtual {v5}, Ljava/io/StringReader;->read()I

    move-result v0

    .line 1918
    :cond_5
    :goto_4
    if-ltz v0, :cond_1

    move v1, v0

    .line 1921
    goto :goto_3

    .line 1896
    :cond_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    if-nez v3, :cond_2

    move v2, v1

    move v3, v0

    .line 1898
    goto :goto_2

    .line 1913
    :cond_7
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 1915
    invoke-virtual {v5}, Ljava/io/StringReader;->read()I

    move-result v0

    goto :goto_4

    .line 1924
    :cond_8
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_a

    if-eqz p4, :cond_a

    .line 1925
    :cond_9
    invoke-virtual {v5}, Ljava/io/StringReader;->read()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_a

    const/16 v1, 0xd

    if-eq v0, v1, :cond_a

    if-gez v0, :cond_9

    .line 1951
    :cond_a
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1952
    int-to-char v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1955
    :catch_0
    move-exception v0

    .line 1959
    :cond_b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1928
    :cond_c
    if-nez v3, :cond_d

    const/16 v1, 0x23

    if-ne v0, v1, :cond_d

    if-eqz p5, :cond_d

    .line 1930
    :goto_5
    :try_start_1
    invoke-virtual {v5}, Ljava/io/StringReader;->read()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_a

    const/16 v1, 0xd

    if-eq v0, v1, :cond_a

    if-ltz v0, :cond_a

    goto :goto_5

    .line 1932
    :cond_d
    if-nez v3, :cond_a

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_a

    if-eqz p6, :cond_a

    .line 1933
    invoke-virtual {v5}, Ljava/io/StringReader;->read()I

    move-result v0

    .line 1935
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_f

    .line 1936
    :cond_e
    const/16 v1, 0x2d

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1938
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1939
    int-to-char v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1947
    :cond_f
    :goto_6
    invoke-virtual {v5}, Ljava/io/StringReader;->read()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_a

    const/16 v1, 0xd

    if-eq v0, v1, :cond_a

    if-ltz v0, :cond_a

    goto :goto_6
.end method

.method public static stripEnclosure([BLjava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1604
    array-length v0, p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/mysql/jdbc/StringUtils;->startsWith([BLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2}, Lcom/mysql/jdbc/StringUtils;->endsWith([BLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1606
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 1607
    array-length v1, p0

    sub-int v0, v1, v0

    .line 1608
    new-array v0, v0, [B

    .line 1610
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1611
    array-length v2, v0

    .line 1612
    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 1616
    :cond_0
    return-object p0
.end method

.method public static toAsciiString([B)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1628
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toAsciiString([BII)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1644
    new-array v1, p2, [C

    .line 1647
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 1648
    aget-byte v2, p0, p1

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 1649
    add-int/lit8 p1, p1, 0x1

    .line 1647
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1652
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 2276
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/StringUtils;->platformEncoding:Ljava/lang/String;

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 2278
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2283
    :goto_0
    return-object v0

    .line 2279
    :catch_0
    move-exception v0

    .line 2283
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toString([BII)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2264
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/StringUtils;->platformEncoding:Ljava/lang/String;

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 2266
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2271
    :goto_0
    return-object v0

    .line 2267
    :catch_0
    move-exception v0

    .line 2271
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2251
    invoke-static {p3}, Lcom/mysql/jdbc/StringUtils;->findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 2253
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2257
    invoke-static {p1}, Lcom/mysql/jdbc/StringUtils;->findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 2259
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 2183
    if-nez p0, :cond_1

    .line 2184
    const/4 v0, 0x0

    .line 2216
    :cond_0
    :goto_0
    return-object v0

    .line 2187
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2189
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2190
    if-eqz v2, :cond_0

    const-string v1, " "

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2195
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2197
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2200
    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2201
    :goto_1
    if-ltz v1, :cond_2

    .line 2202
    add-int/2addr v1, v2

    .line 2203
    invoke-virtual {v3, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 2205
    if-ne v4, v1, :cond_0

    .line 2206
    add-int v1, v4, v2

    invoke-virtual {v3, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    .line 2213
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static wildCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1664
    invoke-static {p0, p1}, Lcom/mysql/jdbc/StringUtils;->wildCompareInternal(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static wildCompareInternal(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x25

    const/16 v9, 0x5f

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 1682
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v1, v5

    .line 1784
    :cond_1
    :goto_0
    return v1

    .line 1686
    :cond_2
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v4

    .line 1687
    goto :goto_0

    .line 1691
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 1694
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    move v0, v5

    move v2, v4

    move v3, v4

    .line 1698
    :cond_4
    if-eq v3, v6, :cond_a

    .line 1699
    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v10, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v9, :cond_6

    .line 1700
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x5c

    if-ne v0, v8, :cond_16

    add-int/lit8 v0, v3, 0x1

    if-eq v0, v6, :cond_16

    .line 1701
    add-int/lit8 v3, v3, 0x1

    move v0, v3

    .line 1704
    :goto_2
    if-eq v2, v7, :cond_1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    if-ne v8, v2, :cond_1

    .line 1709
    if-ne v3, v6, :cond_5

    .line 1710
    if-ne v0, v7, :cond_1

    move v1, v4

    goto :goto_0

    :cond_5
    move v2, v0

    move v0, v1

    .line 1713
    goto :goto_1

    .line 1716
    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_b

    .line 1718
    :cond_7
    if-ne v2, v7, :cond_8

    move v1, v0

    .line 1719
    goto :goto_0

    .line 1721
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 1722
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v6, :cond_9

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v9, :cond_7

    .line 1724
    :cond_9
    if-ne v3, v6, :cond_b

    .line 1784
    :cond_a
    if-ne v2, v7, :cond_1

    move v1, v4

    goto :goto_0

    .line 1729
    :cond_b
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_4

    .line 1730
    add-int/lit8 v0, v3, 0x1

    move v11, v2

    move v2, v0

    move v0, v11

    .line 1733
    :goto_3
    if-eq v2, v6, :cond_e

    .line 1734
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_c

    .line 1733
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1738
    :cond_c
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v9, :cond_e

    .line 1739
    if-ne v0, v7, :cond_d

    move v1, v5

    .line 1740
    goto/16 :goto_0

    .line 1742
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1749
    :cond_e
    if-ne v2, v6, :cond_f

    move v1, v4

    .line 1750
    goto/16 :goto_0

    .line 1753
    :cond_f
    if-ne v0, v7, :cond_10

    move v1, v5

    .line 1754
    goto/16 :goto_0

    .line 1758
    :cond_10
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x5c

    if-ne v1, v3, :cond_11

    add-int/lit8 v3, v2, 0x1

    if-eq v3, v6, :cond_11

    .line 1759
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1762
    :cond_11
    add-int/lit8 v3, v2, 0x1

    .line 1765
    :goto_5
    if-eq v0, v7, :cond_12

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    if-eq v2, v4, :cond_12

    .line 1766
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1769
    :cond_12
    add-int/lit8 v2, v0, 0x1

    if-ne v0, v7, :cond_13

    move v1, v5

    .line 1770
    goto/16 :goto_0

    .line 1773
    :cond_13
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mysql/jdbc/StringUtils;->wildCompareInternal(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1774
    if-gtz v4, :cond_14

    move v1, v4

    .line 1775
    goto/16 :goto_0

    .line 1778
    :cond_14
    if-ne v2, v7, :cond_15

    move v1, v5

    .line 1780
    goto/16 :goto_0

    :cond_15
    move v0, v2

    goto :goto_5

    :cond_16
    move v0, v3

    goto/16 :goto_2
.end method
