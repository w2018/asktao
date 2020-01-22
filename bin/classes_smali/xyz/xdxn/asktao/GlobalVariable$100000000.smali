.class Lxyz/xdxn/asktao/GlobalVariable$100000000;
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
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lxyz/xdxn/asktao/GlobalVariable;

.field private final val$dbname:Ljava/lang/String;

.field private final val$host:Ljava/lang/String;

.field private final val$pass:Ljava/lang/String;

.field private final val$port:Ljava/lang/String;

.field private final val$user:Ljava/lang/String;


# direct methods
.method constructor <init>(Lxyz/xdxn/asktao/GlobalVariable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->this$0:Lxyz/xdxn/asktao/GlobalVariable;

    iput-object p2, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->val$host:Ljava/lang/String;

    iput-object p3, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->val$port:Ljava/lang/String;

    iput-object p4, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->val$dbname:Ljava/lang/String;

    iput-object p5, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->val$user:Ljava/lang/String;

    iput-object p6, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->val$pass:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lxyz/xdxn/asktao/GlobalVariable$100000000;)Lxyz/xdxn/asktao/GlobalVariable;
    .locals 1

    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->this$0:Lxyz/xdxn/asktao/GlobalVariable;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 135
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "jdbc:mysql://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->val$host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->val$port:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->val$dbname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    const-string v1, "com.mysql.jdbc.Driver"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 137
    iget-object v1, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->this$0:Lxyz/xdxn/asktao/GlobalVariable;

    iget-object v2, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->val$user:Ljava/lang/String;

    iget-object v3, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->val$pass:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/Connection;

    invoke-static {v1, v0}, Lxyz/xdxn/asktao/GlobalVariable;->access$S1000000(Lxyz/xdxn/asktao/GlobalVariable;Lcom/mysql/jdbc/Connection;)V

    .line 138
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->this$0:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-static {v0}, Lxyz/xdxn/asktao/GlobalVariable;->access$L1000005(Lxyz/xdxn/asktao/GlobalVariable;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "db_host"

    iget-object v2, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->val$host:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->this$0:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-static {v0}, Lxyz/xdxn/asktao/GlobalVariable;->access$L1000005(Lxyz/xdxn/asktao/GlobalVariable;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "db_port"

    iget-object v2, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->val$port:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 140
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->this$0:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-static {v0}, Lxyz/xdxn/asktao/GlobalVariable;->access$L1000005(Lxyz/xdxn/asktao/GlobalVariable;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "db_name"

    iget-object v2, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->val$dbname:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->this$0:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-static {v0}, Lxyz/xdxn/asktao/GlobalVariable;->access$L1000005(Lxyz/xdxn/asktao/GlobalVariable;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "db_user"

    iget-object v2, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->val$user:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->this$0:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-static {v0}, Lxyz/xdxn/asktao/GlobalVariable;->access$L1000005(Lxyz/xdxn/asktao/GlobalVariable;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "db_pass"

    iget-object v2, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->val$pass:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->this$0:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-static {v0}, Lxyz/xdxn/asktao/GlobalVariable;->access$L1000005(Lxyz/xdxn/asktao/GlobalVariable;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 144
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->this$0:Lxyz/xdxn/asktao/GlobalVariable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lxyz/xdxn/asktao/GlobalVariable;->access$S1000002(Lxyz/xdxn/asktao/GlobalVariable;Z)V

    .line 145
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->this$0:Lxyz/xdxn/asktao/GlobalVariable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lxyz/xdxn/asktao/GlobalVariable;->access$S1000010(Lxyz/xdxn/asktao/GlobalVariable;Z)V

    .line 146
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->this$0:Lxyz/xdxn/asktao/GlobalVariable;

    const/4 v1, 0x2

    const-string v2, "MSG"

    iget-object v3, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->this$0:Lxyz/xdxn/asktao/GlobalVariable;

    const v4, 0x7f050019

    invoke-virtual {v3, v4}, Lxyz/xdxn/asktao/GlobalVariable;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lxyz/xdxn/asktao/GlobalVariable;->sendBroadMsg(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 147
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lxyz/xdxn/asktao/GlobalVariable$IsStatus;

    iget-object v2, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->this$0:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-direct {v1, v2}, Lxyz/xdxn/asktao/GlobalVariable$IsStatus;-><init>(Lxyz/xdxn/asktao/GlobalVariable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 151
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->this$0:Lxyz/xdxn/asktao/GlobalVariable;

    invoke-static {v0, v6}, Lxyz/xdxn/asktao/GlobalVariable;->access$S1000002(Lxyz/xdxn/asktao/GlobalVariable;Z)V

    .line 154
    const/16 v0, 0x1388

    int-to-long v0, v0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    :goto_1
    iget-object v0, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->this$0:Lxyz/xdxn/asktao/GlobalVariable;

    const-string v1, "MSG"

    iget-object v2, p0, Lxyz/xdxn/asktao/GlobalVariable$100000000;->this$0:Lxyz/xdxn/asktao/GlobalVariable;

    const v3, 0x7f050017

    invoke-virtual {v2, v3}, Lxyz/xdxn/asktao/GlobalVariable;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v1, v2, v6}, Lxyz/xdxn/asktao/GlobalVariable;->sendBroadMsg(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 154
    :catch_1
    move-exception v0

    goto :goto_1
.end method
