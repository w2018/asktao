.class public Lcom/mysql/jdbc/exceptions/jdbc4/MySQLQueryInterruptedException;
.super Lcom/mysql/jdbc/exceptions/jdbc4/MySQLNonTransientException;
.source "MySQLQueryInterruptedException.java"


# static fields
.field private static final serialVersionUID:J = -0x78f032cd9e03580dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mysql/jdbc/exceptions/jdbc4/MySQLNonTransientException;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/exceptions/jdbc4/MySQLNonTransientException;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/exceptions/jdbc4/MySQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/exceptions/jdbc4/MySQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    return-void
.end method
