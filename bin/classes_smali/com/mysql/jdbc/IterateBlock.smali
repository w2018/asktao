.class public abstract Lcom/mysql/jdbc/IterateBlock;
.super Ljava/lang/Object;
.source "IterateBlock.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field iteratorWithCleanup:Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup",
            "<TT;>;"
        }
    .end annotation
.end field

.field javaIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field stopIterating:Z


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/IterateBlock;->stopIterating:Z

    .line 37
    iput-object p1, p0, Lcom/mysql/jdbc/IterateBlock;->iteratorWithCleanup:Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/IterateBlock;->javaIterator:Ljava/util/Iterator;

    .line 39
    return-void
.end method

.method constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/IterateBlock;->stopIterating:Z

    .line 42
    iput-object p1, p0, Lcom/mysql/jdbc/IterateBlock;->javaIterator:Ljava/util/Iterator;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/IterateBlock;->iteratorWithCleanup:Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    .line 44
    return-void
.end method


# virtual methods
.method public doForAll()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mysql/jdbc/IterateBlock;->iteratorWithCleanup:Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    if-eqz v0, :cond_3

    .line 49
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/IterateBlock;->iteratorWithCleanup:Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    invoke-virtual {v0}, Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/mysql/jdbc/IterateBlock;->iteratorWithCleanup:Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    invoke-virtual {v0}, Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/IterateBlock;->forEach(Ljava/lang/Object;)V

    .line 52
    iget-boolean v0, p0, Lcom/mysql/jdbc/IterateBlock;->stopIterating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/IterateBlock;->iteratorWithCleanup:Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    invoke-virtual {v0}, Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;->close()V

    .line 68
    :cond_2
    :goto_0
    return-void

    .line 57
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/mysql/jdbc/IterateBlock;->iteratorWithCleanup:Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    invoke-virtual {v1}, Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;->close()V

    throw v0

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/IterateBlock;->javaIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/mysql/jdbc/IterateBlock;->javaIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/IterateBlock;->forEach(Ljava/lang/Object;)V

    .line 63
    iget-boolean v0, p0, Lcom/mysql/jdbc/IterateBlock;->stopIterating:Z

    if-eqz v0, :cond_3

    goto :goto_0
.end method

.method abstract forEach(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public final fullIteration()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/mysql/jdbc/IterateBlock;->stopIterating:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
