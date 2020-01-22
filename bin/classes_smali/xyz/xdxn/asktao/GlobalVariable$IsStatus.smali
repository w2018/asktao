.class Lxyz/xdxn/asktao/GlobalVariable$IsStatus;
.super Ljava/lang/Object;
.source "GlobalVariable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/xdxn/asktao/GlobalVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "IsStatus"
.end annotation


# instance fields
.field private final this$0:Lxyz/xdxn/asktao/GlobalVariable;


# direct methods
.method public constructor <init>(Lxyz/xdxn/asktao/GlobalVariable;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxyz/xdxn/asktao/GlobalVariable$IsStatus;->this$0:Lxyz/xdxn/asktao/GlobalVariable;

    return-void
.end method

.method static access$0(Lxyz/xdxn/asktao/GlobalVariable$IsStatus;)Lxyz/xdxn/asktao/GlobalVariable;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable$IsStatus;->this$0:Lxyz/xdxn/asktao/GlobalVariable;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    const/16 v5, 0x1388

    .line 214
    :cond_0
    :goto_0
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable$IsStatus;->this$0:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-static {v0}, Lxyz/xdxn/asktao/GlobalVariable;->access$L1000002(Lxyz/xdxn/asktao/GlobalVariable;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 218
    :cond_1
    int-to-long v0, v5

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 219
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable$IsStatus;->this$0:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-static {v0}, Lxyz/xdxn/asktao/GlobalVariable;->access$L1000000(Lxyz/xdxn/asktao/GlobalVariable;)Lcom/mysql/jdbc/Connection;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/Connection;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable$IsStatus;->this$0:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-static {v0}, Lxyz/xdxn/asktao/GlobalVariable;->access$L1000010(Lxyz/xdxn/asktao/GlobalVariable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable$IsStatus;->this$0:Lxyz/xdxn/asktao/GlobalVariable;

    const/4 v1, 0x2

    const-string v2, "RECONNECT"

    iget-object v3, p0, Lxyz/xdxn/asktao/GlobalVariable$IsStatus;->this$0:Lxyz/xdxn/asktao/GlobalVariable;

    const v4, 0x7f05000f

    invoke-virtual {v3, v4}, Lxyz/xdxn/asktao/GlobalVariable;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lxyz/xdxn/asktao/GlobalVariable;->sendBroadMsg(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 223
    :cond_2
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable$IsStatus;->this$0:Lxyz/xdxn/asktao/GlobalVariable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lxyz/xdxn/asktao/GlobalVariable;->access$S1000002(Lxyz/xdxn/asktao/GlobalVariable;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
