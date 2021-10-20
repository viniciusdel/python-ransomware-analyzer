.class Landroid/support/v7/util/MessageThreadUtil$2$1;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/MessageThreadUtil$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/util/MessageThreadUtil$2;


# direct methods
.method constructor <init>(Landroid/support/v7/util/MessageThreadUtil$2;)V
    .locals 4

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/util/MessageThreadUtil$2$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$2;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 137
    move-object v0, p0

    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$2$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$2;

    invoke-static {v2}, Landroid/support/v7/util/MessageThreadUtil$2;->access$100(Landroid/support/v7/util/MessageThreadUtil$2;)Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->next()Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v2

    move-object v1, v2

    .line 138
    move-object v2, v1

    if-nez v2, :cond_0

    .line 163
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$2$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$2;

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$2;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 164
    return-void

    .line 141
    :cond_0
    move-object v2, v1

    iget v2, v2, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->what:I

    packed-switch v2, :pswitch_data_0

    .line 160
    const-string v2, "ThreadUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported message, what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget v4, v4, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 162
    :goto_1
    goto :goto_0

    .line 143
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$2$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$2;

    invoke-static {v2}, Landroid/support/v7/util/MessageThreadUtil$2;->access$100(Landroid/support/v7/util/MessageThreadUtil$2;)Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->removeMessages(I)V

    .line 144
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$2$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$2;

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$2;->val$callback:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    invoke-interface {v2, v3}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->refresh(I)V

    .line 145
    goto :goto_1

    .line 147
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$2$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$2;

    invoke-static {v2}, Landroid/support/v7/util/MessageThreadUtil$2;->access$100(Landroid/support/v7/util/MessageThreadUtil$2;)Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->removeMessages(I)V

    .line 148
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$2$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$2;

    invoke-static {v2}, Landroid/support/v7/util/MessageThreadUtil$2;->access$100(Landroid/support/v7/util/MessageThreadUtil$2;)Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->removeMessages(I)V

    .line 149
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$2$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$2;

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$2;->val$callback:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    move-object v4, v1

    iget v4, v4, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg2:I

    move-object v5, v1

    iget v5, v5, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg3:I

    move-object v6, v1

    iget v6, v6, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg4:I

    move-object v7, v1

    iget v7, v7, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg5:I

    invoke-interface/range {v2 .. v7}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->updateRange(IIIII)V

    .line 151
    goto :goto_1

    .line 153
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$2$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$2;

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$2;->val$callback:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    move-object v4, v1

    iget v4, v4, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v2, v3, v4}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->loadTile(II)V

    .line 154
    goto :goto_1

    .line 157
    :pswitch_3
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$2$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$2;

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$2;->val$callback:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    check-cast v3, Landroid/support/v7/util/TileList$Tile;

    invoke-interface {v2, v3}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->recycleTile(Landroid/support/v7/util/TileList$Tile;)V

    .line 158
    goto :goto_1

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
