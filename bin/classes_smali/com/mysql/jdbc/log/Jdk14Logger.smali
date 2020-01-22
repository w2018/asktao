.class public Lcom/mysql/jdbc/log/Jdk14Logger;
.super Ljava/lang/Object;
.source "Jdk14Logger.java"

# interfaces
.implements Lcom/mysql/jdbc/log/Log;


# static fields
.field private static final DEBUG:Ljava/util/logging/Level;

.field private static final ERROR:Ljava/util/logging/Level;

.field private static final FATAL:Ljava/util/logging/Level;

.field private static final INFO:Ljava/util/logging/Level;

.field private static final TRACE:Ljava/util/logging/Level;

.field private static final WARN:Ljava/util/logging/Level;


# instance fields
.field protected jdkLogger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    sput-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->DEBUG:Ljava/util/logging/Level;

    .line 37
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sput-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->ERROR:Ljava/util/logging/Level;

    .line 39
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sput-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->FATAL:Ljava/util/logging/Level;

    .line 41
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    sput-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->INFO:Ljava/util/logging/Level;

    .line 43
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    sput-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->TRACE:Ljava/util/logging/Level;

    .line 45
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sput-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->WARN:Ljava/util/logging/Level;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    .line 58
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    .line 59
    return-void
.end method

.method private static final findCallerStackDepth([Ljava/lang/StackTraceElement;)I
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 236
    array-length v2, p0

    move v0, v1

    .line 238
    :goto_0
    if-ge v0, v2, :cond_2

    .line 239
    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 241
    const-string v4, "com.mysql.jdbc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "com.mysql.jdbc.compliance"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 246
    :cond_0
    :goto_1
    return v0

    .line 238
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 246
    goto :goto_1
.end method

.method private logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const-string v1, "N/A"

    .line 257
    const-string v0, "N/A"

    .line 261
    instance-of v2, p2, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    if-eqz v2, :cond_1

    .line 262
    invoke-static {p2}, Lcom/mysql/jdbc/log/LogUtils;->expandProfilerEventIfNecessary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v0

    move-object v3, v1

    .line 279
    :goto_0
    if-nez p3, :cond_3

    .line 280
    iget-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1, v2, v3, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_0
    :goto_1
    return-void

    .line 264
    :cond_1
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 265
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 267
    invoke-static {v2}, Lcom/mysql/jdbc/log/Jdk14Logger;->findCallerStackDepth([Ljava/lang/StackTraceElement;)I

    move-result v3

    .line 269
    if-eqz v3, :cond_2

    .line 270
    aget-object v0, v2, v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 271
    aget-object v1, v2, v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 276
    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v0

    move-object v3, v1

    goto :goto_0

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public isDebugEnabled()Z
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isFatalEnabled()Z
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public logDebug(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 110
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->DEBUG:Ljava/util/logging/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 111
    return-void
.end method

.method public logDebug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 122
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->DEBUG:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 123
    return-void
.end method

.method public logError(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->ERROR:Ljava/util/logging/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 133
    return-void
.end method

.method public logError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 144
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->ERROR:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 145
    return-void
.end method

.method public logFatal(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 154
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->FATAL:Ljava/util/logging/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 155
    return-void
.end method

.method public logFatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 166
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->FATAL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 167
    return-void
.end method

.method public logInfo(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 176
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->INFO:Ljava/util/logging/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 177
    return-void
.end method

.method public logInfo(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 188
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->INFO:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 189
    return-void
.end method

.method public logTrace(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 198
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->TRACE:Ljava/util/logging/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 199
    return-void
.end method

.method public logTrace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 210
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->TRACE:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 211
    return-void
.end method

.method public logWarn(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 220
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->WARN:Ljava/util/logging/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 221
    return-void
.end method

.method public logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 232
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->WARN:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 233
    return-void
.end method
