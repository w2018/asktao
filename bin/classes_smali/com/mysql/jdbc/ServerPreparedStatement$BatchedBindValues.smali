.class public Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;
.super Ljava/lang/Object;
.source "ServerPreparedStatement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ServerPreparedStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatchedBindValues"
.end annotation


# instance fields
.field public batchedParameterValues:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;


# direct methods
.method constructor <init>([Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;)V
    .locals 5
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    array-length v1, p1

    .line 87
    new-array v0, v1, [Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    iput-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;->batchedParameterValues:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    .line 89
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 90
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;->batchedParameterValues:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    new-instance v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v4, p1, v0

    invoke-direct {v3, v4}, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;-><init>(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;)V

    aput-object v3, v2, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method
