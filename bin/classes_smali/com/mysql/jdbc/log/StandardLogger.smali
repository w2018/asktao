.class public Lcom/mysql/jdbc/log/StandardLogger;
.super Ljava/lang/Object;
.source "StandardLogger.java"

# interfaces
.implements Lcom/mysql/jdbc/log/Log;


# static fields
.field private static final DEBUG:I = 0x4

.field private static final ERROR:I = 0x1

.field private static final FATAL:I = 0x0

.field private static final INFO:I = 0x3

.field private static final TRACE:I = 0x5

.field private static final WARN:I = 0x2

.field private static bufferedLog:Ljava/lang/StringBuffer;


# instance fields
.field private logLocationInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/log/StandardLogger;->bufferedLog:Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/log/StandardLogger;-><init>(Ljava/lang/String;Z)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/log/StandardLogger;->logLocationInfo:Z

    .line 66
    iput-boolean p2, p0, Lcom/mysql/jdbc/log/StandardLogger;->logLocationInfo:Z

    .line 67
    return-void
.end method

.method public static dropBuffer()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/log/StandardLogger;->bufferedLog:Ljava/lang/StringBuffer;

    .line 75
    return-void
.end method

.method public static getBuffer()Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/mysql/jdbc/log/StandardLogger;->bufferedLog:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public static startLoggingToBuffer()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/log/StandardLogger;->bufferedLog:Ljava/lang/StringBuffer;

    .line 71
    return-void
.end method


# virtual methods
.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public isFatalEnabled()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public logDebug(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 130
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 131
    return-void
.end method

.method public logDebug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 142
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 143
    return-void
.end method

.method public logError(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 152
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 153
    return-void
.end method

.method public logError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 165
    return-void
.end method

.method public logFatal(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 174
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 175
    return-void
.end method

.method public logFatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 187
    return-void
.end method

.method public logInfo(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 196
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 197
    return-void
.end method

.method public logInfo(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 208
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 209
    return-void
.end method

.method protected logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    packed-switch p1, :pswitch_data_0

    .line 292
    :goto_0
    instance-of v1, p2, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    if-eqz v1, :cond_3

    .line 293
    invoke-static {p2}, Lcom/mysql/jdbc/log/LogUtils;->expandProfilerEventIfNecessary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 307
    :cond_0
    :goto_1
    if-eqz p3, :cond_1

    .line 308
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v1, "EXCEPTION STACK TRACE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-static {p3}, Lcom/mysql/jdbc/Util;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 320
    sget-object v1, Lcom/mysql/jdbc/log/StandardLogger;->bufferedLog:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_2

    .line 321
    sget-object v1, Lcom/mysql/jdbc/log/StandardLogger;->bufferedLog:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    :cond_2
    return-void

    .line 262
    :pswitch_0
    const-string v1, "FATAL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 267
    :pswitch_1
    const-string v1, "ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 272
    :pswitch_2
    const-string v1, "WARN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 277
    :pswitch_3
    const-string v1, "INFO: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 282
    :pswitch_4
    const-string v1, "DEBUG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 287
    :pswitch_5
    const-string v1, "TRACE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 296
    :cond_3
    iget-boolean v1, p0, Lcom/mysql/jdbc/log/StandardLogger;->logLocationInfo:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    .line 297
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 298
    invoke-static {v1}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_4
    if-eqz p2, :cond_0

    .line 303
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public logTrace(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 218
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 219
    return-void
.end method

.method public logTrace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 230
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 231
    return-void
.end method

.method public logWarn(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 240
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 241
    return-void
.end method

.method public logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 252
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 253
    return-void
.end method
