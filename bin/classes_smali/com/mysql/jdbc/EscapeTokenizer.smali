.class public Lcom/mysql/jdbc/EscapeTokenizer;
.super Ljava/lang/Object;
.source "EscapeTokenizer.java"


# static fields
.field private static final CHR_BEGIN_TOKEN:C = '{'

.field private static final CHR_COMMENT:C = '-'

.field private static final CHR_CR:C = '\r'

.field private static final CHR_DBL_QUOTE:C = '\"'

.field private static final CHR_END_TOKEN:C = '}'

.field private static final CHR_ESCAPE:C = '\\'

.field private static final CHR_LF:C = '\n'

.field private static final CHR_SGL_QUOTE:C = '\''

.field private static final CHR_VARIABLE:C = '@'


# instance fields
.field private bracesLevel:I

.field private emittingEscapeCode:Z

.field private inQuotes:Z

.field private pos:I

.field private quoteChar:C

.field private sawVariableUse:Z

.field private source:Ljava/lang/String;

.field private sourceLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->source:Ljava/lang/String;

    .line 41
    iput v1, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sourceLength:I

    .line 42
    iput v1, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    .line 44
    iput-boolean v1, p0, Lcom/mysql/jdbc/EscapeTokenizer;->emittingEscapeCode:Z

    .line 45
    iput-boolean v1, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sawVariableUse:Z

    .line 46
    iput v1, p0, Lcom/mysql/jdbc/EscapeTokenizer;->bracesLevel:I

    .line 47
    iput-boolean v1, p0, Lcom/mysql/jdbc/EscapeTokenizer;->inQuotes:Z

    .line 48
    iput-char v1, p0, Lcom/mysql/jdbc/EscapeTokenizer;->quoteChar:C

    .line 57
    iput-object p1, p0, Lcom/mysql/jdbc/EscapeTokenizer;->source:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sourceLength:I

    .line 59
    iput v1, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    .line 60
    return-void
.end method


# virtual methods
.method public declared-synchronized hasMoreTokens()Z
    .locals 2

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    iget v1, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sourceLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nextToken()Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x2d

    const/16 v8, 0xd

    const/16 v7, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    iget-boolean v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->emittingEscapeCode:Z

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "{"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->emittingEscapeCode:Z

    :cond_0
    move v0, v2

    .line 86
    :goto_0
    iget v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    iget v5, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sourceLength:I

    if-ge v3, v5, :cond_10

    .line 87
    iget-object v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->source:Ljava/lang/String;

    iget v5, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 90
    const/16 v5, 0x5c

    if-ne v3, v5, :cond_3

    .line 91
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    if-nez v0, :cond_2

    move v0, v1

    .line 86
    :cond_1
    :goto_1
    iget v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v2

    .line 92
    goto :goto_1

    .line 97
    :cond_3
    const/16 v5, 0x27

    if-eq v3, v5, :cond_4

    const/16 v5, 0x22

    if-ne v3, v5, :cond_7

    :cond_4
    if-nez v0, :cond_7

    .line 98
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    iget-boolean v5, p0, Lcom/mysql/jdbc/EscapeTokenizer;->inQuotes:Z

    if-eqz v5, :cond_6

    .line 100
    iget-char v5, p0, Lcom/mysql/jdbc/EscapeTokenizer;->quoteChar:C

    if-ne v3, v5, :cond_1

    .line 102
    iget v5, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sourceLength:I

    if-ge v5, v6, :cond_5

    iget-object v5, p0, Lcom/mysql/jdbc/EscapeTokenizer;->source:Ljava/lang/String;

    iget v6, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-char v6, p0, Lcom/mysql/jdbc/EscapeTokenizer;->quoteChar:C

    if-ne v5, v6, :cond_5

    .line 103
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    iget v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    goto :goto_1

    .line 106
    :cond_5
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->inQuotes:Z

    goto :goto_1

    .line 110
    :cond_6
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/mysql/jdbc/EscapeTokenizer;->inQuotes:Z

    .line 111
    iput-char v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->quoteChar:C

    goto :goto_1

    .line 117
    :cond_7
    if-eq v3, v7, :cond_8

    if-ne v3, v8, :cond_9

    .line 118
    :cond_8
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v2

    .line 120
    goto :goto_1

    .line 123
    :cond_9
    iget-boolean v5, p0, Lcom/mysql/jdbc/EscapeTokenizer;->inQuotes:Z

    if-nez v5, :cond_f

    if-nez v0, :cond_f

    .line 125
    if-ne v3, v9, :cond_b

    .line 126
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    iget v5, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sourceLength:I

    if-ge v5, v6, :cond_1

    iget-object v5, p0, Lcom/mysql/jdbc/EscapeTokenizer;->source:Ljava/lang/String;

    iget v6, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_1

    .line 130
    :goto_2
    iget v5, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    iget v6, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sourceLength:I

    if-ge v5, v6, :cond_a

    if-eq v3, v7, :cond_a

    if-eq v3, v8, :cond_a

    .line 131
    iget-object v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->source:Ljava/lang/String;

    iget v5, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 132
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 134
    :cond_a
    iget v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    goto/16 :goto_1

    .line 140
    :cond_b
    const/16 v5, 0x7b

    if-ne v3, v5, :cond_d

    .line 141
    iget v5, p0, Lcom/mysql/jdbc/EscapeTokenizer;->bracesLevel:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/mysql/jdbc/EscapeTokenizer;->bracesLevel:I

    .line 142
    iget v5, p0, Lcom/mysql/jdbc/EscapeTokenizer;->bracesLevel:I

    if-ne v5, v1, :cond_c

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->emittingEscapeCode:Z

    .line 144
    iget v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    .line 145
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 172
    :goto_3
    monitor-exit p0

    return-object v0

    .line 147
    :cond_c
    :try_start_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 152
    :cond_d
    const/16 v5, 0x7d

    if-ne v3, v5, :cond_e

    .line 153
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    iget v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->bracesLevel:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->bracesLevel:I

    .line 155
    iget v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->bracesLevel:I

    if-nez v3, :cond_1

    .line 156
    iget v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    .line 157
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 163
    :cond_e
    const/16 v0, 0x40

    if-ne v3, v0, :cond_f

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sawVariableUse:Z

    .line 168
    :cond_f
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v2

    .line 169
    goto/16 :goto_1

    .line 172
    :cond_10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_3
.end method

.method sawVariableUse()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sawVariableUse:Z

    return v0
.end method
