.class public final enum Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;
.super Ljava/lang/Enum;
.source "CachingSha2PasswordPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthStage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

.field public static final enum FAST_AUTH_COMPLETE:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

.field public static final enum FAST_AUTH_READ_RESULT:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

.field public static final enum FAST_AUTH_SEND_SCRAMBLE:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

.field public static final enum FULL_AUTH:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    const-string v1, "FAST_AUTH_SEND_SCRAMBLE"

    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->FAST_AUTH_SEND_SCRAMBLE:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    new-instance v0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    const-string v1, "FAST_AUTH_READ_RESULT"

    invoke-direct {v0, v1, v3}, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->FAST_AUTH_READ_RESULT:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    new-instance v0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    const-string v1, "FAST_AUTH_COMPLETE"

    invoke-direct {v0, v1, v4}, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->FAST_AUTH_COMPLETE:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    new-instance v0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    const-string v1, "FULL_AUTH"

    invoke-direct {v0, v1, v5}, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->FULL_AUTH:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    sget-object v1, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->FAST_AUTH_SEND_SCRAMBLE:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->FAST_AUTH_READ_RESULT:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->FAST_AUTH_COMPLETE:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->FULL_AUTH:Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->$VALUES:[Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;
    .locals 1
    .parameter

    .prologue
    .line 44
    const-class v0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    return-object v0
.end method

.method public static final values()[Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->$VALUES:[Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    invoke-virtual {v0}, [Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin$AuthStage;

    return-object v0
.end method
