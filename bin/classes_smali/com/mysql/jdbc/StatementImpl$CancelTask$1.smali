.class Lcom/mysql/jdbc/StatementImpl$CancelTask$1;
.super Ljava/lang/Thread;
.source "StatementImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/StatementImpl$CancelTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/StatementImpl$CancelTask;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v0, v0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->this$0:Lcom/mysql/jdbc/StatementImpl;

    iget-object v0, v0, Lcom/mysql/jdbc/StatementImpl;->physicalConnection:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/MySQLConnection;

    .line 108
    if-eqz v0, :cond_a

    .line 109
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getQueryTimeoutKillsConnection()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v1, v1, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z

    .line 111
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v1, v1, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/mysql/jdbc/StatementImpl;->wasCancelledByTimeout:Z

    .line 112
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    const-string v6, "Statement.ConnectionKilledDueToTimeout"

    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/mysql/jdbc/MySQLConnection;->realClose(ZZZLjava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_6

    move-object v1, v2

    move-object v3, v2

    .line 142
    :goto_0
    if-eqz v1, :cond_0

    .line 144
    :try_start_1
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_9

    .line 150
    :cond_0
    if-eqz v3, :cond_1

    .line 152
    :try_start_2
    invoke-interface {v3}, Lcom/mysql/jdbc/Connection;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_a

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iput-object v2, v0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    .line 159
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iput-object v2, v0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnProps:Ljava/util/Properties;

    .line 160
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    :goto_1
    iput-object v2, v0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnURL:Ljava/lang/String;

    .line 162
    return-void

    .line 115
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v1, v1, Lcom/mysql/jdbc/StatementImpl$CancelTask;->this$0:Lcom/mysql/jdbc/StatementImpl;

    iget-object v4, v1, Lcom/mysql/jdbc/StatementImpl;->cancelTimeoutMutex:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_6

    .line 116
    :try_start_4
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v1, v1, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnURL:Ljava/lang/String;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 118
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->duplicate()Lcom/mysql/jdbc/Connection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v3

    .line 119
    :try_start_5
    invoke-interface {v3}, Lcom/mysql/jdbc/Connection;->createStatement()Ljava/sql/Statement;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-result-object v1

    .line 120
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KILL QUERY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 130
    :goto_2
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v0, v0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z

    .line 131
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v0, v0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/mysql/jdbc/StatementImpl;->wasCancelledByTimeout:Z

    .line 132
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_b

    .line 135
    :catch_0
    move-exception v0

    .line 136
    :goto_4
    :try_start_8
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iput-object v0, v4, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 142
    if-eqz v1, :cond_3

    .line 144
    :try_start_9
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_4

    .line 150
    :cond_3
    if-eqz v3, :cond_4

    .line 152
    :try_start_a
    invoke-interface {v3}, Lcom/mysql/jdbc/Connection;->close()V
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_5

    .line 158
    :cond_4
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iput-object v2, v0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    .line 159
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iput-object v2, v0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnProps:Ljava/util/Properties;

    .line 160
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    goto :goto_1

    .line 123
    :cond_5
    :try_start_b
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v0, v0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnURL:Ljava/lang/String;

    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v1, v1, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnProps:Ljava/util/Properties;

    invoke-static {v0, v1}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/Connection;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_1

    .line 124
    :try_start_c
    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->createStatement()Ljava/sql/Statement;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_d

    move-result-object v1

    .line 125
    :try_start_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KILL QUERY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-wide v5, v5, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnId:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_e

    move-object v3, v0

    .line 128
    goto :goto_2

    .line 126
    :catch_1
    move-exception v0

    move-object v0, v2

    move-object v1, v2

    :goto_5
    move-object v3, v1

    move-object v1, v0

    goto :goto_2

    .line 142
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_6
    if-eqz v1, :cond_6

    .line 144
    :try_start_e
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_e
    .catch Ljava/sql/SQLException; {:try_start_e .. :try_end_e} :catch_2

    .line 150
    :cond_6
    if-eqz v3, :cond_7

    .line 152
    :try_start_f
    invoke-interface {v3}, Lcom/mysql/jdbc/Connection;->close()V
    :try_end_f
    .catch Ljava/sql/SQLException; {:try_start_f .. :try_end_f} :catch_3

    .line 158
    :cond_7
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iput-object v2, v1, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    .line 159
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iput-object v2, v1, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnProps:Ljava/util/Properties;

    .line 160
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iput-object v2, v1, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnURL:Ljava/lang/String;

    .line 142
    throw v0

    .line 145
    :catch_2
    move-exception v0

    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :catch_3
    move-exception v0

    .line 154
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :catch_4
    move-exception v0

    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :catch_5
    move-exception v0

    .line 154
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :catch_6
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 142
    :goto_7
    if-eqz v1, :cond_8

    .line 144
    :try_start_10
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_10
    .catch Ljava/sql/SQLException; {:try_start_10 .. :try_end_10} :catch_7

    .line 150
    :cond_8
    if-eqz v3, :cond_9

    .line 152
    :try_start_11
    invoke-interface {v3}, Lcom/mysql/jdbc/Connection;->close()V
    :try_end_11
    .catch Ljava/sql/SQLException; {:try_start_11 .. :try_end_11} :catch_8

    .line 158
    :cond_9
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iput-object v2, v0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    .line 159
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iput-object v2, v0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnProps:Ljava/util/Properties;

    .line 160
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    goto/16 :goto_1

    .line 145
    :catch_7
    move-exception v0

    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :catch_8
    move-exception v0

    .line 154
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :catch_9
    move-exception v0

    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :catch_a
    move-exception v0

    .line 154
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :catchall_2
    move-exception v0

    goto/16 :goto_6

    .line 137
    :catch_b
    move-exception v0

    goto :goto_7

    .line 135
    :catch_c
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_4

    .line 132
    :catchall_3
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_3

    :catchall_4
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :catchall_5
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_3

    :catchall_6
    move-exception v3

    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    goto/16 :goto_3

    .line 126
    :catch_d
    move-exception v1

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_5

    :catch_e
    move-exception v3

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_5

    :cond_a
    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_0
.end method
