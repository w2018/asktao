.class final Lorg/apache/commons/codec/language/bm/Rule$Phoneme$1;
.super Ljava/lang/Object;
.source "Rule.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/commons/codec/language/bm/Rule$Phoneme;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 85
    check-cast p1, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    check-cast p2, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme$1;->compare(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 88
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->access$000(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 89
    invoke-static {p2}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->access$000(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 90
    const/4 v1, 0x1

    .line 102
    :cond_0
    :goto_1
    return v1

    .line 92
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->access$000(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-static {p2}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->access$000(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    sub-int/2addr v2, v3

    .line 93
    if-eqz v2, :cond_2

    move v1, v2

    .line 94
    goto :goto_1

    .line 88
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_3
    invoke-static {p1}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->access$000(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-static {p2}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->access$000(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 99
    const/4 v1, -0x1

    goto :goto_1
.end method
