.class Lxyz/xdxn/asktao/Fragment2$100000001;
.super Ljava/lang/Object;
.source "Fragment2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/xdxn/asktao/Fragment2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# instance fields
.field private final this$0:Lxyz/xdxn/asktao/Fragment2;


# direct methods
.method constructor <init>(Lxyz/xdxn/asktao/Fragment2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment2$100000001;->this$0:Lxyz/xdxn/asktao/Fragment2;

    return-void
.end method

.method static access$0(Lxyz/xdxn/asktao/Fragment2$100000001;)Lxyz/xdxn/asktao/Fragment2;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000001;->this$0:Lxyz/xdxn/asktao/Fragment2;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000001;->this$0:Lxyz/xdxn/asktao/Fragment2;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment2;->access$L1000010(Lxyz/xdxn/asktao/Fragment2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000001;->this$0:Lxyz/xdxn/asktao/Fragment2;

    invoke-static {v0}, Lxyz/xdxn/asktao/Fragment2;->access$L1000000(Lxyz/xdxn/asktao/Fragment2;)Lxyz/xdxn/asktao/GlobalVariable;

    move-result-object v0

    invoke-virtual {v0}, Lxyz/xdxn/asktao/GlobalVariable;->closeMysql()V

    .line 95
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment2$100000001;->this$0:Lxyz/xdxn/asktao/Fragment2;

    invoke-virtual {v0}, Lxyz/xdxn/asktao/Fragment2;->Connect()V

    goto :goto_0
.end method
