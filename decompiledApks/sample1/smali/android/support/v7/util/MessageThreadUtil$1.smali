.class Landroid/support/v7/util/MessageThreadUtil$1;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Landroid/support/v7/util/ThreadUtil$MainThreadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/util/MessageThreadUtil;->getMainThreadProxy(Landroid/support/v7/util/ThreadUtil$MainThreadCallback;)Landroid/support/v7/util/ThreadUtil$MainThreadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v7/util/ThreadUtil$MainThreadCallback",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final ADD_TILE:I = 0x2

.field private static final REMOVE_TILE:I = 0x3

.field private static final UPDATE_ITEM_COUNT:I = 0x1


# instance fields
.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mMainThreadRunnable:Ljava/lang/Runnable;

.field private final mQueue:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

.field final synthetic this$0:Landroid/support/v7/util/MessageThreadUtil;

.field final synthetic val$callback:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;


# direct methods
.method constructor <init>(Landroid/support/v7/util/MessageThreadUtil;Landroid/support/v7/util/ThreadUtil$MainThreadCallback;)V
    .locals 8

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/util/MessageThreadUtil$1;->this$0:Landroid/support/v7/util/MessageThreadUtil;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/util/MessageThreadUtil$1;->val$callback:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 31
    move-object v3, v0

    new-instance v4, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;-><init>()V

    iput-object v4, v3, Landroid/support/v7/util/MessageThreadUtil$1;->mQueue:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    .line 32
    move-object v3, v0

    new-instance v4, Landroid/os/Handler;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, v3, Landroid/support/v7/util/MessageThreadUtil$1;->mMainThreadHandler:Landroid/os/Handler;

    .line 58
    move-object v3, v0

    new-instance v4, Landroid/support/v7/util/MessageThreadUtil$1$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v7/util/MessageThreadUtil$1$1;-><init>(Landroid/support/v7/util/MessageThreadUtil$1;)V

    iput-object v4, v3, Landroid/support/v7/util/MessageThreadUtil$1;->mMainThreadRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/util/MessageThreadUtil$1;)Landroid/support/v7/util/MessageThreadUtil$MessageQueue;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/MessageThreadUtil$1;->mQueue:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    move-object v0, v1

    return-object v0
.end method

.method private sendMessage(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$1;->mQueue:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->sendMessage(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    .line 55
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$1;->mMainThreadHandler:Landroid/os/Handler;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/MessageThreadUtil$1;->mMainThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 56
    return-void
.end method


# virtual methods
.method public addTile(ILandroid/support/v7/util/TileList$Tile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v7/util/TileList$Tile",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    const/4 v4, 0x2

    move v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(IILjava/lang/Object;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/util/MessageThreadUtil$1;->sendMessage(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    .line 46
    return-void
.end method

.method public removeTile(II)V
    .locals 7

    .prologue
    .line 50
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    const/4 v4, 0x3

    move v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(III)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/util/MessageThreadUtil$1;->sendMessage(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    .line 51
    return-void
.end method

.method public updateItemCount(II)V
    .locals 7

    .prologue
    .line 40
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    const/4 v4, 0x1

    move v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(III)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/util/MessageThreadUtil$1;->sendMessage(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    .line 41
    return-void
.end method
