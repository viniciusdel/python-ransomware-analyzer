.class Landroid/support/v7/widget/ViewInfoStore;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ViewInfoStore$InfoRecord;,
        Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field final mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Landroid/support/v7/widget/ViewInfoStore$InfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 47
    move-object v1, v0

    new-instance v2, Landroid/support/v4/util/ArrayMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    .line 50
    move-object v1, v0

    new-instance v2, Landroid/support/v4/util/LongSparseArray;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    .line 254
    return-void
.end method


# virtual methods
.method addToAppearedInPreLayoutHolders(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 8

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-object v3, v4

    .line 120
    move-object v4, v3

    if-nez v4, :cond_0

    .line 121
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->obtain()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v4

    move-object v3, v4

    .line 122
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 124
    :cond_0
    move-object v4, v3

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v6, 0x2

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 125
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 126
    return-void
.end method

.method addToDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 7

    .prologue
    .line 172
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-object v2, v3

    .line 173
    move-object v3, v2

    if-nez v3, :cond_0

    .line 174
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->obtain()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v3

    move-object v2, v3

    .line 175
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 177
    :cond_0
    move-object v3, v2

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 178
    return-void
.end method

.method addToOldChangeHolders(JLandroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 8

    .prologue
    .line 106
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    move-wide v5, v1

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 107
    return-void
.end method

.method addToPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 8

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-object v3, v4

    .line 157
    move-object v4, v3

    if-nez v4, :cond_0

    .line 158
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->obtain()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v4

    move-object v3, v4

    .line 159
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 161
    :cond_0
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 162
    move-object v4, v3

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/16 v6, 0x8

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 163
    return-void
.end method

.method addToPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 8

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-object v3, v4

    .line 68
    move-object v4, v3

    if-nez v4, :cond_0

    .line 69
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->obtain()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v4

    move-object v3, v4

    .line 70
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 72
    :cond_0
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 73
    move-object v4, v3

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v6, 0x4

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 74
    return-void
.end method

.method clear()V
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 58
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 59
    return-void
.end method

.method getFromOldChangeHolders(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 6

    .prologue
    .line 147
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v0, v3

    return-object v0
.end method

.method isInPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 5

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-object v2, v3

    .line 136
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    iget v3, v3, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method onDetach()V
    .locals 0

    .prologue
    .line 241
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->drainCache()V

    .line 242
    return-void
.end method

.method popFromPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v4/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v5

    move v2, v5

    .line 84
    move v5, v2

    if-gez v5, :cond_0

    .line 85
    const/4 v5, 0x0

    move-object v0, v5

    .line 97
    :goto_0
    return-object v0

    .line 87
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-object v3, v5

    .line 88
    move-object v5, v3

    if-eqz v5, :cond_2

    move-object v5, v3

    iget v5, v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v6, 0x4

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    .line 89
    move-object v5, v3

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v7, -0x5

    and-int/lit8 v6, v6, -0x5

    iput v6, v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 90
    move-object v5, v3

    iget-object v5, v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-object v4, v5

    .line 91
    move-object v5, v3

    iget v5, v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    if-nez v5, :cond_1

    .line 92
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 93
    move-object v5, v3

    invoke-static {v5}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->recycle(Landroid/support/v7/widget/ViewInfoStore$InfoRecord;)V

    .line 95
    :cond_1
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 97
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method process(Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;)V
    .locals 9

    .prologue
    .line 193
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v5}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v2, v5

    :goto_0
    move v5, v2

    if-ltz v5, :cond_7

    .line 194
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v3, v5

    .line 195
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-object v4, v5

    .line 196
    move-object v5, v4

    iget v5, v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v6, 0x3

    and-int/lit8 v5, v5, 0x3

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 198
    move-object v5, v1

    move-object v6, v3

    invoke-interface {v5, v6}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->unused(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 219
    :cond_0
    :goto_1
    move-object v5, v4

    invoke-static {v5}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->recycle(Landroid/support/v7/widget/ViewInfoStore$InfoRecord;)V

    .line 193
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 199
    :cond_1
    move-object v5, v4

    iget v5, v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 201
    move-object v5, v1

    move-object v6, v3

    move-object v7, v4

    iget-object v7, v7, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-object v8, v4

    iget-object v8, v8, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {v5, v6, v7, v8}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 202
    :cond_2
    move-object v5, v4

    iget v5, v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/16 v6, 0xe

    and-int/lit8 v5, v5, 0xe

    const/16 v6, 0xe

    if-ne v5, v6, :cond_3

    .line 204
    move-object v5, v1

    move-object v6, v3

    move-object v7, v4

    iget-object v7, v7, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-object v8, v4

    iget-object v8, v8, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {v5, v6, v7, v8}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->processAppeared(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 205
    :cond_3
    move-object v5, v4

    iget v5, v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/16 v6, 0xc

    and-int/lit8 v5, v5, 0xc

    const/16 v6, 0xc

    if-ne v5, v6, :cond_4

    .line 207
    move-object v5, v1

    move-object v6, v3

    move-object v7, v4

    iget-object v7, v7, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-object v8, v4

    iget-object v8, v8, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {v5, v6, v7, v8}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->processPersistent(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 208
    :cond_4
    move-object v5, v4

    iget v5, v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v6, 0x4

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_5

    .line 210
    move-object v5, v1

    move-object v6, v3

    move-object v7, v4

    iget-object v7, v7, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 211
    :cond_5
    move-object v5, v4

    iget v5, v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/16 v6, 0x8

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_6

    .line 213
    move-object v5, v1

    move-object v6, v3

    move-object v7, v4

    iget-object v7, v7, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-object v8, v4

    iget-object v8, v8, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {v5, v6, v7, v8}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->processAppeared(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 214
    :cond_6
    move-object v5, v4

    iget v5, v5, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    goto :goto_1

    .line 221
    :cond_7
    return-void
.end method

.method removeFromDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 7

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-object v2, v3

    .line 186
    move-object v3, v2

    if-nez v3, :cond_0

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    move-object v3, v2

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v5, -0x2

    and-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 190
    goto :goto_0
.end method

.method removeViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 6

    .prologue
    .line 228
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 229
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 230
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/util/LongSparseArray;->removeAt(I)V

    .line 234
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-object v2, v3

    .line 235
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 236
    move-object v3, v2

    invoke-static {v3}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->recycle(Landroid/support/v7/widget/ViewInfoStore$InfoRecord;)V

    .line 238
    :cond_1
    return-void

    .line 228
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method
