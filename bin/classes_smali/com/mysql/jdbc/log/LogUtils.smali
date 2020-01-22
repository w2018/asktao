.class public Lcom/mysql/jdbc/log/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static final CALLER_INFORMATION_NOT_AVAILABLE:Ljava/lang/String; = "Caller information not available"

.field private static final LINE_SEPARATOR:Ljava/lang/String;

.field private static final LINE_SEPARATOR_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/log/LogUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/mysql/jdbc/log/LogUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/mysql/jdbc/log/LogUtils;->LINE_SEPARATOR_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expandProfilerEventIfNecessary(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 39
    instance-of v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    if-eqz v0, :cond_2

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    check-cast p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    .line 44
    invoke-virtual {p0}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->getEventCreationPointAsString()Ljava/lang/String;

    move-result-object v0

    .line 46
    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Lcom/mysql/jdbc/Util;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_0
    const-string v2, "Profiler Event: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->getEventType()B

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 89
    const-string v2, "UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :goto_0
    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v0, " duration: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->getEventDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->getDurationUnits()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v0, ", connection-id: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->getConnectionId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    const-string v0, ", statement-id: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p0}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->getStatementId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    const-string v0, ", resultset-id: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p0}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->getResultSetId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_1

    .line 108
    const-string v2, ", message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    move-object p0, v1

    .line 115
    :cond_2
    return-object p0

    .line 54
    :pswitch_0
    const-string v2, "EXECUTE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 59
    :pswitch_1
    const-string v2, "FETCH"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 64
    :pswitch_2
    const-string v2, "CONSTRUCT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 69
    :pswitch_3
    const-string v2, "PREPARE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 74
    :pswitch_4
    const-string v2, "QUERY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 79
    :pswitch_5
    const-string v2, "WARN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 84
    :pswitch_6
    const-string v2, "SLOW QUERY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method public static findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 119
    invoke-static {p0}, Lcom/mysql/jdbc/Util;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 121
    const-string v0, "Caller information not available"

    .line 123
    const-string v1, "com.mysql.jdbc"

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 125
    if-eq v1, v4, :cond_0

    .line 127
    const-string v3, "com.mysql.jdbc.compliance"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 129
    if-eq v3, v4, :cond_2

    .line 130
    sget v1, Lcom/mysql/jdbc/log/LogUtils;->LINE_SEPARATOR_LENGTH:I

    sub-int v1, v3, v1

    .line 135
    :goto_0
    if-eq v1, v4, :cond_0

    .line 136
    sget-object v0, Lcom/mysql/jdbc/log/LogUtils;->LINE_SEPARATOR:Ljava/lang/String;

    sget v3, Lcom/mysql/jdbc/log/LogUtils;->LINE_SEPARATOR_LENGTH:I

    add-int/2addr v3, v1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 138
    if-eq v0, v4, :cond_3

    .line 139
    sget v3, Lcom/mysql/jdbc/log/LogUtils;->LINE_SEPARATOR_LENGTH:I

    add-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_0
    :goto_1
    const-string v1, "\tat "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "at "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    :cond_1
    return-object v0

    .line 132
    :cond_2
    sget-object v3, Lcom/mysql/jdbc/log/LogUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 141
    :cond_3
    sget v0, Lcom/mysql/jdbc/log/LogUtils;->LINE_SEPARATOR_LENGTH:I

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
