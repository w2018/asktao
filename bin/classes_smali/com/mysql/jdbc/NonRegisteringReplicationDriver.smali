.class public Lcom/mysql/jdbc/NonRegisteringReplicationDriver;
.super Lcom/mysql/jdbc/NonRegisteringDriver;
.source "NonRegisteringReplicationDriver.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/mysql/jdbc/NonRegisteringDriver;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/NonRegisteringReplicationDriver;->connectReplicationConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method
