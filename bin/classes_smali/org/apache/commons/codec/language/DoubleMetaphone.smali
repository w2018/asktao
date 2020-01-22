.class public Lorg/apache/commons/codec/language/DoubleMetaphone;
.super Ljava/lang/Object;
.source "DoubleMetaphone.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    }
.end annotation


# static fields
.field private static final ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String; = null

.field private static final L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String; = null

.field private static final L_T_K_S_N_M_B_Z:[Ljava/lang/String; = null

.field private static final SILENT_START:[Ljava/lang/String; = null

.field private static final VOWELS:Ljava/lang/String; = "AEIOUY"


# instance fields
.field private maxCodeLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "GN"

    aput-object v1, v0, v3

    const-string v1, "KN"

    aput-object v1, v0, v4

    const-string v1, "PN"

    aput-object v1, v0, v5

    const-string v1, "WR"

    aput-object v1, v0, v6

    const-string v1, "PS"

    aput-object v1, v0, v7

    sput-object v0, Lorg/apache/commons/codec/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    .line 50
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "L"

    aput-object v1, v0, v3

    const-string v1, "R"

    aput-object v1, v0, v4

    const-string v1, "N"

    aput-object v1, v0, v5

    const-string v1, "M"

    aput-object v1, v0, v6

    const-string v1, "B"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "H"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, " "

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    .line 52
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ES"

    aput-object v1, v0, v3

    const-string v1, "EP"

    aput-object v1, v0, v4

    const-string v1, "EB"

    aput-object v1, v0, v5

    const-string v1, "EL"

    aput-object v1, v0, v6

    const-string v1, "EY"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "IB"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "IN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "IE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EI"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ER"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/codec/language/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    .line 54
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "L"

    aput-object v1, v0, v3

    const-string v1, "T"

    aput-object v1, v0, v4

    const-string v1, "K"

    aput-object v1, v0, v5

    const-string v1, "S"

    aput-object v1, v0, v6

    const-string v1, "N"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "M"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Z"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    .line 67
    return-void
.end method

.method private cleanInput(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 889
    if-nez p1, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-object v0

    .line 892
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 893
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 896
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private conditionC0(Ljava/lang/String;I)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 782
    const/4 v2, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "CHIA"

    aput-object v4, v3, v0

    invoke-static {p1, p2, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 792
    :cond_0
    :goto_0
    return v0

    .line 784
    :cond_1
    if-le p2, v1, :cond_0

    .line 786
    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 788
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "ACH"

    aput-object v5, v4, v0

    invoke-static {p1, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 791
    add-int/lit8 v2, p2, 0x2

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    .line 792
    const/16 v3, 0x49

    if-eq v2, v3, :cond_2

    const/16 v3, 0x45

    if-ne v2, v3, :cond_3

    :cond_2
    add-int/lit8 v2, p2, -0x2

    const/4 v3, 0x6

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "BACHER"

    aput-object v5, v4, v0

    const-string v5, "MACHER"

    aput-object v5, v4, v1

    invoke-static {p1, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private conditionCH0(Ljava/lang/String;I)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 801
    if-eqz p2, :cond_1

    .line 809
    :cond_0
    :goto_0
    return v0

    .line 803
    :cond_1
    add-int/lit8 v2, p2, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "HARAC"

    aput-object v4, v3, v0

    const-string v4, "HARIS"

    aput-object v4, v3, v1

    invoke-static {p1, v2, v7, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v2, p2, 0x1

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "HOR"

    aput-object v4, v3, v0

    const-string v4, "HYM"

    aput-object v4, v3, v1

    const-string v4, "HIA"

    aput-object v4, v3, v5

    const-string v4, "HEM"

    aput-object v4, v3, v6

    invoke-static {p1, v2, v6, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 806
    :cond_2
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "CHORE"

    aput-object v3, v2, v0

    invoke-static {p1, v0, v7, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 809
    goto :goto_0
.end method

.method private conditionCH1(Ljava/lang/String;I)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 817
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VAN "

    aput-object v3, v2, v0

    const-string v3, "VON "

    aput-object v3, v2, v1

    invoke-static {p1, v0, v8, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "SCH"

    aput-object v3, v2, v0

    invoke-static {p1, v0, v7, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v2, p2, -0x2

    const/4 v3, 0x6

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "ORCHES"

    aput-object v5, v4, v0

    const-string v5, "ARCHIT"

    aput-object v5, v4, v1

    const-string v5, "ORCHID"

    aput-object v5, v4, v6

    invoke-static {p1, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v2, p2, 0x2

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "T"

    aput-object v4, v3, v0

    const-string v4, "S"

    aput-object v4, v3, v1

    invoke-static {p1, v2, v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v2, p2, -0x1

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "A"

    aput-object v4, v3, v0

    const-string v4, "O"

    aput-object v4, v3, v1

    const-string v4, "U"

    aput-object v4, v3, v6

    const-string v4, "E"

    aput-object v4, v3, v7

    invoke-static {p1, v2, v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_2

    :cond_0
    add-int/lit8 v2, p2, 0x2

    sget-object v3, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    invoke-static {p1, v2, v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method private conditionL0(Ljava/lang/String;I)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 828
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    if-ne p2, v2, :cond_1

    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ILLO"

    aput-object v4, v3, v1

    const-string v4, "ILLA"

    aput-object v4, v3, v0

    const-string v4, "ALLE"

    aput-object v4, v3, v5

    invoke-static {p1, v2, v6, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 836
    :cond_0
    :goto_0
    return v0

    .line 831
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "AS"

    aput-object v4, v3, v1

    const-string v4, "OS"

    aput-object v4, v3, v0

    invoke-static {p1, v2, v5, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "A"

    aput-object v4, v3, v1

    const-string v4, "O"

    aput-object v4, v3, v0

    invoke-static {p1, v2, v0, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    add-int/lit8 v2, p2, -0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "ALLE"

    aput-object v4, v3, v1

    invoke-static {p1, v2, v6, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 836
    goto :goto_0
.end method

.method private conditionM0(Ljava/lang/String;I)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 844
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_1

    .line 847
    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v5, "UMB"

    aput-object v5, v4, v1

    invoke-static {p1, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/lit8 v2, p2, 0x2

    const/4 v3, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v5, "ER"

    aput-object v5, v4, v1

    invoke-static {p1, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected static varargs contains(Ljava/lang/String;II[Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 918
    if-ltz p1, :cond_0

    add-int v1, p1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 919
    add-int v1, p1, p2

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 921
    array-length v3, p3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, p3, v1

    .line 922
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 923
    const/4 v0, 0x1

    .line 928
    :cond_0
    return v0

    .line 921
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private handleAEIOUY(Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 270
    if-nez p2, :cond_0

    .line 271
    const/16 v0, 0x41

    invoke-virtual {p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 273
    :cond_0
    add-int/lit8 v0, p2, 0x1

    return v0
.end method

.method private handleC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x53

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 280
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionC0(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const/16 v0, 0x4b

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 282
    add-int/lit8 v0, p3, 0x2

    .line 325
    :goto_0
    return v0

    .line 283
    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x6

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "CAESAR"

    aput-object v2, v1, v5

    invoke-static {p1, p3, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {p2, v8}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 285
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 286
    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "CH"

    aput-object v1, v0, v5

    invoke-static {p1, p3, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleCH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto :goto_0

    .line 288
    :cond_2
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "CZ"

    aput-object v1, v0, v5

    invoke-static {p1, p3, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p3, -0x2

    const/4 v1, 0x4

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "WICZ"

    aput-object v3, v2, v5

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 291
    const/16 v0, 0x58

    invoke-virtual {p2, v8, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 292
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 293
    :cond_3
    add-int/lit8 v0, p3, 0x1

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "CIA"

    aput-object v2, v1, v5

    invoke-static {p1, v0, v7, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 295
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 296
    add-int/lit8 v0, p3, 0x3

    goto :goto_0

    .line 297
    :cond_4
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "CC"

    aput-object v1, v0, v5

    invoke-static {p1, p3, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-ne p3, v4, :cond_5

    invoke-virtual {p0, p1, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_6

    .line 300
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleCC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto :goto_0

    .line 301
    :cond_6
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "CK"

    aput-object v1, v0, v5

    const-string v1, "CG"

    aput-object v1, v0, v4

    const-string v1, "CQ"

    aput-object v1, v0, v6

    invoke-static {p1, p3, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 302
    const/16 v0, 0x4b

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 303
    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_0

    .line 304
    :cond_7
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "CI"

    aput-object v1, v0, v5

    const-string v1, "CE"

    aput-object v1, v0, v4

    const-string v1, "CY"

    aput-object v1, v0, v6

    invoke-static {p1, p3, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 306
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "CIO"

    aput-object v1, v0, v5

    const-string v1, "CIE"

    aput-object v1, v0, v4

    const-string v1, "CIA"

    aput-object v1, v0, v6

    invoke-static {p1, p3, v7, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 307
    const/16 v0, 0x58

    invoke-virtual {p2, v8, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 311
    :goto_1
    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_0

    .line 309
    :cond_8
    invoke-virtual {p2, v8}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 313
    :cond_9
    const/16 v0, 0x4b

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 314
    add-int/lit8 v0, p3, 0x1

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, " C"

    aput-object v2, v1, v5

    const-string v2, " Q"

    aput-object v2, v1, v4

    const-string v2, " G"

    aput-object v2, v1, v6

    invoke-static {p1, v0, v6, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 316
    add-int/lit8 v0, p3, 0x3

    goto/16 :goto_0

    .line 317
    :cond_a
    add-int/lit8 v0, p3, 0x1

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "C"

    aput-object v2, v1, v5

    const-string v2, "K"

    aput-object v2, v1, v4

    const-string v2, "Q"

    aput-object v2, v1, v6

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 v0, p3, 0x1

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "CE"

    aput-object v2, v1, v5

    const-string v2, "CI"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v6, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 319
    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_0

    .line 321
    :cond_b
    add-int/lit8 v0, p3, 0x1

    goto/16 :goto_0
.end method

.method private handleCC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 332
    add-int/lit8 v0, p3, 0x2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "I"

    aput-object v2, v1, v5

    const-string v2, "E"

    aput-object v2, v1, v4

    const-string v2, "H"

    aput-object v2, v1, v3

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p3, 0x2

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "HU"

    aput-object v2, v1, v5

    invoke-static {p1, v0, v3, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 335
    if-ne p3, v4, :cond_0

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_1

    :cond_0
    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x5

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "UCCEE"

    aput-object v3, v2, v5

    const-string v3, "UCCES"

    aput-object v3, v2, v4

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    :cond_1
    const-string v0, "KS"

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 343
    :goto_0
    add-int/lit8 v0, p3, 0x3

    .line 349
    :goto_1
    return v0

    .line 341
    :cond_2
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 345
    :cond_3
    const/16 v0, 0x4b

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 346
    add-int/lit8 v0, p3, 0x2

    goto :goto_1
.end method

.method private handleCH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x58

    const/4 v4, 0x0

    const/16 v3, 0x4b

    .line 356
    if-lez p3, :cond_0

    const/4 v0, 0x4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "CHAE"

    aput-object v2, v1, v4

    invoke-static {p1, p3, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p2, v3, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 358
    add-int/lit8 v0, p3, 0x2

    .line 377
    :goto_0
    return v0

    .line 359
    :cond_0
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionCH0(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {p2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 362
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 363
    :cond_1
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionCH1(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    invoke-virtual {p2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 366
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 368
    :cond_2
    if-lez p3, :cond_4

    .line 369
    const/4 v0, 0x2

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "MC"

    aput-object v2, v1, v4

    invoke-static {p1, v4, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 370
    invoke-virtual {p2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 377
    :goto_1
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 372
    :cond_3
    invoke-virtual {p2, v5, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_1

    .line 375
    :cond_4
    invoke-virtual {p2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1
.end method

.method private handleD(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x54

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 385
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "DG"

    aput-object v1, v0, v5

    invoke-static {p1, p3, v4, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    add-int/lit8 v0, p3, 0x2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "I"

    aput-object v2, v1, v5

    const-string v2, "E"

    aput-object v2, v1, v3

    const-string v2, "Y"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v3, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 389
    add-int/lit8 v0, p3, 0x3

    .line 402
    :goto_0
    return v0

    .line 392
    :cond_0
    const-string v0, "TK"

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 393
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 395
    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "DT"

    aput-object v1, v0, v5

    const-string v1, "DD"

    aput-object v1, v0, v3

    invoke-static {p1, p3, v4, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 397
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 399
    :cond_2
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 400
    add-int/lit8 v0, p3, 0x1

    goto :goto_0
.end method

.method private handleG(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/16 v7, 0x4b

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 410
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    .line 411
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleGH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 460
    :goto_0
    return v0

    .line 412
    :cond_0
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_3

    .line 413
    if-ne p3, v5, :cond_1

    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    .line 414
    const-string v0, "KN"

    const-string v1, "N"

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :goto_1
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 415
    :cond_1
    add-int/lit8 v0, p3, 0x2

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "EY"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v6, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x59

    if-eq v0, v1, :cond_2

    if-nez p4, :cond_2

    .line 417
    const-string v0, "N"

    const-string v1, "KN"

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 419
    :cond_2
    const-string v0, "KN"

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 422
    :cond_3
    add-int/lit8 v0, p3, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LI"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v6, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p4, :cond_4

    .line 423
    const-string v0, "KL"

    const-string v1, "L"

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 425
    :cond_4
    if-nez p3, :cond_6

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x59

    if-eq v0, v1, :cond_5

    add-int/lit8 v0, p3, 0x1

    sget-object v1, Lorg/apache/commons/codec/language/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    invoke-static {p1, v0, v6, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 429
    :cond_5
    const/16 v0, 0x4a

    invoke-virtual {p2, v7, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 430
    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_0

    .line 431
    :cond_6
    add-int/lit8 v0, p3, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ER"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v6, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x59

    if-ne v0, v1, :cond_8

    :cond_7
    const/4 v0, 0x6

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "DANGER"

    aput-object v2, v1, v4

    const-string v2, "RANGER"

    aput-object v2, v1, v5

    const-string v2, "MANGER"

    aput-object v2, v1, v6

    invoke-static {p1, v4, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    add-int/lit8 v0, p3, -0x1

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "E"

    aput-object v2, v1, v4

    const-string v2, "I"

    aput-object v2, v1, v5

    invoke-static {p1, v0, v5, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    add-int/lit8 v0, p3, -0x1

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "RGY"

    aput-object v2, v1, v4

    const-string v2, "OGY"

    aput-object v2, v1, v5

    invoke-static {p1, v0, v8, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 437
    const/16 v0, 0x4a

    invoke-virtual {p2, v7, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 438
    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_0

    .line 439
    :cond_8
    add-int/lit8 v0, p3, 0x1

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "E"

    aput-object v2, v1, v4

    const-string v2, "I"

    aput-object v2, v1, v5

    const-string v2, "Y"

    aput-object v2, v1, v6

    invoke-static {p1, v0, v5, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AGGI"

    aput-object v3, v2, v4

    const-string v3, "OGGI"

    aput-object v3, v2, v5

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 442
    :cond_9
    const/4 v0, 0x4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "VAN "

    aput-object v2, v1, v4

    const-string v2, "VON "

    aput-object v2, v1, v5

    invoke-static {p1, v4, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "SCH"

    aput-object v1, v0, v4

    invoke-static {p1, v4, v8, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    add-int/lit8 v0, p3, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ET"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v6, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 446
    :cond_a
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 452
    :goto_2
    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_0

    .line 447
    :cond_b
    add-int/lit8 v0, p3, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "IER"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v8, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 448
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_2

    .line 450
    :cond_c
    const/16 v0, 0x4a

    invoke-virtual {p2, v0, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_2

    .line 453
    :cond_d
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_e

    .line 454
    add-int/lit8 v0, p3, 0x2

    .line 455
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto/16 :goto_0

    .line 457
    :cond_e
    add-int/lit8 v0, p3, 0x1

    .line 458
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto/16 :goto_0
.end method

.method private handleGH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x4b

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 467
    if-lez p3, :cond_0

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 469
    add-int/lit8 v0, p3, 0x2

    .line 492
    :goto_0
    return v0

    .line 470
    :cond_0
    if-nez p3, :cond_2

    .line 471
    add-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x49

    if-ne v0, v1, :cond_1

    .line 472
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 476
    :goto_1
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 474
    :cond_1
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 477
    :cond_2
    if-le p3, v4, :cond_3

    add-int/lit8 v0, p3, -0x2

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "B"

    aput-object v2, v1, v5

    const-string v2, "H"

    aput-object v2, v1, v4

    const-string v2, "D"

    aput-object v2, v1, v3

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    if-le p3, v3, :cond_4

    add-int/lit8 v0, p3, -0x3

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "B"

    aput-object v2, v1, v5

    const-string v2, "H"

    aput-object v2, v1, v4

    const-string v2, "D"

    aput-object v2, v1, v3

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    if-le p3, v6, :cond_6

    add-int/lit8 v0, p3, -0x4

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "B"

    aput-object v2, v1, v5

    const-string v2, "H"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 481
    :cond_5
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 483
    :cond_6
    if-le p3, v3, :cond_8

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x55

    if-ne v0, v1, :cond_8

    add-int/lit8 v0, p3, -0x3

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "C"

    aput-object v2, v1, v5

    const-string v2, "G"

    aput-object v2, v1, v4

    const-string v2, "L"

    aput-object v2, v1, v3

    const-string v2, "R"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string v3, "T"

    aput-object v3, v1, v2

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 486
    const/16 v0, 0x46

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 490
    :cond_7
    :goto_2
    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_0

    .line 487
    :cond_8
    if-lez p3, :cond_7

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x49

    if-eq v0, v1, :cond_7

    .line 488
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_2
.end method

.method private handleH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 500
    if-eqz p3, :cond_0

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    const/16 v0, 0x48

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 503
    add-int/lit8 v0, p3, 0x2

    .line 508
    :goto_0
    return v0

    .line 506
    :cond_1
    add-int/lit8 v0, p3, 0x1

    goto :goto_0
.end method

.method private handleJ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x48

    const/4 v2, 0x4

    const/16 v5, 0x4a

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 516
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "JOSE"

    aput-object v1, v0, v3

    invoke-static {p1, p3, v2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "SAN "

    aput-object v1, v0, v3

    invoke-static {p1, v3, v2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 518
    :cond_0
    if-nez p3, :cond_1

    add-int/lit8 v0, p3, 0x4

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v2, :cond_2

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "SAN "

    aput-object v1, v0, v3

    invoke-static {p1, v3, v2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 520
    :cond_2
    invoke-virtual {p2, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 524
    :goto_0
    add-int/lit8 v0, p3, 0x1

    .line 544
    :goto_1
    return v0

    .line 522
    :cond_3
    invoke-virtual {p2, v5, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 526
    :cond_4
    if-nez p3, :cond_6

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "JOSE"

    aput-object v1, v0, v3

    invoke-static {p1, p3, v2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 527
    const/16 v0, 0x41

    invoke-virtual {p2, v5, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 538
    :cond_5
    :goto_2
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v5, :cond_a

    .line 539
    add-int/lit8 v0, p3, 0x2

    goto :goto_1

    .line 528
    :cond_6
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p4, :cond_8

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_7

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_8

    .line 530
    :cond_7
    invoke-virtual {p2, v5, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_2

    .line 531
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_9

    .line 532
    const/16 v0, 0x20

    invoke-virtual {p2, v5, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_2

    .line 533
    :cond_9
    add-int/lit8 v0, p3, 0x1

    sget-object v1, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "S"

    aput-object v2, v1, v3

    const-string v2, "K"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "L"

    aput-object v3, v1, v2

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 535
    invoke-virtual {p2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_2

    .line 541
    :cond_a
    add-int/lit8 v0, p3, 0x1

    goto :goto_1
.end method

.method private handleL(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x4c

    .line 551
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v1, :cond_1

    .line 552
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionL0(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(C)V

    .line 557
    :goto_0
    add-int/lit8 v0, p3, 0x2

    .line 562
    :goto_1
    return v0

    .line 555
    :cond_0
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 559
    :cond_1
    add-int/lit8 v0, p3, 0x1

    .line 560
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1
.end method

.method private handleP(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 569
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    .line 570
    const/16 v0, 0x46

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 571
    add-int/lit8 v0, p3, 0x2

    .line 576
    :goto_0
    return v0

    .line 573
    :cond_0
    const/16 v0, 0x50

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 574
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "P"

    aput-object v3, v1, v2

    const-string v2, "B"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p3, 0x1

    goto :goto_0
.end method

.method private handleR(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x52

    const/4 v3, 0x2

    .line 584
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    if-nez p4, :cond_0

    add-int/lit8 v0, p3, -0x2

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "IE"

    aput-object v2, v1, v5

    invoke-static {p1, v0, v3, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p3, -0x4

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "ME"

    aput-object v2, v1, v5

    const-string v2, "MA"

    aput-object v2, v1, v6

    invoke-static {p1, v0, v3, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    invoke-virtual {p2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 591
    :goto_0
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v4, :cond_1

    add-int/lit8 v0, p3, 0x2

    :goto_1
    return v0

    .line 589
    :cond_0
    invoke-virtual {p2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 591
    :cond_1
    add-int/lit8 v0, p3, 0x1

    goto :goto_1
.end method

.method private handleS(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/16 v7, 0x53

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 599
    add-int/lit8 v0, p3, -0x1

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ISL"

    aput-object v2, v1, v5

    const-string v2, "YSL"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v8, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    add-int/lit8 v0, p3, 0x1

    .line 641
    :goto_0
    return v0

    .line 602
    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x5

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "SUGAR"

    aput-object v2, v1, v5

    invoke-static {p1, p3, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    const/16 v0, 0x58

    invoke-virtual {p2, v0, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 605
    add-int/lit8 v0, p3, 0x1

    goto :goto_0

    .line 606
    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "SH"

    aput-object v1, v0, v5

    invoke-static {p1, p3, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 607
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "HEIM"

    aput-object v3, v2, v5

    const-string v3, "HOEK"

    aput-object v3, v2, v4

    const-string v3, "HOLM"

    aput-object v3, v2, v6

    const-string v3, "HOLZ"

    aput-object v3, v2, v8

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 609
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 613
    :goto_1
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 611
    :cond_2
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 614
    :cond_3
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "SIO"

    aput-object v1, v0, v5

    const-string v1, "SIA"

    aput-object v1, v0, v4

    invoke-static {p1, p3, v8, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "SIAN"

    aput-object v2, v1, v5

    invoke-static {p1, p3, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 616
    :cond_4
    if-eqz p4, :cond_5

    .line 617
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 621
    :goto_2
    add-int/lit8 v0, p3, 0x3

    goto :goto_0

    .line 619
    :cond_5
    const/16 v0, 0x58

    invoke-virtual {p2, v7, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_2

    .line 622
    :cond_6
    if-nez p3, :cond_7

    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "M"

    aput-object v2, v1, v5

    const-string v2, "N"

    aput-object v2, v1, v4

    const-string v2, "L"

    aput-object v2, v1, v6

    const-string v2, "W"

    aput-object v2, v1, v8

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    add-int/lit8 v0, p3, 0x1

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "Z"

    aput-object v2, v1, v5

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 628
    :cond_8
    const/16 v0, 0x58

    invoke-virtual {p2, v7, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 629
    add-int/lit8 v0, p3, 0x1

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "Z"

    aput-object v2, v1, v5

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v0, p3, 0x1

    goto/16 :goto_0

    .line 630
    :cond_a
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "SC"

    aput-object v1, v0, v5

    invoke-static {p1, p3, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 631
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleSC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto/16 :goto_0

    .line 633
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_c

    add-int/lit8 v0, p3, -0x2

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "AI"

    aput-object v2, v1, v5

    const-string v2, "OI"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v6, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 635
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 639
    :goto_3
    add-int/lit8 v0, p3, 0x1

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "S"

    aput-object v2, v1, v5

    const-string v2, "Z"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_0

    .line 637
    :cond_c
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_3

    .line 639
    :cond_d
    add-int/lit8 v0, p3, 0x1

    goto/16 :goto_0
.end method

.method private handleSC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x53

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 648
    add-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_3

    .line 650
    add-int/lit8 v0, p3, 0x3

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "OO"

    aput-object v2, v1, v7

    const-string v2, "ER"

    aput-object v2, v1, v5

    const-string v2, "EN"

    aput-object v2, v1, v4

    const-string v2, "UY"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string v3, "ED"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "EM"

    aput-object v3, v1, v2

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    add-int/lit8 v0, p3, 0x3

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "ER"

    aput-object v2, v1, v7

    const-string v2, "EN"

    aput-object v2, v1, v5

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    const-string v0, "X"

    const-string v1, "SK"

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :goto_0
    add-int/lit8 v0, p3, 0x3

    return v0

    .line 656
    :cond_0
    const-string v0, "SK"

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p0, p1, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x57

    if-eq v0, v1, :cond_2

    .line 660
    const/16 v0, 0x58

    invoke-virtual {p2, v0, v8}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 662
    :cond_2
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 665
    :cond_3
    add-int/lit8 v0, p3, 0x2

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "I"

    aput-object v2, v1, v7

    const-string v2, "E"

    aput-object v2, v1, v5

    const-string v2, "Y"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v5, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 666
    invoke-virtual {p2, v8}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 668
    :cond_4
    const-string v0, "SK"

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleT(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x54

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 677
    const/4 v0, 0x4

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "TION"

    aput-object v2, v1, v3

    invoke-static {p1, p3, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 679
    add-int/lit8 v0, p3, 0x3

    .line 697
    :goto_0
    return v0

    .line 680
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "TIA"

    aput-object v1, v0, v3

    const-string v1, "TCH"

    aput-object v1, v0, v4

    invoke-static {p1, p3, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 682
    add-int/lit8 v0, p3, 0x3

    goto :goto_0

    .line 683
    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "TH"

    aput-object v1, v0, v3

    invoke-static {p1, p3, v5, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "TTH"

    aput-object v1, v0, v3

    invoke-static {p1, p3, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 684
    :cond_2
    add-int/lit8 v0, p3, 0x2

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "OM"

    aput-object v2, v1, v3

    const-string v2, "AM"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v5, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "VAN "

    aput-object v2, v1, v3

    const-string v2, "VON "

    aput-object v2, v1, v4

    invoke-static {p1, v3, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "SCH"

    aput-object v1, v0, v3

    invoke-static {p1, v3, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 688
    :cond_3
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 692
    :goto_1
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 690
    :cond_4
    const/16 v0, 0x30

    invoke-virtual {p2, v0, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_1

    .line 694
    :cond_5
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 695
    add-int/lit8 v0, p3, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "T"

    aput-object v2, v1, v3

    const-string v2, "D"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v0, p3, 0x1

    goto/16 :goto_0
.end method

.method private handleW(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 704
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "WR"

    aput-object v1, v0, v4

    invoke-static {p1, p3, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    const/16 v0, 0x52

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 707
    add-int/lit8 v0, p3, 0x2

    .line 733
    :goto_0
    return v0

    .line 709
    :cond_0
    if-nez p3, :cond_3

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "WH"

    aput-object v1, v0, v4

    invoke-static {p1, p3, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 711
    :cond_1
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 713
    const/16 v0, 0x41

    const/16 v1, 0x46

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 718
    :goto_1
    add-int/lit8 v0, p3, 0x1

    goto :goto_0

    .line 716
    :cond_2
    const/16 v0, 0x41

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 719
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_4

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EWSKI"

    aput-object v3, v2, v4

    const-string v3, "EWSKY"

    aput-object v3, v2, v5

    const-string v3, "OWSKI"

    aput-object v3, v2, v6

    const-string v3, "OWSKY"

    aput-object v3, v2, v7

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "SCH"

    aput-object v1, v0, v4

    invoke-static {p1, v4, v7, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 723
    :cond_5
    const/16 v0, 0x46

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 724
    add-int/lit8 v0, p3, 0x1

    goto :goto_0

    .line 725
    :cond_6
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "WICZ"

    aput-object v1, v0, v4

    const-string v1, "WITZ"

    aput-object v1, v0, v5

    invoke-static {p1, p3, v8, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 727
    const-string v0, "TS"

    const-string v1, "FX"

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    add-int/lit8 v0, p3, 0x4

    goto/16 :goto_0

    .line 730
    :cond_7
    add-int/lit8 v0, p3, 0x1

    goto/16 :goto_0
.end method

.method private handleX(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 740
    if-nez p3, :cond_0

    .line 741
    const/16 v0, 0x53

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 742
    add-int/lit8 v0, p3, 0x1

    .line 752
    :goto_0
    return v0

    .line 744
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_1

    add-int/lit8 v0, p3, -0x3

    const/4 v1, 0x3

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "IAU"

    aput-object v3, v2, v6

    const-string v3, "EAU"

    aput-object v3, v2, v4

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, p3, -0x2

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "AU"

    aput-object v2, v1, v6

    const-string v2, "OU"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v5, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 748
    :cond_1
    const-string v0, "KS"

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 750
    :cond_2
    add-int/lit8 v0, p3, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "C"

    aput-object v2, v1, v6

    const-string v2, "X"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, p3, 0x1

    goto :goto_0
.end method

.method private handleZ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    .line 760
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    .line 762
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 763
    add-int/lit8 v0, p3, 0x2

    .line 773
    :goto_0
    return v0

    .line 765
    :cond_0
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ZO"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "ZI"

    aput-object v3, v1, v2

    const-string v2, "ZA"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_2

    if-lez p3, :cond_2

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_2

    .line 767
    :cond_1
    const-string v0, "S"

    const-string v1, "TS"

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :goto_1
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 769
    :cond_2
    const/16 v0, 0x53

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 771
    :cond_3
    add-int/lit8 v0, p3, 0x1

    goto :goto_0
.end method

.method private isSilentStart(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 876
    sget-object v2, Lorg/apache/commons/codec/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 877
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 878
    const/4 v0, 0x1

    .line 882
    :cond_0
    return v0

    .line 876
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isSlavoGermanic(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 858
    const/16 v0, 0x57

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_0

    const/16 v0, 0x4b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "CZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "WITZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVowel(C)Z
    .locals 2
    .parameter

    .prologue
    .line 866
    const-string v0, "AEIOUY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

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


# virtual methods
.method protected charAt(Ljava/lang/String;I)C
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 905
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 906
    :cond_0
    const/4 v0, 0x0

    .line 908
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x4e

    const/16 v7, 0x4b

    const/16 v6, 0x46

    .line 87
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->cleanInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    if-nez v1, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    .line 92
    :cond_0
    invoke-direct {p0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isSlavoGermanic(Ljava/lang/String;)Z

    move-result v2

    .line 93
    invoke-direct {p0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isSilentStart(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 95
    :goto_1
    new-instance v3, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->getMaxCodeLen()I

    move-result v4

    invoke-direct {v3, p0, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;-><init>(Lorg/apache/commons/codec/language/DoubleMetaphone;I)V

    .line 97
    :goto_2
    invoke-virtual {v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->isComplete()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt v0, v4, :cond_9

    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 185
    add-int/lit8 v0, v0, 0x1

    .line 186
    goto :goto_2

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 105
    :sswitch_0
    invoke-direct {p0, v3, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleAEIOUY(Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto :goto_2

    .line 108
    :sswitch_1
    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 109
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x42

    if-ne v4, v5, :cond_2

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 113
    :sswitch_2
    const/16 v4, 0x53

    invoke-virtual {v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 115
    goto :goto_2

    .line 117
    :sswitch_3
    invoke-direct {p0, v1, v3, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto :goto_2

    .line 120
    :sswitch_4
    invoke-direct {p0, v1, v3, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleD(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto :goto_2

    .line 123
    :sswitch_5
    invoke-virtual {v3, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 124
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    if-ne v4, v6, :cond_3

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 127
    :sswitch_6
    invoke-direct {p0, v1, v3, v0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleG(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v0

    goto :goto_2

    .line 130
    :sswitch_7
    invoke-direct {p0, v1, v3, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto :goto_2

    .line 133
    :sswitch_8
    invoke-direct {p0, v1, v3, v0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleJ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v0

    goto :goto_2

    .line 136
    :sswitch_9
    invoke-virtual {v3, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 137
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    if-ne v4, v7, :cond_4

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 140
    :sswitch_a
    invoke-direct {p0, v1, v3, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleL(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto :goto_2

    .line 143
    :sswitch_b
    const/16 v4, 0x4d

    invoke-virtual {v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 144
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionM0(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 147
    :sswitch_c
    invoke-virtual {v3, v8}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 148
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    if-ne v4, v8, :cond_6

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 152
    :sswitch_d
    invoke-virtual {v3, v8}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    .line 154
    goto/16 :goto_2

    .line 156
    :sswitch_e
    invoke-direct {p0, v1, v3, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleP(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto/16 :goto_2

    .line 159
    :sswitch_f
    invoke-virtual {v3, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 160
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x51

    if-ne v4, v5, :cond_7

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 163
    :sswitch_10
    invoke-direct {p0, v1, v3, v0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleR(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v0

    goto/16 :goto_2

    .line 166
    :sswitch_11
    invoke-direct {p0, v1, v3, v0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleS(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v0

    goto/16 :goto_2

    .line 169
    :sswitch_12
    invoke-direct {p0, v1, v3, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleT(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto/16 :goto_2

    .line 172
    :sswitch_13
    invoke-virtual {v3, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 173
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x56

    if-ne v4, v5, :cond_8

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 176
    :sswitch_14
    invoke-direct {p0, v1, v3, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleW(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto/16 :goto_2

    .line 179
    :sswitch_15
    invoke-direct {p0, v1, v3, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleX(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto/16 :goto_2

    .line 182
    :sswitch_16
    invoke-direct {p0, v1, v3, v0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleZ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v0

    goto/16 :goto_2

    .line 190
    :cond_9
    if-eqz p2, :cond_a

    invoke-virtual {v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->getAlternate()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->getPrimary()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 98
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x42 -> :sswitch_1
        0x43 -> :sswitch_3
        0x44 -> :sswitch_4
        0x45 -> :sswitch_0
        0x46 -> :sswitch_5
        0x47 -> :sswitch_6
        0x48 -> :sswitch_7
        0x49 -> :sswitch_0
        0x4a -> :sswitch_8
        0x4b -> :sswitch_9
        0x4c -> :sswitch_a
        0x4d -> :sswitch_b
        0x4e -> :sswitch_c
        0x4f -> :sswitch_0
        0x50 -> :sswitch_e
        0x51 -> :sswitch_f
        0x52 -> :sswitch_10
        0x53 -> :sswitch_11
        0x54 -> :sswitch_12
        0x55 -> :sswitch_0
        0x56 -> :sswitch_13
        0x57 -> :sswitch_14
        0x58 -> :sswitch_15
        0x59 -> :sswitch_0
        0x5a -> :sswitch_16
        0xc7 -> :sswitch_2
        0xd1 -> :sswitch_d
    .end sparse-switch
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 203
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "DoubleMetaphone encode parameter is not of type String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCodeLen()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    return v0
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/codec/binary/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setMaxCodeLen(I)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput p1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    .line 262
    return-void
.end method
