.class public Lcom/mysql/jdbc/ReplicationDriver;
.super Lcom/mysql/jdbc/NonRegisteringReplicationDriver;
.source "ReplicationDriver.java"

# interfaces
.implements Ljava/sql/Driver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/NonRegisteringReplicationDriver;

    invoke-direct {v0}, Lcom/mysql/jdbc/NonRegisteringReplicationDriver;-><init>()V

    invoke-static {v0}, Ljava/sql/DriverManager;->registerDriver(Ljava/sql/Driver;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t register driver!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mysql/jdbc/NonRegisteringReplicationDriver;-><init>()V

    .line 63
    return-void
.end method
