.class public Lcom/mysql/jdbc/TimeUtil;
.super Ljava/lang/Object;
.source "TimeUtil.java"


# static fields
.field private static final DEFAULT_TIMEZONE:Ljava/util/TimeZone; = null

.field static final GMT_TIMEZONE:Ljava/util/TimeZone; = null

.field private static final TIME_ZONE_MAPPINGS_RESOURCE:Ljava/lang/String; = "/com/mysql/jdbc/TimeZoneMapping.properties"

.field protected static final systemNanoTimeMethod:Ljava/lang/reflect/Method;

.field private static timeZoneMappings:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 42
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/TimeUtil;->GMT_TIMEZONE:Ljava/util/TimeZone;

    .line 45
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/TimeUtil;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    .line 50
    sput-object v1, Lcom/mysql/jdbc/TimeUtil;->timeZoneMappings:Ljava/util/Properties;

    .line 58
    :try_start_0
    const-class v2, Ljava/lang/System;

    const-string v3, "nanoTime"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 65
    :goto_0
    sput-object v0, Lcom/mysql/jdbc/TimeUtil;->systemNanoTimeMethod:Ljava/lang/reflect/Method;

    .line 66
    return-void

    .line 59
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 63
    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 62
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Time;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Time;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0xf

    .line 108
    if-eqz p0, :cond_0

    .line 109
    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getUseTimezone()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getNoTimezoneConversionForTimeType()Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    invoke-static {p4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 112
    invoke-virtual {v0, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 114
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 115
    invoke-static {p5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 116
    invoke-virtual {v1, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 118
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 119
    sub-int/2addr v0, v2

    .line 120
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 122
    if-eqz p6, :cond_1

    .line 123
    int-to-long v3, v0

    add-long v0, v1, v3

    .line 128
    :goto_0
    new-instance p3, Ljava/sql/Time;

    invoke-direct {p3, v0, v1}, Ljava/sql/Time;-><init>(J)V

    .line 141
    :cond_0
    :goto_1
    return-object p3

    .line 125
    :cond_1
    int-to-long v3, v0

    sub-long v0, v1, v3

    goto :goto_0

    .line 131
    :cond_2
    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    if-eqz p2, :cond_0

    .line 134
    new-instance v0, Ljava/sql/Time;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/TimeUtil;->jdbcCompliantZoneShift(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Date;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V

    move-object p3, v0

    .line 136
    goto :goto_1
.end method

.method public static changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0xf

    .line 160
    if-eqz p0, :cond_0

    .line 161
    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getUseTimezone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    invoke-static {p4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 164
    invoke-virtual {v0, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 166
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 167
    invoke-static {p5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 168
    invoke-virtual {v1, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 170
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 171
    sub-int/2addr v0, v2

    .line 172
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 174
    if-eqz p6, :cond_1

    .line 175
    int-to-long v3, v0

    add-long v0, v1, v3

    .line 180
    :goto_0
    new-instance p3, Ljava/sql/Timestamp;

    invoke-direct {p3, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    .line 195
    :cond_0
    :goto_1
    return-object p3

    .line 177
    :cond_1
    int-to-long v3, v0

    sub-long v0, v1, v3

    goto :goto_0

    .line 183
    :cond_2
    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    if-eqz p2, :cond_0

    .line 186
    new-instance v0, Ljava/sql/Timestamp;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/TimeUtil;->jdbcCompliantZoneShift(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Date;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 188
    invoke-virtual {p3}, Ljava/sql/Timestamp;->getNanos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/sql/Timestamp;->setNanos(I)V

    move-object p3, v0

    .line 190
    goto :goto_1
.end method

.method static final fastDateCreate(IIILjava/util/Calendar;)Ljava/sql/Date;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    if-nez p3, :cond_0

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 266
    :goto_0
    monitor-enter v0

    .line 267
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 269
    :try_start_1
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 272
    add-int/lit8 v2, p1, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p0

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 273
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 275
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 277
    new-instance v3, Ljava/sql/Date;

    invoke-direct {v3, v1, v2}, Ljava/sql/Date;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :try_start_2
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 277
    monitor-exit v0

    return-object v3

    :cond_0
    move-object v0, p3

    .line 264
    goto :goto_0

    .line 279
    :catchall_0
    move-exception v1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    throw v1

    .line 281
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method static final fastDateCreate(ZLjava/util/Calendar;Ljava/util/Calendar;III)Ljava/sql/Date;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    if-eqz p0, :cond_1

    .line 236
    if-nez p1, :cond_0

    .line 237
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    :cond_0
    move-object v0, p1

    .line 243
    :goto_0
    monitor-enter v0

    .line 244
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 246
    :try_start_1
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 247
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 250
    add-int/lit8 v2, p4, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p3

    move v3, p5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 252
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 254
    new-instance v3, Ljava/sql/Date;

    invoke-direct {v3, v1, v2}, Ljava/sql/Date;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :try_start_2
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 254
    monitor-exit v0

    return-object v3

    .line 256
    :catchall_0
    move-exception v1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    throw v1

    .line 258
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method static final fastTimeCreate(IIILjava/util/Calendar;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/Time;
    .locals 8
    .parameter
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
    const/16 v1, 0x3b

    .line 321
    if-ltz p0, :cond_0

    const/16 v0, 0x17

    if-le p0, v0, :cond_1

    .line 322
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal hour value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' for java.sql.Time type in value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/TimeUtil;->timeFormattedString(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 327
    :cond_1
    if-ltz p1, :cond_2

    if-le p1, v1, :cond_3

    .line 328
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal minute value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' for java.sql.Time type in value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/TimeUtil;->timeFormattedString(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 333
    :cond_3
    if-ltz p2, :cond_4

    if-le p2, v1, :cond_5

    .line 334
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal minute value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' for java.sql.Time type in value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/TimeUtil;->timeFormattedString(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 339
    :cond_5
    if-nez p3, :cond_6

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 341
    :goto_0
    monitor-enter v0

    .line 342
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 344
    :try_start_1
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 347
    const/16 v1, 0x7b2

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, p0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 349
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 351
    new-instance v3, Ljava/sql/Time;

    invoke-direct {v3, v1, v2}, Ljava/sql/Time;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    :try_start_2
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 351
    monitor-exit v0

    return-object v3

    :cond_6
    move-object v0, p3

    .line 339
    goto :goto_0

    .line 353
    :catchall_0
    move-exception v1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    throw v1

    .line 355
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method static final fastTimeCreate(Ljava/util/Calendar;IIILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/Time;
    .locals 8
    .parameter
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
    const/16 v1, 0x3b

    .line 285
    if-ltz p1, :cond_0

    const/16 v0, 0x18

    if-le p1, v0, :cond_1

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal hour value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' for java.sql.Time type in value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/TimeUtil;->timeFormattedString(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 291
    :cond_1
    if-ltz p2, :cond_2

    if-le p2, v1, :cond_3

    .line 292
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal minute value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' for java.sql.Time type in value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/TimeUtil;->timeFormattedString(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 297
    :cond_3
    if-ltz p3, :cond_4

    if-le p3, v1, :cond_5

    .line 298
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal minute value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' for java.sql.Time type in value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/TimeUtil;->timeFormattedString(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 303
    :cond_5
    monitor-enter p0

    .line 304
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 306
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    .line 309
    const/16 v1, 0x7b2

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 311
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 313
    new-instance v2, Ljava/sql/Time;

    invoke-direct {v2, v0, v1}, Ljava/sql/Time;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    :try_start_2
    invoke-virtual {p0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 313
    monitor-exit p0

    return-object v2

    .line 315
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    throw v0

    .line 317
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method static final fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 403
    if-nez p0, :cond_0

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 404
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 407
    add-int/lit8 v2, p2, -0x1

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 409
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 411
    new-instance v2, Ljava/sql/Timestamp;

    invoke-direct {v2, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    .line 412
    invoke-virtual {v2, p7}, Ljava/sql/Timestamp;->setNanos(I)V

    .line 414
    return-object v2

    .line 403
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    goto :goto_0
.end method

.method static final fastTimestampCreate(ZLjava/util/Calendar;Ljava/util/Calendar;IIIIIII)Ljava/sql/Timestamp;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 361
    monitor-enter p2

    .line 362
    :try_start_0
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 364
    :try_start_1
    invoke-virtual {p2}, Ljava/util/Calendar;->clear()V

    .line 367
    add-int/lit8 v3, p4, -0x1

    move-object v1, p2

    move v2, p3

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 369
    const/4 v1, 0x0

    .line 371
    if-eqz p0, :cond_1

    .line 372
    const/16 v1, 0xf

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 374
    if-nez p1, :cond_0

    .line 375
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 377
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 379
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 381
    const/16 v2, 0xf

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 382
    sub-int/2addr v1, v2

    .line 385
    :cond_1
    if-eqz p9, :cond_2

    .line 386
    const/16 v2, 0xe

    const v3, 0xf4240

    div-int v3, p9, v3

    invoke-virtual {p2, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 389
    :cond_2
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 391
    new-instance v4, Ljava/sql/Timestamp;

    int-to-long v5, v1

    add-long v1, v2, v5

    invoke-direct {v4, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 393
    move/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/sql/Timestamp;->setNanos(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    :try_start_2
    invoke-virtual {p2, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 395
    monitor-exit p2

    return-object v4

    .line 397
    :catchall_0
    move-exception v1

    invoke-virtual {p2, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    throw v1

    .line 399
    :catchall_1
    move-exception v1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public static formatNanos(IZZ)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 487
    const v0, 0x3b9ac9ff

    if-le p0, v0, :cond_6

    .line 488
    const v0, 0x5f5e100

    rem-int v0, p0, v0

    .line 491
    :goto_0
    if-eqz p2, :cond_5

    .line 492
    div-int/lit16 v0, v0, 0x3e8

    move v1, v0

    .line 495
    :goto_1
    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    .line 496
    :cond_0
    const-string v0, "0"

    .line 514
    :goto_2
    return-object v0

    .line 499
    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, 0x6

    .line 501
    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 502
    if-eqz p2, :cond_3

    const-string v1, "000000"

    .line 504
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 506
    add-int/lit8 v0, v0, -0x1

    .line 508
    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_4

    .line 509
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 499
    :cond_2
    const/16 v0, 0x9

    goto :goto_3

    .line 502
    :cond_3
    const-string v1, "000000000"

    goto :goto_4

    .line 512
    :cond_4
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move v1, v0

    goto :goto_1

    :cond_6
    move v0, p0

    goto :goto_0
.end method

.method public static getCanonicalTimezone(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 429
    if-nez p0, :cond_1

    .line 430
    const/4 v0, 0x0

    .line 450
    :cond_0
    :goto_0
    return-object v0

    .line 433
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 436
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_3

    .line 437
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_3

    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GMT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 442
    :cond_3
    const-class v2, Lcom/mysql/jdbc/TimeUtil;

    monitor-enter v2

    .line 443
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/TimeUtil;->timeZoneMappings:Ljava/util/Properties;

    if-nez v0, :cond_4

    .line 444
    invoke-static {p1}, Lcom/mysql/jdbc/TimeUtil;->loadTimeZoneMappings(Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 446
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    sget-object v0, Lcom/mysql/jdbc/TimeUtil;->timeZoneMappings:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 453
    const-string v0, "TimeUtil.UnrecognizedTimezoneId"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "01S00"

    invoke-static {v0, v1, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 446
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getCurrentTimeNanosOrMillis()J
    .locals 3

    .prologue
    .line 77
    sget-object v0, Lcom/mysql/jdbc/TimeUtil;->systemNanoTimeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 79
    :try_start_0
    sget-object v1, Lcom/mysql/jdbc/TimeUtil;->systemNanoTimeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 89
    :goto_0
    return-wide v0

    .line 84
    :catch_0
    move-exception v0

    .line 89
    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    .line 82
    :catch_1
    move-exception v0

    goto :goto_1

    .line 80
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public static final getDefaultTimeZone(Z)Ljava/util/TimeZone;
    .locals 1
    .parameter

    .prologue
    .line 73
    if-eqz p0, :cond_0

    sget-object v0, Lcom/mysql/jdbc/TimeUtil;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/util/TimeZone;

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static jdbcCompliantZoneShift(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Date;)J
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    if-nez p0, :cond_0

    .line 200
    new-instance p0, Ljava/util/GregorianCalendar;

    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 203
    :cond_0
    monitor-enter p0

    .line 206
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 207
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 210
    :try_start_1
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 212
    const/4 v0, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 213
    const/4 v0, 0x2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 214
    const/4 v0, 0x5

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 216
    const/16 v0, 0xb

    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 217
    const/16 v0, 0xc

    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 218
    const/16 v0, 0xd

    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 219
    const/16 v0, 0xe

    const/16 v3, 0xe

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 221
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    .line 224
    :try_start_2
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 225
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 221
    monitor-exit p0

    return-wide v3

    .line 224
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 225
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 224
    throw v0

    .line 227
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private static loadTimeZoneMappings(Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 524
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/TimeUtil;->timeZoneMappings:Ljava/util/Properties;

    .line 526
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/TimeUtil;->timeZoneMappings:Ljava/util/Properties;

    const-class v1, Lcom/mysql/jdbc/TimeUtil;

    const-string v2, "/com/mysql/jdbc/TimeZoneMapping.properties"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 533
    sget-object v4, Lcom/mysql/jdbc/TimeUtil;->timeZoneMappings:Ljava/util/Properties;

    invoke-virtual {v4, v3}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 534
    sget-object v4, Lcom/mysql/jdbc/TimeUtil;->timeZoneMappings:Ljava/util/Properties;

    invoke-virtual {v4, v3, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    :catch_0
    move-exception v0

    .line 528
    const-string v0, "TimeUtil.LoadTimeZoneMappingError"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "01S00"

    invoke-static {v0, v1, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 537
    :cond_1
    return-void
.end method

.method public static nanoTimeAvailable()Z
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/mysql/jdbc/TimeUtil;->systemNanoTimeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static timeFormattedString(III)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xa

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 461
    if-ge p0, v2, :cond_0

    .line 462
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    if-ge p1, v2, :cond_1

    .line 469
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 473
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    if-ge p2, v2, :cond_2

    .line 476
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static truncateFractionalSeconds(Ljava/sql/Timestamp;)Ljava/sql/Timestamp;
    .locals 3
    .parameter

    .prologue
    .line 540
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 541
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/sql/Timestamp;->setNanos(I)V

    .line 542
    return-object v0
.end method
