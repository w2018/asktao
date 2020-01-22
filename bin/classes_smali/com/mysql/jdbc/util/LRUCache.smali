.class public Lcom/mysql/jdbc/util/LRUCache;
.super Ljava/util/LinkedHashMap;
.source "LRUCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected maxElements:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    .line 34
    const/high16 v0, 0x3f40

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 35
    iput p1, p0, Lcom/mysql/jdbc/util/LRUCache;->maxElements:I

    .line 36
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/mysql/jdbc/util/LRUCache;->size()I

    move-result v0

    iget v1, p0, Lcom/mysql/jdbc/util/LRUCache;->maxElements:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
