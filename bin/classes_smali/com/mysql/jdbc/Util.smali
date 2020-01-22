.class public Lcom/mysql/jdbc/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/Util$RandStructcture;
    }
.end annotation


# static fields
.field private static final MYSQL_JDBC_PACKAGE_ROOT:Ljava/lang/String;

.field private static enclosingInstance:Lcom/mysql/jdbc/Util;

.field private static final implementedInterfacesCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static isColdFusion:Z

.field private static isJdbc4:Z

.field private static isJdbc42:Z

.field private static final isJdbcInterfaceCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static jvmUpdateNumber:I

.field private static jvmVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/mysql/jdbc/Util;

    invoke-direct {v0}, Lcom/mysql/jdbc/Util;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/Util;->enclosingInstance:Lcom/mysql/jdbc/Util;

    .line 67
    sput v6, Lcom/mysql/jdbc/Util;->jvmVersion:I

    .line 69
    sput v6, Lcom/mysql/jdbc/Util;->jvmUpdateNumber:I

    .line 71
    sput-boolean v2, Lcom/mysql/jdbc/Util;->isColdFusion:Z

    .line 75
    :try_start_0
    const-string v0, "java.sql.NClob"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 76
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mysql/jdbc/Util;->isJdbc4:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    :try_start_1
    const-string v0, "java.sql.JDBCType"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 83
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mysql/jdbc/Util;->isJdbc42:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    :goto_1
    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    const/16 v0, 0x2e

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 90
    add-int/lit8 v0, v4, 0x1

    .line 91
    if-eq v4, v6, :cond_1

    .line 92
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 96
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 97
    if-le v0, v4, :cond_5

    .line 98
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mysql/jdbc/Util;->jvmVersion:I

    .line 103
    :goto_2
    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 104
    add-int/lit8 v0, v4, 0x1

    .line 105
    if-eq v4, v6, :cond_3

    .line 106
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_2

    .line 110
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 111
    if-le v0, v4, :cond_4

    .line 112
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mysql/jdbc/Util;->jvmUpdateNumber:I

    .line 121
    :cond_4
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Lcom/mysql/jdbc/Util;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_9

    .line 124
    const-string v3, "coldfusion"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_8

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/mysql/jdbc/Util;->isColdFusion:Z

    .line 571
    :goto_4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/Util;->isJdbcInterfaceCache:Ljava/util/concurrent/ConcurrentMap;

    .line 618
    const-class v0, Lcom/mysql/jdbc/MultiHostConnectionProxy;

    invoke-static {v0}, Lcom/mysql/jdbc/Util;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 620
    const-string v1, "jdbc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/Util;->MYSQL_JDBC_PACKAGE_ROOT:Ljava/lang/String;

    .line 635
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/Util;->implementedInterfacesCache:Ljava/util/concurrent/ConcurrentMap;

    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    sput-boolean v2, Lcom/mysql/jdbc/Util;->isJdbc4:Z

    goto/16 :goto_0

    .line 84
    :catch_1
    move-exception v0

    .line 85
    sput-boolean v2, Lcom/mysql/jdbc/Util;->isJdbc42:Z

    goto/16 :goto_1

    .line 101
    :cond_5
    sget-boolean v0, Lcom/mysql/jdbc/Util;->isJdbc42:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    :goto_5
    sput v0, Lcom/mysql/jdbc/Util;->jvmVersion:I

    goto :goto_2

    :cond_6
    sget-boolean v0, Lcom/mysql/jdbc/Util;->isJdbc4:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_5

    :cond_7
    const/4 v0, 0x5

    goto :goto_5

    :cond_8
    move v0, v2

    .line 124
    goto :goto_3

    .line 126
    :cond_9
    sput-boolean v2, Lcom/mysql/jdbc/Util;->isColdFusion:Z

    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static calculateDifferences(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 486
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 488
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 489
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 494
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 496
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 497
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 507
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 511
    instance-of v5, v1, Ljava/lang/Byte;

    if-eqz v5, :cond_2

    .line 512
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    move-object v0, v1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    sub-int v0, v5, v0

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 500
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/Double;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 501
    new-instance v0, Ljava/lang/Double;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 502
    :catch_0
    move-exception v0

    goto :goto_0

    .line 513
    :cond_2
    instance-of v5, v1, Ljava/lang/Short;

    if-eqz v5, :cond_3

    .line 514
    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    sub-int/2addr v0, v1

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 515
    :cond_3
    instance-of v5, v1, Ljava/lang/Integer;

    if-eqz v5, :cond_4

    .line 516
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 517
    :cond_4
    instance-of v5, v1, Ljava/lang/Long;

    if-eqz v5, :cond_5

    .line 518
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v5, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 519
    :cond_5
    instance-of v5, v1, Ljava/lang/Float;

    if-eqz v5, :cond_6

    .line 520
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 521
    :cond_6
    instance-of v5, v1, Ljava/lang/Double;

    if-eqz v5, :cond_7

    .line 522
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->shortValue()S

    move-result v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->shortValue()S

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 523
    :cond_7
    instance-of v5, v1, Ljava/math/BigDecimal;

    if-eqz v5, :cond_8

    .line 524
    check-cast v0, Ljava/math/BigDecimal;

    check-cast v1, Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 525
    :cond_8
    instance-of v5, v1, Ljava/math/BigInteger;

    if-eqz v5, :cond_0

    .line 526
    check-cast v0, Ljava/math/BigInteger;

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 530
    :cond_9
    return-object v2
.end method

.method public static getImplementedInterfaces(Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 647
    sget-object v0, Lcom/mysql/jdbc/Util;->implementedInterfacesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    .line 648
    if-eqz v0, :cond_0

    .line 663
    :goto_0
    return-object v0

    .line 652
    :cond_0
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v1, p0

    .line 655
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 656
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_2

    .line 658
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    .line 659
    sget-object v1, Lcom/mysql/jdbc/Util;->implementedInterfacesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    .line 660
    if-eqz v1, :cond_1

    :goto_2
    move-object v0, v1

    .line 663
    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_2

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            "Lcom/mysql/jdbc/ExceptionInterceptor;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 408
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    const-string v1, "Can\'t instantiate required class"

    const-string v2, "S1000"

    invoke-static {v1, v2, v0, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 411
    :catch_1
    move-exception v0

    .line 412
    const-string v1, "Can\'t instantiate required class"

    const-string v2, "S1000"

    invoke-static {v1, v2, v0, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 413
    :catch_2
    move-exception v0

    .line 414
    const-string v1, "Can\'t instantiate required class"

    const-string v2, "S1000"

    invoke-static {v1, v2, v0, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public static getJVMUpdateNumber()I
    .locals 1

    .prologue
    .line 147
    sget v0, Lcom/mysql/jdbc/Util;->jvmUpdateNumber:I

    return v0
.end method

.method public static getJVMVersion()I
    .locals 1

    .prologue
    .line 139
    sget v0, Lcom/mysql/jdbc/Util;->jvmVersion:I

    return v0
.end method

.method public static getPackageName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 712
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 713
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 714
    if-lez v1, :cond_0

    .line 715
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 717
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static final handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;[",
            "Ljava/lang/Object;",
            "Lcom/mysql/jdbc/ExceptionInterceptor;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 425
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    return-object v0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    const-string v1, "Can\'t instantiate required class"

    const-string v2, "S1000"

    invoke-static {v1, v2, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 428
    :catch_1
    move-exception v0

    .line 429
    const-string v1, "Can\'t instantiate required class"

    const-string v2, "S1000"

    invoke-static {v1, v2, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 430
    :catch_2
    move-exception v0

    .line 431
    const-string v1, "Can\'t instantiate required class"

    const-string v2, "S1000"

    invoke-static {v1, v2, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 432
    :catch_3
    move-exception v0

    .line 433
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 435
    instance-of v1, v0, Ljava/sql/SQLException;

    if-eqz v1, :cond_0

    .line 436
    check-cast v0, Ljava/sql/SQLException;

    throw v0

    .line 439
    :cond_0
    instance-of v1, v0, Ljava/lang/ExceptionInInitializerError;

    if-eqz v1, :cond_1

    .line 440
    check-cast v0, Ljava/lang/ExceptionInInitializerError;

    invoke-virtual {v0}, Ljava/lang/ExceptionInInitializerError;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .line 443
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1000"

    invoke-static {v1, v2, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public static hashPre41Password(Ljava/lang/String;)[J
    .locals 1
    .parameter

    .prologue
    .line 214
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mysql/jdbc/Util;->hashPre41Password(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public static hashPre41Password(Ljava/lang/String;Ljava/lang/String;)[J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 207
    :try_start_0
    const-string v0, "\\s"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/Util;->newHash([B)[J
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const/4 v0, 0x0

    new-array v0, v0, [J

    goto :goto_0
.end method

.method public static interfaceExists(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 457
    :try_start_0
    const-string v0, "java.net.NetworkInterface"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 458
    const-string v4, "getByName"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 460
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 458
    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    move v0, v2

    .line 460
    goto :goto_0
.end method

.method public static isColdFusion()Z
    .locals 1

    .prologue
    .line 151
    sget-boolean v0, Lcom/mysql/jdbc/Util;->isColdFusion:Z

    return v0
.end method

.method public static isCommunityEdition(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 158
    invoke-static {p0}, Lcom/mysql/jdbc/Util;->isEnterpriseEdition(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnterpriseEdition(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 165
    const-string v0, "enterprise"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "commercial"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "advanced"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJdbc4()Z
    .locals 1

    .prologue
    .line 131
    sget-boolean v0, Lcom/mysql/jdbc/Util;->isJdbc4:Z

    return v0
.end method

.method public static isJdbc42()Z
    .locals 1

    .prologue
    .line 135
    sget-boolean v0, Lcom/mysql/jdbc/Util;->isJdbc42:Z

    return v0
.end method

.method public static isJdbcInterface(Ljava/lang/Class;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 580
    sget-object v2, Lcom/mysql/jdbc/Util;->isJdbcInterfaceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 581
    sget-object v0, Lcom/mysql/jdbc/Util;->isJdbcInterfaceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 611
    :goto_0
    return v0

    .line 584
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 586
    :try_start_0
    invoke-static {p0}, Lcom/mysql/jdbc/Util;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mysql/jdbc/Util;->isJdbcPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 587
    sget-object v2, Lcom/mysql/jdbc/Util;->isJdbcInterfaceCache:Ljava/util/concurrent/ConcurrentMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 590
    :catch_0
    move-exception v2

    .line 598
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 599
    invoke-static {v5}, Lcom/mysql/jdbc/Util;->isJdbcInterface(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 600
    sget-object v1, Lcom/mysql/jdbc/Util;->isJdbcInterfaceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 598
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 605
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/mysql/jdbc/Util;->isJdbcInterface(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 606
    sget-object v1, Lcom/mysql/jdbc/Util;->isJdbcInterfaceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 610
    :cond_4
    sget-object v0, Lcom/mysql/jdbc/Util;->isJdbcInterfaceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 611
    goto :goto_0
.end method

.method public static isJdbcPackage(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 630
    if-eqz p0, :cond_1

    const-string v0, "java.sql"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "javax.sql"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mysql/jdbc/Util;->MYSQL_JDBC_PACKAGE_ROOT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static jvmMeetsMinimum(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-static {}, Lcom/mysql/jdbc/Util;->getJVMVersion()I

    move-result v0

    if-gt v0, p0, :cond_0

    invoke-static {}, Lcom/mysql/jdbc/Util;->getJVMVersion()I

    move-result v0

    if-ne v0, p0, :cond_1

    invoke-static {}, Lcom/mysql/jdbc/Util;->getJVMUpdateNumber()I

    move-result v0

    if-lt v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mysql/jdbc/Connection;",
            "Ljava/util/Properties;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/ExceptionInterceptor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mysql/jdbc/Extension;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 546
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 548
    const-string v1, ","

    invoke-static {p2, v1, v8}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v6

    .line 550
    const/4 v2, 0x0

    .line 553
    :try_start_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v3, v4

    :goto_0
    if-ge v3, v7, :cond_0

    .line 554
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 555
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/Extension;

    .line 556
    invoke-interface {v1, p0, p1}, Lcom/mysql/jdbc/Extension;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 558
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 560
    :catch_0
    move-exception v1

    .line 561
    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-static {p3, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 562
    invoke-virtual {v2, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 564
    throw v2

    .line 567
    :cond_0
    return-object v5
.end method

.method public static newCrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-object p0

    .line 177
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/Util;->newHash([B)[J

    move-result-object v0

    .line 178
    invoke-static {p0, p2}, Lcom/mysql/jdbc/Util;->hashPre41Password(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v1

    .line 179
    const-wide/32 v5, 0x3fffffff

    .line 180
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x0

    aget-wide v7, v1, v4

    xor-long/2addr v2, v7

    rem-long v3, v2, v5

    .line 181
    const/4 v2, 0x1

    aget-wide v7, v0, v2

    const/4 v0, 0x1

    aget-wide v0, v1, v0

    xor-long/2addr v0, v7

    rem-long v1, v0, v5

    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v7, v0, [C

    .line 184
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_2

    .line 185
    const-wide/16 v8, 0x3

    mul-long/2addr v3, v8

    add-long/2addr v3, v1

    rem-long/2addr v3, v5

    .line 186
    add-long/2addr v1, v3

    const-wide/16 v8, 0x21

    add-long/2addr v1, v8

    rem-long/2addr v1, v5

    .line 187
    long-to-double v8, v3

    long-to-double v10, v5

    div-double/2addr v8, v10

    .line 188
    const-wide/high16 v10, 0x403f

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4050

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    int-to-byte v8, v8

    .line 189
    int-to-char v8, v8

    aput-char v8, v7, v0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 192
    :cond_2
    const-wide/16 v8, 0x3

    mul-long/2addr v3, v8

    add-long/2addr v3, v1

    rem-long/2addr v3, v5

    .line 193
    add-long v0, v3, v1

    const-wide/16 v8, 0x21

    add-long/2addr v0, v8

    rem-long/2addr v0, v5

    .line 194
    long-to-double v0, v3

    long-to-double v2, v5

    div-double/2addr v0, v2

    .line 195
    const-wide/high16 v2, 0x403f

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-byte v1, v0

    .line 197
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 198
    aget-char v2, v7, v0

    int-to-char v3, v1

    xor-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v7, v0

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 201
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v7}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method static newHash([B)[J
    .locals 14
    .parameter

    .prologue
    .line 218
    const-wide/32 v5, 0x50305735

    .line 219
    const-wide/16 v3, 0x7

    .line 220
    const-wide/32 v1, 0x12345671

    .line 223
    array-length v7, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v7, :cond_0

    aget-byte v8, p0, v0

    .line 224
    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    .line 225
    const-wide/16 v10, 0x3f

    and-long/2addr v10, v5

    add-long/2addr v10, v3

    mul-long/2addr v10, v8

    const/16 v12, 0x8

    shl-long v12, v5, v12

    add-long/2addr v10, v12

    xor-long/2addr v5, v10

    .line 226
    const/16 v10, 0x8

    shl-long v10, v1, v10

    xor-long/2addr v10, v5

    add-long/2addr v1, v10

    .line 227
    add-long/2addr v3, v8

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 231
    const/4 v3, 0x0

    const-wide/32 v7, 0x7fffffff

    and-long v4, v5, v7

    aput-wide v4, v0, v3

    .line 232
    const/4 v3, 0x1

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v1, v4

    aput-wide v1, v0, v3

    .line 234
    return-object v0
.end method

.method public static oldCrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 242
    const-wide/32 v5, 0x1ffffff

    .line 246
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-object p0

    .line 250
    :cond_1
    invoke-static {p1}, Lcom/mysql/jdbc/Util;->oldHash(Ljava/lang/String;)J

    move-result-wide v0

    .line 251
    invoke-static {p0}, Lcom/mysql/jdbc/Util;->oldHash(Ljava/lang/String;)J

    move-result-wide v2

    .line 253
    xor-long/2addr v0, v2

    .line 254
    rem-long v3, v0, v5

    .line 256
    const-wide/16 v0, 0x2

    div-long v1, v3, v0

    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v7, v0, [C

    .line 260
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_2

    .line 261
    const-wide/16 v8, 0x3

    mul-long/2addr v3, v8

    add-long/2addr v3, v1

    rem-long/2addr v3, v5

    .line 262
    add-long/2addr v1, v3

    const-wide/16 v8, 0x21

    add-long/2addr v1, v8

    rem-long/2addr v1, v5

    .line 263
    long-to-double v8, v3

    long-to-double v10, v5

    div-double/2addr v8, v10

    .line 264
    const-wide/high16 v10, 0x403f

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4050

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    int-to-byte v8, v8

    .line 265
    int-to-char v8, v8

    aput-char v8, v7, v0

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 268
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v7}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method static oldHash(Ljava/lang/String;)J
    .locals 11
    .parameter

    .prologue
    .line 272
    const-wide/32 v3, 0x50305735

    .line 273
    const-wide/16 v1, 0x7

    .line 276
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 277
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_1

    .line 276
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-long v5, v5

    .line 282
    const-wide/16 v7, 0x3f

    and-long/2addr v7, v3

    add-long/2addr v7, v1

    mul-long/2addr v7, v5

    const/16 v9, 0x8

    shl-long v9, v3, v9

    add-long/2addr v7, v9

    xor-long/2addr v3, v7

    .line 283
    add-long/2addr v1, v5

    goto :goto_1

    .line 286
    :cond_2
    const-wide/32 v0, 0x7fffffff

    and-long/2addr v0, v3

    return-wide v0
.end method

.method private static randomInit(JJ)Lcom/mysql/jdbc/Util$RandStructcture;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 290
    new-instance v0, Lcom/mysql/jdbc/Util$RandStructcture;

    sget-object v1, Lcom/mysql/jdbc/Util;->enclosingInstance:Lcom/mysql/jdbc/Util;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Util$RandStructcture;-><init>(Lcom/mysql/jdbc/Util;)V

    .line 292
    const-wide/32 v1, 0x3fffffff

    iput-wide v1, v0, Lcom/mysql/jdbc/Util$RandStructcture;->maxValue:J

    .line 293
    iget-wide v1, v0, Lcom/mysql/jdbc/Util$RandStructcture;->maxValue:J

    long-to-double v1, v1

    iput-wide v1, v0, Lcom/mysql/jdbc/Util$RandStructcture;->maxValueDbl:D

    .line 294
    iget-wide v1, v0, Lcom/mysql/jdbc/Util$RandStructcture;->maxValue:J

    rem-long v1, p0, v1

    iput-wide v1, v0, Lcom/mysql/jdbc/Util$RandStructcture;->seed1:J

    .line 295
    iget-wide v1, v0, Lcom/mysql/jdbc/Util$RandStructcture;->maxValue:J

    rem-long v1, p2, v1

    iput-wide v1, v0, Lcom/mysql/jdbc/Util$RandStructcture;->seed2:J

    .line 297
    return-object v0
.end method

.method public static readObject(Ljava/sql/ResultSet;I)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 314
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-interface {p0, p1}, Ljava/sql/ResultSet;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 315
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 316
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    .line 318
    return-object v1
.end method

.method public static resultSetToMap(Ljava/util/Map;Ljava/sql/ResultSet;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 466
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 469
    :cond_0
    return-void
.end method

.method public static resultSetToMap(Ljava/util/Map;Ljava/sql/ResultSet;II)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 473
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 476
    :cond_0
    return-void
.end method

.method public static resultSetToMap(Ljava/util/Map;Ljava/sql/ResultSet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 480
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 483
    :cond_0
    return-void
.end method

.method private static rnd(Lcom/mysql/jdbc/Util$RandStructcture;)D
    .locals 4
    .parameter

    .prologue
    .line 322
    iget-wide v0, p0, Lcom/mysql/jdbc/Util$RandStructcture;->seed1:J

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/mysql/jdbc/Util$RandStructcture;->seed2:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/mysql/jdbc/Util$RandStructcture;->maxValue:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/Util$RandStructcture;->seed1:J

    .line 323
    iget-wide v0, p0, Lcom/mysql/jdbc/Util$RandStructcture;->seed1:J

    iget-wide v2, p0, Lcom/mysql/jdbc/Util$RandStructcture;->seed2:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x21

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/mysql/jdbc/Util$RandStructcture;->maxValue:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/Util$RandStructcture;->seed2:J

    .line 325
    iget-wide v0, p0, Lcom/mysql/jdbc/Util$RandStructcture;->seed1:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/mysql/jdbc/Util$RandStructcture;->maxValueDbl:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static scramble(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v9, 0x1

    const-wide/high16 v11, 0x403f

    const/4 v0, 0x0

    .line 335
    new-array v4, v2, [B

    .line 336
    const-string v1, ""

    .line 338
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 340
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 341
    invoke-static {p1}, Lcom/mysql/jdbc/Util;->hashPre41Password(Ljava/lang/String;)[J

    move-result-object v1

    .line 342
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/mysql/jdbc/Util;->newHash([B)[J

    move-result-object v3

    .line 344
    aget-wide v5, v1, v0

    aget-wide v7, v3, v0

    xor-long/2addr v5, v7

    aget-wide v7, v1, v9

    aget-wide v9, v3, v9

    xor-long/2addr v7, v9

    invoke-static {v5, v6, v7, v8}, Lcom/mysql/jdbc/Util;->randomInit(JJ)Lcom/mysql/jdbc/Util$RandStructcture;

    move-result-object v5

    .line 347
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    move v1, v0

    move v2, v0

    .line 350
    :goto_0
    add-int/lit8 v3, v2, 0x1

    if-ge v2, v6, :cond_0

    .line 351
    add-int/lit8 v2, v1, 0x1

    invoke-static {v5}, Lcom/mysql/jdbc/Util;->rnd(Lcom/mysql/jdbc/Util$RandStructcture;)D

    move-result-wide v7

    mul-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4050

    add-double/2addr v7, v9

    double-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v1

    move v1, v2

    move v2, v3

    goto :goto_0

    .line 355
    :cond_0
    invoke-static {v5}, Lcom/mysql/jdbc/Util;->rnd(Lcom/mysql/jdbc/Util$RandStructcture;)D

    move-result-wide v1

    mul-double/2addr v1, v11

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-byte v1, v1

    .line 357
    :goto_1
    array-length v2, v4

    if-ge v0, v2, :cond_1

    .line 358
    aget-byte v2, v4, v0

    xor-int/2addr v2, v1

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 361
    :cond_1
    invoke-static {v4}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v0

    .line 364
    :goto_2
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public static secondsSinceMillis(J)J
    .locals 4
    .parameter

    .prologue
    .line 675
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    const-string v1, "Util.1"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    if-eqz p0, :cond_1

    .line 381
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 385
    if-eqz v1, :cond_0

    .line 386
    const-string v2, "Util.2"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 392
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 394
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 396
    const-string v2, "Util.3"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :cond_1
    const-string v1, "Util.4"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static truncateAndConvertToInt(J)I
    .locals 2
    .parameter

    .prologue
    .line 685
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/high16 v0, -0x8000

    goto :goto_0

    :cond_1
    long-to-int v0, p0

    goto :goto_0
.end method

.method public static truncateAndConvertToInt([J)[I
    .locals 7
    .parameter

    .prologue
    .line 695
    array-length v0, p0

    new-array v2, v0, [I

    .line 697
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 698
    aget-wide v3, p0, v0

    const-wide/32 v5, 0x7fffffff

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    const v1, 0x7fffffff

    :goto_1
    aput v1, v2, v0

    .line 697
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 698
    :cond_0
    aget-wide v3, p0, v0

    const-wide/32 v5, -0x80000000

    cmp-long v1, v3, v5

    if-gez v1, :cond_1

    const/high16 v1, -0x8000

    goto :goto_1

    :cond_1
    aget-wide v3, p0, v0

    long-to-int v1, v3

    goto :goto_1

    .line 700
    :cond_2
    return-object v2
.end method
