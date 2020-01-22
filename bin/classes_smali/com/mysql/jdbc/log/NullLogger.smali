.class public Lcom/mysql/jdbc/log/NullLogger;
.super Ljava/lang/Object;
.source "NullLogger.java"

# interfaces
.implements Lcom/mysql/jdbc/log/Log;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public isFatalEnabled()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public logDebug(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    return-void
.end method

.method public logDebug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    return-void
.end method

.method public logError(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    return-void
.end method

.method public logError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    return-void
.end method

.method public logFatal(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    return-void
.end method

.method public logFatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    return-void
.end method

.method public logInfo(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    return-void
.end method

.method public logInfo(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    return-void
.end method

.method public logTrace(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    return-void
.end method

.method public logTrace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    return-void
.end method

.method public logWarn(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    return-void
.end method

.method public logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    return-void
.end method
