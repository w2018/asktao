.class public final enum Lcom/mysql/fabric/ServerRole;
.super Ljava/lang/Enum;
.source "ServerRole.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mysql/fabric/ServerRole;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mysql/fabric/ServerRole;

.field public static final enum CONFIGURING:Lcom/mysql/fabric/ServerRole;

.field public static final enum FAULTY:Lcom/mysql/fabric/ServerRole;

.field public static final enum PRIMARY:Lcom/mysql/fabric/ServerRole;

.field public static final enum SECONDARY:Lcom/mysql/fabric/ServerRole;

.field public static final enum SPARE:Lcom/mysql/fabric/ServerRole;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/mysql/fabric/ServerRole;

    const-string v1, "FAULTY"

    invoke-direct {v0, v1, v2}, Lcom/mysql/fabric/ServerRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/fabric/ServerRole;->FAULTY:Lcom/mysql/fabric/ServerRole;

    new-instance v0, Lcom/mysql/fabric/ServerRole;

    const-string v1, "SPARE"

    invoke-direct {v0, v1, v3}, Lcom/mysql/fabric/ServerRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/fabric/ServerRole;->SPARE:Lcom/mysql/fabric/ServerRole;

    new-instance v0, Lcom/mysql/fabric/ServerRole;

    const-string v1, "SECONDARY"

    invoke-direct {v0, v1, v4}, Lcom/mysql/fabric/ServerRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/fabric/ServerRole;->SECONDARY:Lcom/mysql/fabric/ServerRole;

    new-instance v0, Lcom/mysql/fabric/ServerRole;

    const-string v1, "PRIMARY"

    invoke-direct {v0, v1, v5}, Lcom/mysql/fabric/ServerRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/fabric/ServerRole;->PRIMARY:Lcom/mysql/fabric/ServerRole;

    new-instance v0, Lcom/mysql/fabric/ServerRole;

    const-string v1, "CONFIGURING"

    invoke-direct {v0, v1, v6}, Lcom/mysql/fabric/ServerRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/fabric/ServerRole;->CONFIGURING:Lcom/mysql/fabric/ServerRole;

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mysql/fabric/ServerRole;

    sget-object v1, Lcom/mysql/fabric/ServerRole;->FAULTY:Lcom/mysql/fabric/ServerRole;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mysql/fabric/ServerRole;->SPARE:Lcom/mysql/fabric/ServerRole;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mysql/fabric/ServerRole;->SECONDARY:Lcom/mysql/fabric/ServerRole;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mysql/fabric/ServerRole;->PRIMARY:Lcom/mysql/fabric/ServerRole;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mysql/fabric/ServerRole;->CONFIGURING:Lcom/mysql/fabric/ServerRole;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mysql/fabric/ServerRole;->$VALUES:[Lcom/mysql/fabric/ServerRole;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getFromConstant(Ljava/lang/Integer;)Lcom/mysql/fabric/ServerRole;
    .locals 2
    .parameter

    .prologue
    .line 33
    invoke-static {}, Lcom/mysql/fabric/ServerRole;->values()[Lcom/mysql/fabric/ServerRole;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mysql/fabric/ServerRole;
    .locals 1
    .parameter

    .prologue
    .line 29
    const-class v0, Lcom/mysql/fabric/ServerRole;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/ServerRole;

    return-object v0
.end method

.method public static final values()[Lcom/mysql/fabric/ServerRole;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/mysql/fabric/ServerRole;->$VALUES:[Lcom/mysql/fabric/ServerRole;

    invoke-virtual {v0}, [Lcom/mysql/fabric/ServerRole;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mysql/fabric/ServerRole;

    return-object v0
.end method
