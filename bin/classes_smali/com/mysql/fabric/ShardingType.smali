.class public final enum Lcom/mysql/fabric/ShardingType;
.super Ljava/lang/Enum;
.source "ShardingType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mysql/fabric/ShardingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mysql/fabric/ShardingType;

.field public static final enum HASH:Lcom/mysql/fabric/ShardingType;

.field public static final enum LIST:Lcom/mysql/fabric/ShardingType;

.field public static final enum RANGE:Lcom/mysql/fabric/ShardingType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/mysql/fabric/ShardingType;

    const-string v1, "LIST"

    invoke-direct {v0, v1, v2}, Lcom/mysql/fabric/ShardingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/fabric/ShardingType;->LIST:Lcom/mysql/fabric/ShardingType;

    new-instance v0, Lcom/mysql/fabric/ShardingType;

    const-string v1, "RANGE"

    invoke-direct {v0, v1, v3}, Lcom/mysql/fabric/ShardingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/fabric/ShardingType;->RANGE:Lcom/mysql/fabric/ShardingType;

    new-instance v0, Lcom/mysql/fabric/ShardingType;

    const-string v1, "HASH"

    invoke-direct {v0, v1, v4}, Lcom/mysql/fabric/ShardingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/fabric/ShardingType;->HASH:Lcom/mysql/fabric/ShardingType;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mysql/fabric/ShardingType;

    sget-object v1, Lcom/mysql/fabric/ShardingType;->LIST:Lcom/mysql/fabric/ShardingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mysql/fabric/ShardingType;->RANGE:Lcom/mysql/fabric/ShardingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mysql/fabric/ShardingType;->HASH:Lcom/mysql/fabric/ShardingType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mysql/fabric/ShardingType;->$VALUES:[Lcom/mysql/fabric/ShardingType;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mysql/fabric/ShardingType;
    .locals 1
    .parameter

    .prologue
    .line 33
    const-class v0, Lcom/mysql/fabric/ShardingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/ShardingType;

    return-object v0
.end method

.method public static final values()[Lcom/mysql/fabric/ShardingType;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/mysql/fabric/ShardingType;->$VALUES:[Lcom/mysql/fabric/ShardingType;

    invoke-virtual {v0}, [Lcom/mysql/fabric/ShardingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mysql/fabric/ShardingType;

    return-object v0
.end method
