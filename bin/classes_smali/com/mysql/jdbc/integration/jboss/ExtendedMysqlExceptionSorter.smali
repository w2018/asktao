.class public final Lcom/mysql/jdbc/integration/jboss/ExtendedMysqlExceptionSorter;
.super Lorg/jboss/resource/adapter/jdbc/vendor/MySQLExceptionSorter;
.source "ExtendedMysqlExceptionSorter.java"


# static fields
.field static final serialVersionUID:J = -0x22106da1699c433dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/jboss/resource/adapter/jdbc/vendor/MySQLExceptionSorter;-><init>()V

    return-void
.end method


# virtual methods
.method public isExceptionFatal(Ljava/sql/SQLException;)Z
    .locals 2
    .parameter

    .prologue
    .line 44
    invoke-virtual {p1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    const-string v1, "08"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/jboss/resource/adapter/jdbc/vendor/MySQLExceptionSorter;->isExceptionFatal(Ljava/sql/SQLException;)Z

    move-result v0

    goto :goto_0
.end method
