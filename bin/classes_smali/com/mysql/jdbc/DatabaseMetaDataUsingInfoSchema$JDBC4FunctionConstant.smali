.class public final enum Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;
.super Ljava/lang/Enum;
.source "DatabaseMetaDataUsingInfoSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "JDBC4FunctionConstant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

.field public static final enum FUNCTION_COLUMN_IN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

.field public static final enum FUNCTION_COLUMN_INOUT:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

.field public static final enum FUNCTION_COLUMN_OUT:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

.field public static final enum FUNCTION_COLUMN_RESULT:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

.field public static final enum FUNCTION_COLUMN_RETURN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

.field public static final enum FUNCTION_COLUMN_UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

.field public static final enum FUNCTION_NO_NULLS:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

.field public static final enum FUNCTION_NULLABLE:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

.field public static final enum FUNCTION_NULLABLE_UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    const-string v1, "FUNCTION_COLUMN_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    const-string v1, "FUNCTION_COLUMN_IN"

    invoke-direct {v0, v1, v4}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_IN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    const-string v1, "FUNCTION_COLUMN_INOUT"

    invoke-direct {v0, v1, v5}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_INOUT:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    const-string v1, "FUNCTION_COLUMN_OUT"

    invoke-direct {v0, v1, v6}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_OUT:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    const-string v1, "FUNCTION_COLUMN_RETURN"

    invoke-direct {v0, v1, v7}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_RETURN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    const-string v1, "FUNCTION_COLUMN_RESULT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_RESULT:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    .line 40
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    const-string v1, "FUNCTION_NO_NULLS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_NO_NULLS:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    const-string v1, "FUNCTION_NULLABLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_NULLABLE:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    const-string v1, "FUNCTION_NULLABLE_UNKNOWN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_NULLABLE_UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    .line 36
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_IN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_INOUT:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_OUT:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_RETURN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_RESULT:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_NO_NULLS:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_NULLABLE:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_NULLABLE_UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->$VALUES:[Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;
    .locals 1
    .parameter

    .prologue
    .line 36
    const-class v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    return-object v0
.end method

.method public static final values()[Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->$VALUES:[Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    invoke-virtual {v0}, [Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    return-object v0
.end method
