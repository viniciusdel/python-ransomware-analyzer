.class Landroid/support/v7/util/AsyncListUtil$2;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"

# interfaces
.implements Landroid/support/v7/util/ThreadUtil$BackgroundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/AsyncListUtil;
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


# instance fields
.field private mFirstRequiredTileStart:I

.field private mGeneration:I

.field private mItemCount:I

.field private mLastRequiredTileStart:I

.field final mLoadedTiles:Landroid/util/SparseBooleanArray;

.field private mRecycledRoot:Landroid/support/v7/util/TileList$Tile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/TileList$Tile",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v7/util/AsyncListUtil;


# direct methods
.method constructor <init>(Landroid/support/v7/util/AsyncListUtil;)V
    .locals 6

    .prologue
    .line 290
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/util/AsyncListUtil$2;->this$0:Landroid/support/v7/util/AsyncListUtil;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 294
    move-object v2, v0

    new-instance v3, Landroid/util/SparseBooleanArray;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, v2, Landroid/support/v7/util/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method private acquireTile()Landroid/support/v7/util/TileList$Tile;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/util/TileList$Tile",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 388
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil$2;->mRecycledRoot:Landroid/support/v7/util/TileList$Tile;

    if-eqz v2, :cond_0

    .line 389
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil$2;->mRecycledRoot:Landroid/support/v7/util/TileList$Tile;

    move-object v1, v2

    .line 390
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil$2;->mRecycledRoot:Landroid/support/v7/util/TileList$Tile;

    iget-object v3, v3, Landroid/support/v7/util/TileList$Tile;->mNext:Landroid/support/v7/util/TileList$Tile;

    iput-object v3, v2, Landroid/support/v7/util/AsyncListUtil$2;->mRecycledRoot:Landroid/support/v7/util/TileList$Tile;

    .line 391
    move-object v2, v1

    move-object v0, v2

    .line 393
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/support/v7/util/TileList$Tile;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/AsyncListUtil$2;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v4, v4, Landroid/support/v7/util/AsyncListUtil;->mTClass:Ljava/lang/Class;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/util/AsyncListUtil$2;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget v5, v5, Landroid/support/v7/util/AsyncListUtil;->mTileSize:I

    invoke-direct {v3, v4, v5}, Landroid/support/v7/util/TileList$Tile;-><init>(Ljava/lang/Class;I)V

    move-object v0, v2

    goto :goto_0
.end method

.method private addTile(Landroid/support/v7/util/TileList$Tile;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/TileList$Tile",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 401
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/util/TileList$Tile;->mStartPosition:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 402
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil$2;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil;->mMainThreadProxy:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/util/AsyncListUtil$2;->mGeneration:I

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v7/util/ThreadUtil$MainThreadCallback;->addTile(ILandroid/support/v7/util/TileList$Tile;)V

    .line 406
    return-void
.end method

.method private flushTileCache(I)V
    .locals 10

    .prologue
    .line 417
    move-object v0, p0

    move v1, p1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/util/AsyncListUtil$2;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v7, v7, Landroid/support/v7/util/AsyncListUtil;->mDataCallback:Landroid/support/v7/util/AsyncListUtil$DataCallback;

    invoke-virtual {v7}, Landroid/support/v7/util/AsyncListUtil$DataCallback;->getMaxCachedTiles()I

    move-result v7

    move v2, v7

    .line 418
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/util/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    move v8, v2

    if-lt v7, v8, :cond_4

    .line 419
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/util/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    move v3, v7

    .line 420
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/util/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/util/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    move v4, v7

    .line 421
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/util/AsyncListUtil$2;->mFirstRequiredTileStart:I

    move v8, v3

    sub-int/2addr v7, v8

    move v5, v7

    .line 422
    move v7, v4

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/util/AsyncListUtil$2;->mLastRequiredTileStart:I

    sub-int/2addr v7, v8

    move v6, v7

    .line 423
    move v7, v5

    if-lez v7, :cond_1

    move v7, v5

    move v8, v6

    if-ge v7, v8, :cond_0

    move v7, v1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 425
    :cond_0
    move-object v7, v0

    move v8, v3

    invoke-direct {v7, v8}, Landroid/support/v7/util/AsyncListUtil$2;->removeTile(I)V

    .line 433
    :goto_1
    goto :goto_0

    .line 426
    :cond_1
    move v7, v6

    if-lez v7, :cond_3

    move v7, v5

    move v8, v6

    if-lt v7, v8, :cond_2

    move v7, v1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 428
    :cond_2
    move-object v7, v0

    move v8, v4

    invoke-direct {v7, v8}, Landroid/support/v7/util/AsyncListUtil$2;->removeTile(I)V

    goto :goto_1

    .line 434
    :cond_3
    :goto_2
    return-void

    :cond_4
    goto :goto_2
.end method

.method private getTileStart(I)I
    .locals 5

    .prologue
    .line 346
    move-object v0, p0

    move v1, p1

    move v2, v1

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/AsyncListUtil$2;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget v4, v4, Landroid/support/v7/util/AsyncListUtil;->mTileSize:I

    rem-int/2addr v3, v4

    sub-int/2addr v2, v3

    move v0, v2

    return v0
.end method

.method private isTileLoaded(I)Z
    .locals 4

    .prologue
    .line 397
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 437
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string v3, "AsyncListUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BKGR] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 438
    return-void
.end method

.method private removeTile(I)V
    .locals 5

    .prologue
    .line 409
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 410
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil$2;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil;->mMainThreadProxy:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/util/AsyncListUtil$2;->mGeneration:I

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v7/util/ThreadUtil$MainThreadCallback;->removeTile(II)V

    .line 414
    return-void
.end method

.method private requestTiles(IIIZ)V
    .locals 10

    .prologue
    .line 351
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, v1

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v2

    if-gt v7, v8, :cond_1

    .line 352
    move v7, v4

    if-eqz v7, :cond_0

    move v7, v2

    move v8, v1

    add-int/2addr v7, v8

    move v8, v5

    sub-int/2addr v7, v8

    :goto_1
    move v6, v7

    .line 356
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/util/AsyncListUtil$2;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v7, v7, Landroid/support/v7/util/AsyncListUtil;->mBackgroundProxy:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    move v8, v6

    move v9, v3

    invoke-interface {v7, v8, v9}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->loadTile(II)V

    .line 351
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/util/AsyncListUtil$2;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget v8, v8, Landroid/support/v7/util/AsyncListUtil;->mTileSize:I

    add-int/2addr v7, v8

    move v5, v7

    goto :goto_0

    .line 352
    :cond_0
    move v7, v5

    goto :goto_1

    .line 358
    :cond_1
    return-void
.end method


# virtual methods
.method public loadTile(II)V
    .locals 8

    .prologue
    .line 362
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/util/AsyncListUtil$2;->isTileLoaded(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 374
    :goto_0
    return-void

    .line 368
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/util/AsyncListUtil$2;->acquireTile()Landroid/support/v7/util/TileList$Tile;

    move-result-object v4

    move-object v3, v4

    .line 369
    move-object v4, v3

    move v5, v1

    iput v5, v4, Landroid/support/v7/util/TileList$Tile;->mStartPosition:I

    .line 370
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/util/AsyncListUtil$2;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget v5, v5, Landroid/support/v7/util/AsyncListUtil;->mTileSize:I

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/util/AsyncListUtil$2;->mItemCount:I

    move-object v7, v3

    iget v7, v7, Landroid/support/v7/util/TileList$Tile;->mStartPosition:I

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/support/v7/util/TileList$Tile;->mItemCount:I

    .line 371
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/AsyncListUtil$2;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v4, v4, Landroid/support/v7/util/AsyncListUtil;->mDataCallback:Landroid/support/v7/util/AsyncListUtil$DataCallback;

    move-object v5, v3

    iget-object v5, v5, Landroid/support/v7/util/TileList$Tile;->mItems:[Ljava/lang/Object;

    move-object v6, v3

    iget v6, v6, Landroid/support/v7/util/TileList$Tile;->mStartPosition:I

    move-object v7, v3

    iget v7, v7, Landroid/support/v7/util/TileList$Tile;->mItemCount:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/util/AsyncListUtil$DataCallback;->fillData([Ljava/lang/Object;II)V

    .line 372
    move-object v4, v0

    move v5, v2

    invoke-direct {v4, v5}, Landroid/support/v7/util/AsyncListUtil$2;->flushTileCache(I)V

    .line 373
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroid/support/v7/util/AsyncListUtil$2;->addTile(Landroid/support/v7/util/TileList$Tile;)V

    .line 374
    goto :goto_0
.end method

.method public recycleTile(Landroid/support/v7/util/TileList$Tile;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/TileList$Tile",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 381
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil$2;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil;->mDataCallback:Landroid/support/v7/util/AsyncListUtil$DataCallback;

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v7/util/TileList$Tile;->mItems:[Ljava/lang/Object;

    move-object v4, v1

    iget v4, v4, Landroid/support/v7/util/TileList$Tile;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/util/AsyncListUtil$DataCallback;->recycleData([Ljava/lang/Object;I)V

    .line 383
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil$2;->mRecycledRoot:Landroid/support/v7/util/TileList$Tile;

    iput-object v3, v2, Landroid/support/v7/util/TileList$Tile;->mNext:Landroid/support/v7/util/TileList$Tile;

    .line 384
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/util/AsyncListUtil$2;->mRecycledRoot:Landroid/support/v7/util/TileList$Tile;

    .line 385
    return-void
.end method

.method public refresh(I)V
    .locals 5

    .prologue
    .line 304
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/util/AsyncListUtil$2;->mGeneration:I

    .line 305
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 306
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil$2;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil;->mDataCallback:Landroid/support/v7/util/AsyncListUtil$DataCallback;

    invoke-virtual {v3}, Landroid/support/v7/util/AsyncListUtil$DataCallback;->refreshData()I

    move-result v3

    iput v3, v2, Landroid/support/v7/util/AsyncListUtil$2;->mItemCount:I

    .line 307
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil$2;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil;->mMainThreadProxy:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/util/AsyncListUtil$2;->mGeneration:I

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/util/AsyncListUtil$2;->mItemCount:I

    invoke-interface {v2, v3, v4}, Landroid/support/v7/util/ThreadUtil$MainThreadCallback;->updateItemCount(II)V

    .line 308
    return-void
.end method

.method public updateRange(IIIII)V
    .locals 13

    .prologue
    .line 318
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v8, v1

    move v9, v2

    if-le v8, v9, :cond_0

    .line 343
    :goto_0
    return-void

    .line 322
    :cond_0
    move-object v8, v0

    move v9, v1

    invoke-direct {v8, v9}, Landroid/support/v7/util/AsyncListUtil$2;->getTileStart(I)I

    move-result v8

    move v6, v8

    .line 323
    move-object v8, v0

    move v9, v2

    invoke-direct {v8, v9}, Landroid/support/v7/util/AsyncListUtil$2;->getTileStart(I)I

    move-result v8

    move v7, v8

    .line 325
    move-object v8, v0

    move-object v9, v0

    move v10, v3

    invoke-direct {v9, v10}, Landroid/support/v7/util/AsyncListUtil$2;->getTileStart(I)I

    move-result v9

    iput v9, v8, Landroid/support/v7/util/AsyncListUtil$2;->mFirstRequiredTileStart:I

    .line 326
    move-object v8, v0

    move-object v9, v0

    move v10, v4

    invoke-direct {v9, v10}, Landroid/support/v7/util/AsyncListUtil$2;->getTileStart(I)I

    move-result v9

    iput v9, v8, Landroid/support/v7/util/AsyncListUtil$2;->mLastRequiredTileStart:I

    .line 334
    move v8, v5

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 335
    move-object v8, v0

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/util/AsyncListUtil$2;->mFirstRequiredTileStart:I

    move v10, v7

    move v11, v5

    const/4 v12, 0x1

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/support/v7/util/AsyncListUtil$2;->requestTiles(IIIZ)V

    .line 336
    move-object v8, v0

    move v9, v7

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/util/AsyncListUtil$2;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget v10, v10, Landroid/support/v7/util/AsyncListUtil;->mTileSize:I

    add-int/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/util/AsyncListUtil$2;->mLastRequiredTileStart:I

    move v11, v5

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/support/v7/util/AsyncListUtil$2;->requestTiles(IIIZ)V

    .line 343
    :goto_1
    goto :goto_0

    .line 339
    :cond_1
    move-object v8, v0

    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/util/AsyncListUtil$2;->mLastRequiredTileStart:I

    move v11, v5

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/support/v7/util/AsyncListUtil$2;->requestTiles(IIIZ)V

    .line 340
    move-object v8, v0

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/util/AsyncListUtil$2;->mFirstRequiredTileStart:I

    move v10, v6

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/util/AsyncListUtil$2;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget v11, v11, Landroid/support/v7/util/AsyncListUtil;->mTileSize:I

    sub-int/2addr v10, v11

    move v11, v5

    const/4 v12, 0x1

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/support/v7/util/AsyncListUtil$2;->requestTiles(IIIZ)V

    goto :goto_1
.end method
