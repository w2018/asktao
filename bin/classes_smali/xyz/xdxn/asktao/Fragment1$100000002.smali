.class Lxyz/xdxn/asktao/Fragment1$100000002;
.super Ljava/lang/Object;
.source "Fragment1.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/xdxn/asktao/Fragment1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
.end annotation


# instance fields
.field private final this$0:Lxyz/xdxn/asktao/Fragment1;


# direct methods
.method constructor <init>(Lxyz/xdxn/asktao/Fragment1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment1$100000002;->this$0:Lxyz/xdxn/asktao/Fragment1;

    return-void
.end method

.method static access$0(Lxyz/xdxn/asktao/Fragment1$100000002;)Lxyz/xdxn/asktao/Fragment1;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment1$100000002;->this$0:Lxyz/xdxn/asktao/Fragment1;

    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method
