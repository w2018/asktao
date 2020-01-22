.class public final enum Lcom/mysql/jdbc/StringUtils$SearchMode;
.super Ljava/lang/Enum;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/StringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mysql/jdbc/StringUtils$SearchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mysql/jdbc/StringUtils$SearchMode;

.field public static final enum ALLOW_BACKSLASH_ESCAPE:Lcom/mysql/jdbc/StringUtils$SearchMode;

.field public static final enum SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

.field public static final enum SKIP_BLOCK_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

.field public static final enum SKIP_LINE_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

.field public static final enum SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/mysql/jdbc/StringUtils$SearchMode;

    const-string v1, "ALLOW_BACKSLASH_ESCAPE"

    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/StringUtils$SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->ALLOW_BACKSLASH_ESCAPE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    new-instance v0, Lcom/mysql/jdbc/StringUtils$SearchMode;

    const-string v1, "SKIP_BETWEEN_MARKERS"

    invoke-direct {v0, v1, v3}, Lcom/mysql/jdbc/StringUtils$SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    new-instance v0, Lcom/mysql/jdbc/StringUtils$SearchMode;

    const-string v1, "SKIP_BLOCK_COMMENTS"

    invoke-direct {v0, v1, v4}, Lcom/mysql/jdbc/StringUtils$SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BLOCK_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    new-instance v0, Lcom/mysql/jdbc/StringUtils$SearchMode;

    const-string v1, "SKIP_LINE_COMMENTS"

    invoke-direct {v0, v1, v5}, Lcom/mysql/jdbc/StringUtils$SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_LINE_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    new-instance v0, Lcom/mysql/jdbc/StringUtils$SearchMode;

    const-string v1, "SKIP_WHITE_SPACE"

    invoke-direct {v0, v1, v6}, Lcom/mysql/jdbc/StringUtils$SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->ALLOW_BACKSLASH_ESCAPE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BLOCK_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_LINE_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->$VALUES:[Lcom/mysql/jdbc/StringUtils$SearchMode;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mysql/jdbc/StringUtils$SearchMode;
    .locals 1
    .parameter

    .prologue
    .line 52
    const-class v0, Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/StringUtils$SearchMode;

    return-object v0
.end method

.method public static final values()[Lcom/mysql/jdbc/StringUtils$SearchMode;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->$VALUES:[Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-virtual {v0}, [Lcom/mysql/jdbc/StringUtils$SearchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mysql/jdbc/StringUtils$SearchMode;

    return-object v0
.end method
