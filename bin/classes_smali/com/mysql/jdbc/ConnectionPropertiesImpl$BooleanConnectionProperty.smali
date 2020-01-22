.class Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;
.super Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
.source "ConnectionPropertiesImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ConnectionPropertiesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BooleanConnectionProperty"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x23405d0d56cc7becL


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    return-void
.end method


# virtual methods
.method getAllowableValues()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "true"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "false"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "yes"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "no"

    aput-object v2, v0, v1

    return-object v0
.end method

.method getValueAsBoolean()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->valueAsObject:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method hasValueConstraints()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method initializeFrom(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 90
    if-eqz p1, :cond_2

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->validateStringValues(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 93
    const-string v0, "TRUE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "YES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->valueAsObject:Ljava/lang/Object;

    .line 94
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->wasExplicitlySet:Z

    .line 98
    :goto_1
    iget v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->updateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->updateCount:I

    .line 99
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->defaultValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->valueAsObject:Ljava/lang/Object;

    goto :goto_1
.end method

.method isRangeBased()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method setValue(Z)V
    .locals 1
    .parameter

    .prologue
    .line 110
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->valueAsObject:Ljava/lang/Object;

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->wasExplicitlySet:Z

    .line 112
    iget v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->updateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->updateCount:I

    .line 113
    return-void
.end method
