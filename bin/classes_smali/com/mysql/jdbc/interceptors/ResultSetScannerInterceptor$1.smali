.class Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor$1;
.super Ljava/lang/Object;
.source "ResultSetScannerInterceptor.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor;->postProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor;

.field final synthetic val$finalResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor;Lcom/mysql/jdbc/ResultSetInternalMethods;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor$1;->this$0:Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor;

    iput-object p2, p0, Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor$1;->val$finalResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 72
    const-string v0, "equals"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    const/4 v0, 0x0

    aget-object v0, p3, v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 90
    :cond_0
    return-object v0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor$1;->val$finalResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 81
    if-eqz v0, :cond_2

    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_3

    :cond_2
    const-string v2, "getString"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "getObject"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "getObjectStoredProc"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    :cond_3
    iget-object v1, p0, Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor$1;->this$0:Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor;

    iget-object v1, v1, Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor;->regexP:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "value disallowed by filter"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
