.class public Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
.super Ljava/lang/Object;
.source "ServerPreparedStatement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ServerPreparedStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BindValue"
.end annotation


# instance fields
.field public bindLength:J

.field public boundBeforeExecutionNum:J

.field public bufferType:I

.field public doubleBinding:D

.field public floatBinding:F

.field public isLongData:Z

.field public isNull:Z

.field public isSet:Z

.field public longBinding:J

.field public value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->boundBeforeExecutionNum:J

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isSet:Z

    .line 118
    return-void
.end method

.method constructor <init>(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;)V
    .locals 2
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->boundBeforeExecutionNum:J

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isSet:Z

    .line 121
    iget-object v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    iput-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 122
    iget-boolean v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isSet:Z

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isSet:Z

    .line 123
    iget-boolean v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    .line 124
    iget-boolean v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    .line 125
    iget v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    iput v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    .line 126
    iget-wide v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    iput-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    .line 127
    iget-wide v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    iput-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    .line 128
    iget v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->floatBinding:F

    iput v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->floatBinding:F

    .line 129
    iget-wide v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->doubleBinding:D

    iput-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->doubleBinding:D

    .line 130
    return-void
.end method


# virtual methods
.method getBoundLength()J
    .locals 7

    .prologue
    const-wide/16 v4, 0x8

    const-wide/16 v2, 0x4

    const-wide/16 v0, 0x0

    .line 191
    iget-boolean v6, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    if-eqz v6, :cond_0

    .line 231
    :goto_0
    return-wide v0

    .line 195
    :cond_0
    iget-boolean v6, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-eqz v6, :cond_1

    .line 196
    iget-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    goto :goto_0

    .line 199
    :cond_1
    iget v6, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    .line 225
    :sswitch_0
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    array-length v0, v0

    int-to-long v0, v0

    goto :goto_0

    .line 202
    :sswitch_1
    const-wide/16 v0, 0x1

    goto :goto_0

    .line 204
    :sswitch_2
    const-wide/16 v0, 0x2

    goto :goto_0

    :sswitch_3
    move-wide v0, v2

    .line 206
    goto :goto_0

    :sswitch_4
    move-wide v0, v4

    .line 208
    goto :goto_0

    :sswitch_5
    move-wide v0, v2

    .line 210
    goto :goto_0

    :sswitch_6
    move-wide v0, v4

    .line 212
    goto :goto_0

    .line 214
    :sswitch_7
    const-wide/16 v0, 0x9

    goto :goto_0

    .line 216
    :sswitch_8
    const-wide/16 v0, 0x7

    goto :goto_0

    .line 219
    :sswitch_9
    const-wide/16 v0, 0xb

    goto :goto_0

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 199
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x7 -> :sswitch_9
        0x8 -> :sswitch_4
        0xa -> :sswitch_8
        0xb -> :sswitch_7
        0xc -> :sswitch_9
        0xf -> :sswitch_0
        0xf6 -> :sswitch_0
        0xfd -> :sswitch_0
        0xfe -> :sswitch_0
    .end sparse-switch
.end method

.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    iput-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    .line 134
    iput-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isSet:Z

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 136
    iput-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    .line 138
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->floatBinding:F

    .line 140
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->doubleBinding:D

    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "\' STREAM DATA \'"

    .line 186
    :goto_0
    return-object v0

    .line 153
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    if-eqz v0, :cond_1

    .line 154
    const-string v0, "NULL"

    goto :goto_0

    .line 157
    :cond_1
    iget v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    sparse-switch v0, :sswitch_data_0

    .line 180
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_3

    .line 181
    const-string v0, "byte data"

    goto :goto_0

    .line 162
    :sswitch_0
    iget-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 164
    :sswitch_1
    iget v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->floatBinding:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 166
    :sswitch_2
    iget-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->doubleBinding:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 174
    :sswitch_3
    if-eqz p1, :cond_2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_3
    if-eqz p1, :cond_4

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_4
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_0
        0xa -> :sswitch_3
        0xb -> :sswitch_3
        0xc -> :sswitch_3
        0xf -> :sswitch_3
        0xfd -> :sswitch_3
        0xfe -> :sswitch_3
    .end sparse-switch
.end method
