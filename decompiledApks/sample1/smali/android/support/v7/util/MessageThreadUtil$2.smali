.class Landroid/support/v7/util/MessageThreadUtil$2;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Landroid/support/v7/util/ThreadUtil$BackgroundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/util/MessageThreadUtil;->getBackgroundProxy(Landroid/support/v7/util/ThreadUtil$BackgroundCallback;)Landroid/support/v7/util/ThreadUtil$BackgroundCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v7/util/ThreadUtil$BackgroundCallback",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final LOAD_TILE:I = 0x3

.field private static final RECYCLE_TILE:I = 0x4

.field private static final REFRESH:I = 0x1

.field private static final UPDATE_RANGE:I = 0x2


# instance fields
.field private mBackgroundRunnable:Ljava/lang/Runnable;

.field mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mQueue:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

.field final synthetic this$0:Landroid/support/v7/util/MessageThreadUtil;

.field final synthetic val$callback:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;


# direct methods
.method constructor <init>(Landroid/support/v7/util/MessageThreadUtil;Landroid/support/v7/util/ThreadUtil$BackgroundCallback;)V
    .locals 8

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/util/MessageThreadUtil$2;->this$0:Landroid/support/v7/util/MessageThreadUtil;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/util/MessageThreadUtil$2;->val$callback:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 86
    move-object v3, v0

    new-instance v4, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;-><init>()V

    iput-object v4, v3, Landroid/support/v7/util/MessageThreadUtil$2;->mQueue:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    .line 87
    move-object v3, v0

    invoke-static {}, Landroid/support/v4/content/ParallelExecutorCompat;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v7/util/MessageThreadUtil$2;->mExecutor:Ljava/util/concurrent/Executor;

    .line 88
    move-object v3, v0

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, v3, Landroid/support/v7/util/MessageThreadUtil$2;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    move-object v3, v0

    new-instance v4, Landroid/support/v7/util/MessageThreadUtil$2$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v7/util/MessageThreadUtil$2$1;-><init>(Landroid/support/v7/util/MessageThreadUtil$2;)V

    iput-object v4, v3, Landroid/support/v7/util/MessageThreadUtil$2;->mBackgroundRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/util/MessageThreadUtil$2;)Landroid/support/v7/util/MessageThreadUtil$MessageQueue;
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/MessageThreadUtil$2;->mQueue:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    move-object v0, v1

    return-object v0
.end method

.method private maybeExecuteBackgroundRunnable()V
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/MessageThreadUtil$2;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/MessageThreadUtil$2;->mExecutor:Ljava/util/concurrent/Executor;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$2;->mBackgroundRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 131
    :cond_0
    return-void
.end method

.method private sendMessage(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$2;->mQueue:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->sendMessage(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    .line 119
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/util/MessageThreadUtil$2;->maybeExecuteBackgroundRunnable()V

    .line 120
    return-void
.end method

.method private sendMessageAtFrontOfQueue(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$2;->mQueue:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->sendMessageAtFrontOfQueue(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    .line 124
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/util/MessageThreadUtil$2;->maybeExecuteBackgroundRunnable()V

    .line 125
    return-void
.end method


# virtual methods
.method public loadTile(II)V
    .locals 7

    .prologue
    .line 109
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    const/4 v4, 0x3

    move v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(III)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/util/MessageThreadUtil$2;->sendMessage(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    .line 110
    return-void
.end method

.method public recycleTile(Landroid/support/v7/util/TileList$Tile;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/TileList$Tile",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x4

    const/4 v4, 0x0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(IILjava/lang/Object;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/util/MessageThreadUtil$2;->sendMessage(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    .line 115
    return-void
.end method

.method public refresh(I)V
    .locals 6

    .prologue
    .line 97
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    move v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(IILjava/lang/Object;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/util/MessageThreadUtil$2;->sendMessageAtFrontOfQueue(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    .line 98
    return-void
.end method

.method public updateRange(IIIII)V
    .locals 14

    .prologue
    .line 103
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    const/4 v7, 0x2

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(IIIIIILjava/lang/Object;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v7/util/MessageThreadUtil$2;->sendMessageAtFrontOfQueue(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    .line 105
    return-void
.end method
