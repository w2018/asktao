.class public Lcom/mysql/jdbc/JDBC4NClob;
.super Lcom/mysql/jdbc/Clob;
.source "JDBC4NClob.java"

# interfaces
.implements Ljava/sql/NClob;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/Clob;-><init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 35
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/Clob;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 39
    return-void
.end method
