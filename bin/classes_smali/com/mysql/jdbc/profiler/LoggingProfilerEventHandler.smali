.class public Lcom/mysql/jdbc/profiler/LoggingProfilerEventHandler;
.super Ljava/lang/Object;
.source "LoggingProfilerEventHandler.java"

# interfaces
.implements Lcom/mysql/jdbc/profiler/ProfilerEventHandler;


# instance fields
.field private log:Lcom/mysql/jdbc/log/Log;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-byte v0, p1, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventType:B

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/mysql/jdbc/profiler/LoggingProfilerEventHandler;->log:Lcom/mysql/jdbc/log/Log;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/profiler/LoggingProfilerEventHandler;->log:Lcom/mysql/jdbc/log/Log;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/log/Log;->logInfo(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/profiler/LoggingProfilerEventHandler;->log:Lcom/mysql/jdbc/log/Log;

    .line 51
    return-void
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/profiler/LoggingProfilerEventHandler;->log:Lcom/mysql/jdbc/log/Log;

    .line 55
    return-void
.end method
