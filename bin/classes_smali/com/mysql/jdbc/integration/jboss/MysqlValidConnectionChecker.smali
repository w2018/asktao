.class public final Lcom/mysql/jdbc/integration/jboss/MysqlValidConnectionChecker;
.super Ljava/lang/Object;
.source "MysqlValidConnectionChecker.java"

# interfaces
.implements Lorg/jboss/resource/adapter/jdbc/ValidConnectionChecker;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7ba49f511d3f0049L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public isValidConnection(Ljava/sql/Connection;)Ljava/sql/SQLException;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 55
    :try_start_0
    invoke-interface {p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 57
    :try_start_1
    const-string v2, "/* ping */ SELECT 1"

    invoke-interface {v1, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 63
    if-eqz v1, :cond_0

    .line 65
    :try_start_2
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 61
    :cond_0
    :goto_0
    return-object v0

    .line 63
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1
    if-eqz v1, :cond_1

    .line 65
    :try_start_3
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    .line 63
    :cond_1
    :goto_2
    throw v0

    .line 60
    :catch_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 63
    :goto_3
    if-eqz v1, :cond_0

    .line 65
    :try_start_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 66
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_2

    .line 63
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 60
    :catch_3
    move-exception v0

    goto :goto_3
.end method
