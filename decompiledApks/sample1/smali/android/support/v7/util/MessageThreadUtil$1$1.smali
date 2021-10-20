.class Landroid/support/v7/util/MessageThreadUtil$1$1;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/MessageThreadUtil$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/util/MessageThreadUtil$1;


# direct methods
.method constructor <init>(Landroid/support/v7/util/MessageThreadUtil$1;)V
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/util/MessageThreadUtil$1$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$1;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 61
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$1$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$1;

    invoke-static {v2}, Landroid/support/v7/util/MessageThreadUtil$1;->access$000(Landroid/support/v7/util/MessageThreadUtil$1;)Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->next()Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v2

    move-object v1, v2

    .line 62
    :goto_0
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 63
    move-object v2, v1

    iget v2, v2, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->what:I

    packed-switch v2, :pswitch_data_0

    .line 75
    const-string v2, "ThreadUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

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

    .line 77
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$1$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$1;

    invoke-static {v2}, Landroid/support/v7/util/MessageThreadUtil$1;->access$000(Landroid/support/v7/util/MessageThreadUtil$1;)Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->next()Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 65
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$1$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$1;

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$1;->val$callback:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    move-object v4, v1

    iget v4, v4, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v2, v3, v4}, Landroid/support/v7/util/ThreadUtil$MainThreadCallback;->updateItemCount(II)V

    .line 66
    goto :goto_1

    .line 69
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$1$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$1;

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$1;->val$callback:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    check-cast v4, Landroid/support/v7/util/TileList$Tile;

    invoke-interface {v2, v3, v4}, Landroid/support/v7/util/ThreadUtil$MainThreadCallback;->addTile(ILandroid/support/v7/util/TileList$Tile;)V

    .line 70
    goto :goto_1

    .line 72
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$1$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$1;

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$1;->val$callback:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    move-object v4, v1

    iget v4, v4, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v2, v3, v4}, Landroid/support/v7/util/ThreadUtil$MainThreadCallback;->removeTile(II)V

    .line 73
    goto :goto_1

    .line 79
    :cond_0
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
