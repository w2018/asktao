.class public final enum Lcom/mysql/fabric/ServerMode;
.super Ljava/lang/Enum;
.source "ServerMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mysql/fabric/ServerMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mysql/fabric/ServerMode;

.field public static final enum OFFLINE:Lcom/mysql/fabric/ServerMode;

.field public static final enum READ_ONLY:Lcom/mysql/fabric/ServerMode;

.field public static final enum READ_WRITE:Lcom/mysql/fabric/ServerMode;

.field public static final enum WRITE_ONLY:Lcom/mysql/fabric/ServerMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/mysql/fabric/ServerMode;

    const-string v1, "OFFLINE"

    invoke-direct {v0, v1, v2}, Lcom/mysql/fabric/ServerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/fabric/ServerMode;->OFFLINE:Lcom/mysql/fabric/ServerMode;

    new-instance v0, Lcom/mysql/fabric/ServerMode;

    const-string v1, "READ_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/mysql/fabric/ServerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/fabric/ServerMode;->READ_ONLY:Lcom/mysql/fabric/ServerMode;

    new-instance v0, Lcom/mysql/fabric/ServerMode;

    const-string v1, "WRITE_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/mysql/fabric/ServerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/fabric/ServerMode;->WRITE_ONLY:Lcom/mysql/fabric/ServerMode;

    new-instance v0, Lcom/mysql/fabric/ServerMode;

    const-string v1, "READ_WRITE"

    invoke-direct {v0, v1, v5}, Lcom/mysql/fabric/ServerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/fabric/ServerMode;->READ_WRITE:Lcom/mysql/fabric/ServerMode;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mysql/fabric/ServerMode;

    sget-object v1, Lcom/mysql/fabric/ServerMode;->OFFLINE:Lcom/mysql/fabric/ServerMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mysql/fabric/ServerMode;->READ_ONLY:Lcom/mysql/fabric/ServerMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mysql/fabric/ServerMode;->WRITE_ONLY:Lcom/mysql/fabric/ServerMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mysql/fabric/ServerMode;->READ_WRITE:Lcom/mysql/fabric/ServerMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mysql/fabric/ServerMode;->$VALUES:[Lcom/mysql/fabric/ServerMode;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getFromConstant(Ljava/lang/Integer;)Lcom/mysql/fabric/ServerMode;
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-static {}, Lcom/mysql/fabric/ServerMode;->values()[Lcom/mysql/fabric/ServerMode;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mysql/fabric/ServerMode;
    .locals 1
    .parameter

    .prologue
    .line 30
    const-class v0, Lcom/mysql/fabric/ServerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/ServerMode;

    return-object v0
.end method

.method public static final values()[Lcom/mysql/fabric/ServerMode;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/mysql/fabric/ServerMode;->$VALUES:[Lcom/mysql/fabric/ServerMode;

    invoke-virtual {v0}, [Lcom/mysql/fabric/ServerMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mysql/fabric/ServerMode;

    return-object v0
.end method
