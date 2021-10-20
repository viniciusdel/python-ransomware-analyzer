.class Landroid/support/v7/util/TileList;
.super Ljava/lang/Object;
.source "TileList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/util/TileList$Tile;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mLastAccessedTile:Landroid/support/v7/util/TileList$Tile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/TileList$Tile",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mTileSize:I

.field private final mTiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v7/util/TileList$Tile",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 7

    .prologue
    .line 35
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 31
    move-object v2, v0

    new-instance v3, Landroid/util/SparseArray;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, v2, Landroid/support/v7/util/TileList;->mTiles:Landroid/util/SparseArray;

    .line 36
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/util/TileList;->mTileSize:I

    .line 37
    return-void
.end method


# virtual methods
.method public addOrReplace(Landroid/support/v7/util/TileList$Tile;)Landroid/support/v7/util/TileList$Tile;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/TileList$Tile",
            "<TT;>;)",
            "Landroid/support/v7/util/TileList$Tile",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/TileList;->mTiles:Landroid/util/SparseArray;

    move-object v5, v1

    iget v5, v5, Landroid/support/v7/util/TileList$Tile;->mStartPosition:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    move v2, v4

    .line 65
    move v4, v2

    if-gez v4, :cond_0

    .line 66
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/TileList;->mTiles:Landroid/util/SparseArray;

    move-object v5, v1

    iget v5, v5, Landroid/support/v7/util/TileList$Tile;->mStartPosition:I

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    const/4 v4, 0x0

    move-object v0, v4

    .line 74
    :goto_0
    return-object v0

    .line 69
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/TileList;->mTiles:Landroid/util/SparseArray;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/util/TileList$Tile;

    move-object v3, v4

    .line 70
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/TileList;->mTiles:Landroid/util/SparseArray;

    move v5, v2

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 71
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/TileList;->mLastAccessedTile:Landroid/support/v7/util/TileList$Tile;

    move-object v5, v3

    if-ne v4, v5, :cond_1

    .line 72
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v7/util/TileList;->mLastAccessedTile:Landroid/support/v7/util/TileList$Tile;

    .line 74
    :cond_1
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 57
    return-void
.end method

.method public getAtIndex(I)Landroid/support/v7/util/TileList$Tile;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/support/v7/util/TileList$Tile",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/TileList;->mTiles:Landroid/util/SparseArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/util/TileList$Tile;

    move-object v0, v2

    return-object v0
.end method

.method public getItemAt(I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/TileList;->mLastAccessedTile:Landroid/support/v7/util/TileList$Tile;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/TileList;->mLastAccessedTile:Landroid/support/v7/util/TileList$Tile;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/util/TileList$Tile;->containsPosition(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 41
    :cond_0
    move v4, v1

    move v5, v1

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/util/TileList;->mTileSize:I

    rem-int/2addr v5, v6

    sub-int/2addr v4, v5

    move v2, v4

    .line 42
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/TileList;->mTiles:Landroid/util/SparseArray;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    move v3, v4

    .line 43
    move v4, v3

    if-gez v4, :cond_1

    .line 44
    const/4 v4, 0x0

    move-object v0, v4

    .line 48
    :goto_0
    return-object v0

    .line 46
    :cond_1
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/util/TileList;->mTiles:Landroid/util/SparseArray;

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/util/TileList$Tile;

    iput-object v5, v4, Landroid/support/v7/util/TileList;->mLastAccessedTile:Landroid/support/v7/util/TileList$Tile;

    .line 48
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/TileList;->mLastAccessedTile:Landroid/support/v7/util/TileList$Tile;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/util/TileList$Tile;->getByPosition(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public removeAtPos(I)Landroid/support/v7/util/TileList$Tile;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/support/v7/util/TileList$Tile",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/TileList;->mTiles:Landroid/util/SparseArray;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/util/TileList$Tile;

    move-object v2, v3

    .line 79
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/TileList;->mLastAccessedTile:Landroid/support/v7/util/TileList$Tile;

    move-object v4, v2

    if-ne v3, v4, :cond_0

    .line 80
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/v7/util/TileList;->mLastAccessedTile:Landroid/support/v7/util/TileList$Tile;

    .line 82
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/TileList;->mTiles:Landroid/util/SparseArray;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 83
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v0, v1

    return v0
.end method
