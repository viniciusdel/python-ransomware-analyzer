.class Landroid/support/v7/util/AsyncListUtil$1;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"

# interfaces
.implements Landroid/support/v7/util/ThreadUtil$MainThreadCallback;


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
        "Landroid/support/v7/util/ThreadUtil$MainThreadCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/util/AsyncListUtil;


# direct methods
.method constructor <init>(Landroid/support/v7/util/AsyncListUtil;)V
    .locals 4

    .prologue
    .line 208
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isRequestedGeneration(I)Z
    .locals 4

    .prologue
    .line 285
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget v3, v3, Landroid/support/v7/util/AsyncListUtil;->mRequestedGeneration:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private recycleAllTiles()V
    .locals 5

    .prologue
    .line 278
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil;->mTileList:Landroid/support/v7/util/TileList;

    invoke-virtual {v3}, Landroid/support/v7/util/TileList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 279
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil;->mBackgroundProxy:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil;->mTileList:Landroid/support/v7/util/TileList;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/util/TileList;->getAtIndex(I)Landroid/support/v7/util/TileList$Tile;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->recycleTile(Landroid/support/v7/util/TileList$Tile;)V

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil;->mTileList:Landroid/support/v7/util/TileList;

    invoke-virtual {v2}, Landroid/support/v7/util/TileList;->clear()V

    .line 282
    return-void
.end method


# virtual methods
.method public addTile(ILandroid/support/v7/util/TileList$Tile;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v7/util/TileList$Tile",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v7, v0

    move v8, v1

    invoke-direct {v7, v8}, Landroid/support/v7/util/AsyncListUtil$1;->isRequestedGeneration(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 233
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v7, v7, Landroid/support/v7/util/AsyncListUtil;->mBackgroundProxy:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    move-object v8, v2

    invoke-interface {v7, v8}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->recycleTile(Landroid/support/v7/util/TileList$Tile;)V

    .line 256
    :goto_0
    return-void

    .line 236
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v7, v7, Landroid/support/v7/util/AsyncListUtil;->mTileList:Landroid/support/v7/util/TileList;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/support/v7/util/TileList;->addOrReplace(Landroid/support/v7/util/TileList$Tile;)Landroid/support/v7/util/TileList$Tile;

    move-result-object v7

    move-object v3, v7

    .line 237
    move-object v7, v3

    if-eqz v7, :cond_1

    .line 238
    const-string v7, "AsyncListUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "duplicate tile @"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    iget v9, v9, Landroid/support/v7/util/TileList$Tile;->mStartPosition:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 239
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v7, v7, Landroid/support/v7/util/AsyncListUtil;->mBackgroundProxy:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    move-object v8, v3

    invoke-interface {v7, v8}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->recycleTile(Landroid/support/v7/util/TileList$Tile;)V

    .line 245
    :cond_1
    move-object v7, v2

    iget v7, v7, Landroid/support/v7/util/TileList$Tile;->mStartPosition:I

    move-object v8, v2

    iget v8, v8, Landroid/support/v7/util/TileList$Tile;->mItemCount:I

    add-int/2addr v7, v8

    move v4, v7

    .line 246
    const/4 v7, 0x0

    move v5, v7

    .line 247
    :goto_1
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    invoke-static {v8}, Landroid/support/v7/util/AsyncListUtil;->access$300(Landroid/support/v7/util/AsyncListUtil;)Landroid/util/SparseIntArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 248
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    invoke-static {v7}, Landroid/support/v7/util/AsyncListUtil;->access$300(Landroid/support/v7/util/AsyncListUtil;)Landroid/util/SparseIntArray;

    move-result-object v7

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    move v6, v7

    .line 249
    move-object v7, v2

    iget v7, v7, Landroid/support/v7/util/TileList$Tile;->mStartPosition:I

    move v8, v6

    if-gt v7, v8, :cond_2

    move v7, v6

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 250
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    invoke-static {v7}, Landroid/support/v7/util/AsyncListUtil;->access$300(Landroid/support/v7/util/AsyncListUtil;)Landroid/util/SparseIntArray;

    move-result-object v7

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 251
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v7, v7, Landroid/support/v7/util/AsyncListUtil;->mViewCallback:Landroid/support/v7/util/AsyncListUtil$ViewCallback;

    move v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v7/util/AsyncListUtil$ViewCallback;->onItemLoaded(I)V

    .line 255
    :goto_2
    goto :goto_1

    .line 253
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 256
    :cond_3
    goto :goto_0
.end method

.method public removeTile(II)V
    .locals 8

    .prologue
    .line 260
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/util/AsyncListUtil$1;->isRequestedGeneration(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 272
    :goto_0
    return-void

    .line 263
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v4, v4, Landroid/support/v7/util/AsyncListUtil;->mTileList:Landroid/support/v7/util/TileList;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/util/TileList;->removeAtPos(I)Landroid/support/v7/util/TileList$Tile;

    move-result-object v4

    move-object v3, v4

    .line 264
    move-object v4, v3

    if-nez v4, :cond_1

    .line 265
    const-string v4, "AsyncListUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tile not found @"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 266
    goto :goto_0

    .line 271
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v4, v4, Landroid/support/v7/util/AsyncListUtil;->mBackgroundProxy:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    move-object v5, v3

    invoke-interface {v4, v5}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->recycleTile(Landroid/support/v7/util/TileList$Tile;)V

    .line 272
    goto :goto_0
.end method

.method public updateItemCount(II)V
    .locals 5

    .prologue
    .line 214
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/util/AsyncListUtil$1;->isRequestedGeneration(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 225
    :goto_0
    return-void

    .line 217
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v7/util/AsyncListUtil;->access$002(Landroid/support/v7/util/AsyncListUtil;I)I

    move-result v3

    .line 218
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil;->mViewCallback:Landroid/support/v7/util/AsyncListUtil$ViewCallback;

    invoke-virtual {v3}, Landroid/support/v7/util/AsyncListUtil$ViewCallback;->onDataRefresh()V

    .line 219
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    iget v4, v4, Landroid/support/v7/util/AsyncListUtil;->mRequestedGeneration:I

    iput v4, v3, Landroid/support/v7/util/AsyncListUtil;->mDisplayedGeneration:I

    .line 220
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/util/AsyncListUtil$1;->recycleAllTiles()V

    .line 222
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/support/v7/util/AsyncListUtil;->access$102(Landroid/support/v7/util/AsyncListUtil;Z)Z

    move-result v3

    .line 224
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil$1;->this$0:Landroid/support/v7/util/AsyncListUtil;

    invoke-static {v3}, Landroid/support/v7/util/AsyncListUtil;->access$200(Landroid/support/v7/util/AsyncListUtil;)V

    .line 225
    goto :goto_0
.end method
