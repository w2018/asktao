.class Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;
.super Ljava/lang/Object;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/DatabaseMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalAndReferencedColumns"
.end annotation


# instance fields
.field constraintName:Ljava/lang/String;

.field localColumnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field referencedCatalog:Ljava/lang/String;

.field referencedColumnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field referencedTable:Ljava/lang/String;

.field final synthetic this$0:Lcom/mysql/jdbc/DatabaseMetaData;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->localColumnsList:Ljava/util/List;

    .line 87
    iput-object p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedColumnsList:Ljava/util/List;

    .line 88
    iput-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->constraintName:Ljava/lang/String;

    .line 89
    iput-object p6, p0, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedTable:Ljava/lang/String;

    .line 90
    iput-object p5, p0, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedCatalog:Ljava/lang/String;

    .line 91
    return-void
.end method
