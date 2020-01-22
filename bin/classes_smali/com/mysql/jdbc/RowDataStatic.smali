.class public Lcom/mysql/jdbc/RowDataStatic;
.super Ljava/lang/Object;
.source "RowDataStatic.java"

# interfaces
.implements Lcom/mysql/jdbc/RowData;


# instance fields
.field private index:I

.field private metadata:[Lcom/mysql/jdbc/Field;

.field owner:Lcom/mysql/jdbc/ResultSetImpl;

.field private rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/mysql/jdbc/RowDataStatic;->index:I

    .line 48
    iput-object p1, p0, Lcom/mysql/jdbc/RowDataStatic;->rows:Ljava/util/List;

    .line 49
    return-void
.end method


# virtual methods
.method public addRow(Lcom/mysql/jdbc/ResultSetRow;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataStatic;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public afterLast()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataStatic;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataStatic;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/RowDataStatic;->index:I

    .line 62
    :cond_0
    return-void
.end method

.method public beforeFirst()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataStatic;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/mysql/jdbc/RowDataStatic;->index:I

    .line 71
    :cond_0
    return-void
.end method

.method public beforeLast()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataStatic;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataStatic;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mysql/jdbc/RowDataStatic;->index:I

    .line 77
    :cond_0
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public getAt(I)Lcom/mysql/jdbc/ResultSetRow;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 83
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/RowDataStatic;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 84
    :cond_0
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataStatic;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ResultSetRow;

    iget-object v1, p0, Lcom/mysql/jdbc/RowDataStatic;->metadata:[Lcom/mysql/jdbc/Field;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->setMetadata([Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentRowNumber()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/mysql/jdbc/RowDataStatic;->index:I

    return v0
.end method

.method public getOwner()Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataStatic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lcom/mysql/jdbc/RowDataStatic;->index:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/mysql/jdbc/RowDataStatic;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Lcom/mysql/jdbc/RowDataStatic;->index:I

    iget-object v1, p0, Lcom/mysql/jdbc/RowDataStatic;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/RowDataStatic;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBeforeFirst()Z
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Lcom/mysql/jdbc/RowDataStatic;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/RowDataStatic;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDynamic()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataStatic;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/mysql/jdbc/RowDataStatic;->index:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLast()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 137
    iget-object v1, p0, Lcom/mysql/jdbc/RowDataStatic;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/mysql/jdbc/RowDataStatic;->index:I

    iget-object v2, p0, Lcom/mysql/jdbc/RowDataStatic;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public moveRowRelative(I)V
    .locals 2
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataStatic;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 146
    iget v0, p0, Lcom/mysql/jdbc/RowDataStatic;->index:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mysql/jdbc/RowDataStatic;->index:I

    .line 147
    iget v0, p0, Lcom/mysql/jdbc/RowDataStatic;->index:I

    const/4 v1, -0x1

    if-ge v0, v1, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/mysql/jdbc/RowDataStatic;->beforeFirst()V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget v0, p0, Lcom/mysql/jdbc/RowDataStatic;->index:I

    iget-object v1, p0, Lcom/mysql/jdbc/RowDataStatic;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/mysql/jdbc/RowDataStatic;->afterLast()V

    goto :goto_0
.end method

.method public next()Lcom/mysql/jdbc/ResultSetRow;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 156
    iget v0, p0, Lcom/mysql/jdbc/RowDataStatic;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mysql/jdbc/RowDataStatic;->index:I

    .line 158
    iget v0, p0, Lcom/mysql/jdbc/RowDataStatic;->index:I

    iget-object v1, p0, Lcom/mysql/jdbc/RowDataStatic;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/mysql/jdbc/RowDataStatic;->afterLast()V

    .line 166
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 160
    :cond_1
    iget v0, p0, Lcom/mysql/jdbc/RowDataStatic;->index:I

    iget-object v1, p0, Lcom/mysql/jdbc/RowDataStatic;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataStatic;->rows:Ljava/util/List;

    iget v1, p0, Lcom/mysql/jdbc/RowDataStatic;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ResultSetRow;

    .line 163
    iget-object v1, p0, Lcom/mysql/jdbc/RowDataStatic;->metadata:[Lcom/mysql/jdbc/Field;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->setMetadata([Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v0

    goto :goto_0
.end method

.method public removeRow(I)V
    .locals 1
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataStatic;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 171
    return-void
.end method

.method public setCurrentRow(I)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput p1, p0, Lcom/mysql/jdbc/RowDataStatic;->index:I

    .line 175
    return-void
.end method

.method public setMetadata([Lcom/mysql/jdbc/Field;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/mysql/jdbc/RowDataStatic;->metadata:[Lcom/mysql/jdbc/Field;

    .line 194
    return-void
.end method

.method public setOwner(Lcom/mysql/jdbc/ResultSetImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/mysql/jdbc/RowDataStatic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    .line 182
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataStatic;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public wasEmpty()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataStatic;->rows:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/RowDataStatic;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
