.class Lcom/mysql/jdbc/PreparedStatement$EndPoint;
.super Ljava/lang/Object;
.source "PreparedStatement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/PreparedStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EndPoint"
.end annotation


# instance fields
.field begin:I

.field end:I

.field final synthetic this$0:Lcom/mysql/jdbc/PreparedStatement;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/PreparedStatement;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$EndPoint;->this$0:Lcom/mysql/jdbc/PreparedStatement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p2, p0, Lcom/mysql/jdbc/PreparedStatement$EndPoint;->begin:I

    .line 140
    iput p3, p0, Lcom/mysql/jdbc/PreparedStatement$EndPoint;->end:I

    .line 141
    return-void
.end method
