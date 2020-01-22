.class Lxyz/xdxn/asktao/Fragment3$100000011;
.super Ljava/lang/Object;
.source "Fragment3.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/xdxn/asktao/Fragment3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000011"
.end annotation


# instance fields
.field private final this$0:Lxyz/xdxn/asktao/Fragment3;

.field private final val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lxyz/xdxn/asktao/Fragment3;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxyz/xdxn/asktao/Fragment3$100000011;->this$0:Lxyz/xdxn/asktao/Fragment3;

    iput-object p2, p0, Lxyz/xdxn/asktao/Fragment3$100000011;->val$msg:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lxyz/xdxn/asktao/Fragment3$100000011;)Lxyz/xdxn/asktao/Fragment3;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000011;->this$0:Lxyz/xdxn/asktao/Fragment3;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lxyz/xdxn/asktao/Fragment3$100000011;->this$0:Lxyz/xdxn/asktao/Fragment3;

    invoke-virtual {v0}, Lxyz/xdxn/asktao/Fragment3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lxyz/xdxn/asktao/Fragment3$100000011;->val$msg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
