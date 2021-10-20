.class Landroid/support/v7/widget/AdapterHelper;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Landroid/support/v7/widget/OpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AdapterHelper$Callback;,
        Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final POSITION_TYPE_INVISIBLE:I = 0x0

.field static final POSITION_TYPE_NEW_OR_LAID_OUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AHT"


# instance fields
.field final mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

.field final mDisableRecycler:Z

.field private mExistingUpdateTypes:I

.field mOnItemProcessedCallback:Ljava/lang/Runnable;

.field final mOpReorderer:Landroid/support/v7/widget/OpReorderer;

.field final mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/widget/AdapterHelper$Callback;)V
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/AdapterHelper;-><init>(Landroid/support/v7/widget/AdapterHelper$Callback;Z)V

    .line 74
    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/AdapterHelper$Callback;Z)V
    .locals 8

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 56
    move-object v3, v0

    new-instance v4, Landroid/support/v4/util/Pools$SimplePool;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/16 v6, 0x1e

    invoke-direct {v5, v6}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    iput-object v4, v3, Landroid/support/v7/widget/AdapterHelper;->mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;

    .line 58
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 60
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 70
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 77
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    .line 78
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroid/support/v7/widget/AdapterHelper;->mDisableRecycler:Z

    .line 79
    move-object v3, v0

    new-instance v4, Landroid/support/v7/widget/OpReorderer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v7/widget/OpReorderer;-><init>(Landroid/support/v7/widget/OpReorderer$Callback;)V

    iput-object v4, v3, Landroid/support/v7/widget/AdapterHelper;->mOpReorderer:Landroid/support/v7/widget/OpReorderer;

    .line 80
    return-void
.end method

.method private applyAdd(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 4

    .prologue
    .line 433
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 434
    return-void
.end method

.method private applyMove(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 132
    return-void
.end method

.method private applyRemove(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 15

    .prologue
    .line 135
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v10, v1

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v2, v10

    .line 136
    const/4 v10, 0x0

    move v3, v10

    .line 137
    move-object v10, v1

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v1

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v10, v11

    move v4, v10

    .line 138
    const/4 v10, -0x1

    move v5, v10

    .line 139
    move-object v10, v1

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v6, v10

    :goto_0
    move v10, v6

    move v11, v4

    if-ge v10, v11, :cond_5

    .line 140
    const/4 v10, 0x0

    move v7, v10

    .line 141
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    move v11, v6

    invoke-interface {v10, v11}, Landroid/support/v7/widget/AdapterHelper$Callback;->findViewHolder(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v10

    move-object v8, v10

    .line 142
    move-object v10, v8

    if-nez v10, :cond_0

    move-object v10, v0

    move v11, v6

    invoke-direct {v10, v11}, Landroid/support/v7/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 149
    :cond_0
    move v10, v5

    if-nez v10, :cond_1

    .line 152
    move-object v10, v0

    const/4 v11, 0x2

    move v12, v2

    move v13, v3

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v10

    move-object v9, v10

    .line 153
    move-object v10, v0

    move-object v11, v9

    invoke-direct {v10, v11}, Landroid/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 154
    const/4 v10, 0x1

    move v7, v10

    .line 156
    :cond_1
    const/4 v10, 0x1

    move v5, v10

    .line 169
    :goto_1
    move v10, v7

    if-eqz v10, :cond_4

    .line 170
    move v10, v6

    move v11, v3

    sub-int/2addr v10, v11

    move v6, v10

    .line 171
    move v10, v4

    move v11, v3

    sub-int/2addr v10, v11

    move v4, v10

    .line 172
    const/4 v10, 0x1

    move v3, v10

    .line 139
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 160
    :cond_2
    move v10, v5

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 163
    move-object v10, v0

    const/4 v11, 0x2

    move v12, v2

    move v13, v3

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v10

    move-object v9, v10

    .line 164
    move-object v10, v0

    move-object v11, v9

    invoke-direct {v10, v11}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 165
    const/4 v10, 0x1

    move v7, v10

    .line 167
    :cond_3
    const/4 v10, 0x0

    move v5, v10

    goto :goto_1

    .line 174
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 177
    :cond_5
    move v10, v3

    move-object v11, v1

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v10, v11, :cond_6

    .line 178
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 179
    move-object v10, v0

    const/4 v11, 0x2

    move v12, v2

    move v13, v3

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v10

    move-object v1, v10

    .line 181
    :cond_6
    move v10, v5

    if-nez v10, :cond_7

    .line 182
    move-object v10, v0

    move-object v11, v1

    invoke-direct {v10, v11}, Landroid/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 186
    :goto_3
    return-void

    .line 184
    :cond_7
    move-object v10, v0

    move-object v11, v1

    invoke-direct {v10, v11}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_3
.end method

.method private applyUpdate(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 14

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, p1

    move-object v9, v1

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v2, v9

    .line 190
    const/4 v9, 0x0

    move v3, v9

    .line 191
    move-object v9, v1

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v10, v1

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v9, v10

    move v4, v9

    .line 192
    const/4 v9, -0x1

    move v5, v9

    .line 193
    move-object v9, v1

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v6, v9

    :goto_0
    move v9, v6

    move v10, v4

    if-ge v9, v10, :cond_4

    .line 194
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    move v10, v6

    invoke-interface {v9, v10}, Landroid/support/v7/widget/AdapterHelper$Callback;->findViewHolder(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v9

    move-object v7, v9

    .line 195
    move-object v9, v7

    if-nez v9, :cond_0

    move-object v9, v0

    move v10, v6

    invoke-direct {v9, v10}, Landroid/support/v7/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 196
    :cond_0
    move v9, v5

    if-nez v9, :cond_1

    .line 197
    move-object v9, v0

    const/4 v10, 0x4

    move v11, v2

    move v12, v3

    move-object v13, v1

    iget-object v13, v13, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v9

    move-object v8, v9

    .line 199
    move-object v9, v0

    move-object v10, v8

    invoke-direct {v9, v10}, Landroid/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 200
    const/4 v9, 0x0

    move v3, v9

    .line 201
    move v9, v6

    move v2, v9

    .line 203
    :cond_1
    const/4 v9, 0x1

    move v5, v9

    .line 214
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 193
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 205
    :cond_2
    move v9, v5

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 206
    move-object v9, v0

    const/4 v10, 0x4

    move v11, v2

    move v12, v3

    move-object v13, v1

    iget-object v13, v13, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v9

    move-object v8, v9

    .line 208
    move-object v9, v0

    move-object v10, v8

    invoke-direct {v9, v10}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 209
    const/4 v9, 0x0

    move v3, v9

    .line 210
    move v9, v6

    move v2, v9

    .line 212
    :cond_3
    const/4 v9, 0x0

    move v5, v9

    goto :goto_1

    .line 216
    :cond_4
    move v9, v3

    move-object v10, v1

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v9, v10, :cond_5

    .line 217
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    move-object v6, v9

    .line 218
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 219
    move-object v9, v0

    const/4 v10, 0x4

    move v11, v2

    move v12, v3

    move-object v13, v6

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v9

    move-object v1, v9

    .line 221
    :cond_5
    move v9, v5

    if-nez v9, :cond_6

    .line 222
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Landroid/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 226
    :goto_2
    return-void

    .line 224
    :cond_6
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_2
.end method

.method private canFindInPreLayout(I)Z
    .locals 11

    .prologue
    .line 412
    move-object v0, p0

    move v1, p1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v7

    .line 413
    const/4 v7, 0x0

    move v3, v7

    :goto_0
    move v7, v3

    move v8, v2

    if-ge v7, v8, :cond_3

    .line 414
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-object v4, v7

    .line 415
    move-object v7, v4

    iget v7, v7, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    .line 416
    move-object v7, v0

    move-object v8, v4

    iget v8, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v7

    move v8, v1

    if-ne v7, v8, :cond_2

    .line 417
    const/4 v7, 0x1

    move v0, v7

    .line 429
    :goto_1
    return v0

    .line 419
    :cond_0
    move-object v7, v4

    iget v7, v7, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 421
    move-object v7, v4

    iget v7, v7, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v8, v4

    iget v8, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v7, v8

    move v5, v7

    .line 422
    move-object v7, v4

    iget v7, v7, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v6, v7

    :goto_2
    move v7, v6

    move v8, v5

    if-ge v7, v8, :cond_2

    .line 423
    move-object v7, v0

    move v8, v6

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v7

    move v8, v1

    if-ne v7, v8, :cond_1

    .line 424
    const/4 v7, 0x1

    move v0, v7

    goto :goto_1

    .line 422
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 413
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 429
    :cond_3
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1
.end method

.method private dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 17

    .prologue
    .line 232
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v11, v1

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    move-object v11, v1

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v12, 0x8

    if-ne v11, v12, :cond_1

    .line 233
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const-string v13, "should not dispatch add or move for pre layout"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 246
    :cond_1
    move-object v11, v0

    move-object v12, v1

    iget v12, v12, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v13, v1

    iget v13, v13, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {v11, v12, v13}, Landroid/support/v7/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v11

    move v2, v11

    .line 250
    const/4 v11, 0x1

    move v3, v11

    .line 251
    move-object v11, v1

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v4, v11

    .line 253
    move-object v11, v1

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v11, :pswitch_data_0

    .line 261
    :pswitch_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "op should be remove or update."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 255
    :pswitch_1
    const/4 v11, 0x1

    move v5, v11

    .line 263
    :goto_0
    const/4 v11, 0x1

    move v6, v11

    :goto_1
    move v11, v6

    move-object v12, v1

    iget v12, v12, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v11, v12, :cond_6

    .line 264
    move-object v11, v1

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v12, v5

    move v13, v6

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    move v7, v11

    .line 265
    move-object v11, v0

    move v12, v7

    move-object v13, v1

    iget v13, v13, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {v11, v12, v13}, Landroid/support/v7/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v11

    move v8, v11

    .line 269
    const/4 v11, 0x0

    move v9, v11

    .line 270
    move-object v11, v1

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v11, :pswitch_data_1

    .line 278
    :goto_2
    :pswitch_2
    move v11, v9

    if-eqz v11, :cond_4

    .line 279
    add-int/lit8 v3, v3, 0x1

    .line 263
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 258
    :pswitch_3
    const/4 v11, 0x0

    move v5, v11

    .line 259
    goto :goto_0

    .line 272
    :pswitch_4
    move v11, v8

    move v12, v2

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    if-ne v11, v12, :cond_2

    const/4 v11, 0x1

    :goto_4
    move v9, v11

    .line 273
    goto :goto_2

    .line 272
    :cond_2
    const/4 v11, 0x0

    goto :goto_4

    .line 275
    :pswitch_5
    move v11, v8

    move v12, v2

    if-ne v11, v12, :cond_3

    const/4 v11, 0x1

    :goto_5
    move v9, v11

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    goto :goto_5

    .line 282
    :cond_4
    move-object v11, v0

    move-object v12, v1

    iget v12, v12, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    move v13, v2

    move v14, v3

    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v11

    move-object v10, v11

    .line 286
    move-object v11, v0

    move-object v12, v10

    move v13, v4

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V

    .line 287
    move-object v11, v0

    move-object v12, v10

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 288
    move-object v11, v1

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_5

    .line 289
    move v11, v4

    move v12, v3

    add-int/2addr v11, v12

    move v4, v11

    .line 291
    :cond_5
    move v11, v8

    move v2, v11

    .line 292
    const/4 v11, 0x1

    move v3, v11

    goto :goto_3

    .line 295
    :cond_6
    move-object v11, v1

    iget-object v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    move-object v6, v11

    .line 296
    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 297
    move v11, v3

    if-lez v11, :cond_7

    .line 298
    move-object v11, v0

    move-object v12, v1

    iget v12, v12, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    move v13, v2

    move v14, v3

    move-object v15, v6

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v11

    move-object v7, v11

    .line 302
    move-object v11, v0

    move-object v12, v7

    move v13, v4

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V

    .line 303
    move-object v11, v0

    move-object v12, v7

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 313
    :cond_7
    return-void

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 270
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 7

    .prologue
    .line 440
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 441
    move-object v2, v1

    iget v2, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v2, :pswitch_data_0

    .line 456
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown update op type for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 443
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v4, v1

    iget v4, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v2, v3, v4}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    .line 458
    :goto_0
    return-void

    .line 446
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v4, v1

    iget v4, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v2, v3, v4}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    .line 447
    goto :goto_0

    .line 449
    :pswitch_3
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v4, v1

    iget v4, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v2, v3, v4}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    .line 451
    goto :goto_0

    .line 453
    :pswitch_4
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v4, v1

    iget v4, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v5, v1

    iget-object v5, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Landroid/support/v7/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    .line 454
    goto :goto_0

    .line 441
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updatePositionWithPostponed(II)I
    .locals 12

    .prologue
    .line 331
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v3, v8

    .line 332
    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v4, v8

    :goto_0
    move v8, v4

    if-ltz v8, :cond_d

    .line 333
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-object v5, v8

    .line 334
    move-object v8, v5

    iget v8, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_9

    .line 336
    move-object v8, v5

    iget v8, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v9, v5

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v8, v9, :cond_2

    .line 337
    move-object v8, v5

    iget v8, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v6, v8

    .line 338
    move-object v8, v5

    iget v8, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move v7, v8

    .line 343
    :goto_1
    move v8, v1

    move v9, v6

    if-lt v8, v9, :cond_7

    move v8, v1

    move v9, v7

    if-gt v8, v9, :cond_7

    .line 345
    move v8, v6

    move-object v9, v5

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v8, v9, :cond_4

    .line 346
    move v8, v2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 347
    move-object v8, v5

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 352
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 332
    :cond_1
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 340
    :cond_2
    move-object v8, v5

    iget v8, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move v6, v8

    .line 341
    move-object v8, v5

    iget v8, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v7, v8

    goto :goto_1

    .line 348
    :cond_3
    move v8, v2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 349
    move-object v8, v5

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_2

    .line 354
    :cond_4
    move v8, v2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 355
    move-object v8, v5

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 360
    :cond_5
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 356
    :cond_6
    move v8, v2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 357
    move-object v8, v5

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_4

    .line 362
    :cond_7
    move v8, v1

    move-object v9, v5

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v8, v9, :cond_1

    .line 364
    move v8, v2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 365
    move-object v8, v5

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 366
    move-object v8, v5

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_3

    .line 367
    :cond_8
    move v8, v2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 368
    move-object v8, v5

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 369
    move-object v8, v5

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_3

    .line 373
    :cond_9
    move-object v8, v5

    iget v8, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v9, v1

    if-gt v8, v9, :cond_b

    .line 374
    move-object v8, v5

    iget v8, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 375
    move v8, v1

    move-object v9, v5

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v8, v9

    move v1, v8

    goto/16 :goto_3

    .line 376
    :cond_a
    move-object v8, v5

    iget v8, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 377
    move v8, v1

    move-object v9, v5

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v8, v9

    move v1, v8

    goto/16 :goto_3

    .line 380
    :cond_b
    move v8, v2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    .line 381
    move-object v8, v5

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto/16 :goto_3

    .line 382
    :cond_c
    move v8, v2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 383
    move-object v8, v5

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto/16 :goto_3

    .line 396
    :cond_d
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v4, v8

    :goto_5
    move v8, v4

    if-ltz v8, :cond_11

    .line 397
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-object v5, v8

    .line 398
    move-object v8, v5

    iget v8, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_10

    .line 399
    move-object v8, v5

    iget v8, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v9, v5

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v8, v9, :cond_e

    move-object v8, v5

    iget v8, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gez v8, :cond_f

    .line 400
    :cond_e
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    .line 401
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 396
    :cond_f
    :goto_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 403
    :cond_10
    move-object v8, v5

    iget v8, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gtz v8, :cond_f

    .line 404
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    .line 405
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_6

    .line 408
    :cond_11
    move v8, v1

    move v0, v8

    return v0
.end method


# virtual methods
.method varargs addUpdateOp([Landroid/support/v7/widget/AdapterHelper$UpdateOp;)Landroid/support/v7/widget/AdapterHelper;
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    .line 84
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public applyPendingUpdatesToPosition(I)I
    .locals 8

    .prologue
    .line 580
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v6

    .line 581
    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_4

    .line 582
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-object v4, v6

    .line 583
    move-object v6, v4

    iget v6, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    sparse-switch v6, :sswitch_data_0

    .line 581
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 585
    :sswitch_0
    move-object v6, v4

    iget v6, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v7, v1

    if-gt v6, v7, :cond_0

    .line 586
    move v6, v1

    move-object v7, v4

    iget v7, v7, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v7

    move v1, v6

    goto :goto_1

    .line 590
    :sswitch_1
    move-object v6, v4

    iget v6, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v7, v1

    if-gt v6, v7, :cond_0

    .line 591
    move-object v6, v4

    iget v6, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v7, v4

    iget v7, v7, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v7

    move v5, v6

    .line 592
    move v6, v5

    move v7, v1

    if-le v6, v7, :cond_1

    .line 593
    const/4 v6, -0x1

    move v0, v6

    .line 612
    :goto_2
    return v0

    .line 595
    :cond_1
    move v6, v1

    move-object v7, v4

    iget v7, v7, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v6, v7

    move v1, v6

    .line 596
    goto :goto_1

    .line 599
    :sswitch_2
    move-object v6, v4

    iget v6, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v7, v1

    if-ne v6, v7, :cond_2

    .line 600
    move-object v6, v4

    iget v6, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move v1, v6

    goto :goto_1

    .line 602
    :cond_2
    move-object v6, v4

    iget v6, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v7, v1

    if-ge v6, v7, :cond_3

    .line 603
    add-int/lit8 v1, v1, -0x1

    .line 605
    :cond_3
    move-object v6, v4

    iget v6, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move v7, v1

    if-gt v6, v7, :cond_0

    .line 606
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 612
    :cond_4
    move v6, v1

    move v0, v6

    goto :goto_2

    .line 583
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method consumePostponedUpdates()V
    .locals 6

    .prologue
    .line 120
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    .line 121
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 122
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    invoke-interface {v3, v4}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    :cond_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 125
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 126
    return-void
.end method

.method consumeUpdatesInOnePass()V
    .locals 8

    .prologue
    .line 549
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/AdapterHelper;->consumePostponedUpdates()V

    .line 550
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    .line 551
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 552
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-object v3, v4

    .line 553
    move-object v4, v3

    iget v4, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v4, :pswitch_data_0

    .line 571
    :goto_1
    :pswitch_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 572
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 551
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 555
    :pswitch_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    move-object v5, v3

    invoke-interface {v4, v5}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 556
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    move-object v5, v3

    iget v5, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v6, v3

    iget v6, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v4, v5, v6}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    .line 557
    goto :goto_1

    .line 559
    :pswitch_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    move-object v5, v3

    invoke-interface {v4, v5}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 560
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    move-object v5, v3

    iget v5, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v6, v3

    iget v6, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v4, v5, v6}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    .line 561
    goto :goto_1

    .line 563
    :pswitch_3
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    move-object v5, v3

    invoke-interface {v4, v5}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 564
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    move-object v5, v3

    iget v5, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v6, v3

    iget v6, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v7, v3

    iget-object v7, v7, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Landroid/support/v7/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    .line 565
    goto :goto_1

    .line 567
    :pswitch_4
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    move-object v5, v3

    invoke-interface {v4, v5}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 568
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    move-object v5, v3

    iget v5, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v6, v3

    iget v6, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v4, v5, v6}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_1

    .line 575
    :cond_1
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 576
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 577
    return-void

    .line 553
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method dispatchFirstPassAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V
    .locals 8

    .prologue
    .line 316
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchFirstPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 317
    move-object v3, v1

    iget v3, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v3, :pswitch_data_0

    .line 325
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 319
    :pswitch_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    move v4, v2

    move-object v5, v1

    iget v5, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    .line 328
    :goto_0
    return-void

    .line 322
    :pswitch_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    move v4, v2

    move-object v5, v1

    iget v5, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Landroid/support/v7/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    .line 323
    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method findPositionOffset(I)I
    .locals 5

    .prologue
    .line 469
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v2

    move v0, v2

    return v0
.end method

.method findPositionOffset(II)I
    .locals 9

    .prologue
    .line 473
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 474
    move v6, v2

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_6

    .line 475
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-object v5, v6

    .line 476
    move-object v6, v5

    iget v6, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    .line 477
    move-object v6, v5

    iget v6, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v7, v1

    if-ne v6, v7, :cond_1

    .line 478
    move-object v6, v5

    iget v6, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move v1, v6

    .line 474
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 480
    :cond_1
    move-object v6, v5

    iget v6, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v7, v1

    if-ge v6, v7, :cond_2

    .line 481
    add-int/lit8 v1, v1, -0x1

    .line 483
    :cond_2
    move-object v6, v5

    iget v6, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move v7, v1

    if-gt v6, v7, :cond_0

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 487
    :cond_3
    move-object v6, v5

    iget v6, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v7, v1

    if-gt v6, v7, :cond_0

    .line 488
    move-object v6, v5

    iget v6, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 489
    move v6, v1

    move-object v7, v5

    iget v7, v7, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v8, v5

    iget v8, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_4

    .line 490
    const/4 v6, -0x1

    move v0, v6

    .line 498
    :goto_2
    return v0

    .line 492
    :cond_4
    move v6, v1

    move-object v7, v5

    iget v7, v7, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v6, v7

    move v1, v6

    goto :goto_1

    .line 493
    :cond_5
    move-object v6, v5

    iget v6, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 494
    move v6, v1

    move-object v7, v5

    iget v7, v7, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v7

    move v1, v6

    goto :goto_1

    .line 498
    :cond_6
    move v6, v1

    move v0, v6

    goto :goto_2
.end method

.method hasAnyUpdateTypes(I)Z
    .locals 4

    .prologue
    .line 465
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    move v3, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method hasPendingUpdates()Z
    .locals 2

    .prologue
    .line 461
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .locals 13

    .prologue
    .line 715
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/AdapterHelper;->mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v6}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-object v5, v6

    .line 716
    move-object v6, v5

    if-nez v6, :cond_0

    .line 717
    new-instance v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/support/v7/widget/AdapterHelper$UpdateOp;-><init>(IIILjava/lang/Object;)V

    move-object v5, v6

    .line 724
    :goto_0
    move-object v6, v5

    move-object v0, v6

    return-object v0

    .line 719
    :cond_0
    move-object v6, v5

    move v7, v1

    iput v7, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 720
    move-object v6, v5

    move v7, v2

    iput v7, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 721
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 722
    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    goto :goto_0
.end method

.method onItemRangeChanged(IILjava/lang/Object;)Z
    .locals 11

    .prologue
    .line 505
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    move-object v5, v0

    const/4 v6, 0x4

    move v7, v1

    move v8, v2

    move-object v9, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 506
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    const/4 v6, 0x4

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 507
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method onItemRangeInserted(II)Z
    .locals 10

    .prologue
    .line 514
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    move-object v4, v0

    const/4 v5, 0x1

    move v6, v1

    move v7, v2

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 515
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 516
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method onItemRangeMoved(III)Z
    .locals 11

    .prologue
    .line 532
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v1

    move v5, v2

    if-ne v4, v5, :cond_0

    .line 533
    const/4 v4, 0x0

    move v0, v4

    .line 540
    :goto_0
    return v0

    .line 535
    :cond_0
    move v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 536
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string v6, "Moving more than 1 item is not supported yet"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 538
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    move-object v5, v0

    const/16 v6, 0x8

    move v7, v1

    move v8, v2

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 539
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    const/16 v6, 0x8

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 540
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method onItemRangeRemoved(II)Z
    .locals 10

    .prologue
    .line 523
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    move-object v4, v0

    const/4 v5, 0x2

    move v6, v1

    move v7, v2

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 524
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 525
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method preProcess()V
    .locals 6

    .prologue
    .line 94
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AdapterHelper;->mOpReorderer:Landroid/support/v7/widget/OpReorderer;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/OpReorderer;->reorderOps(Ljava/util/List;)V

    .line 95
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    .line 96
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 97
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-object v3, v4

    .line 98
    move-object v4, v3

    iget v4, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v4, :pswitch_data_0

    .line 112
    :goto_1
    :pswitch_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 113
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 96
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :pswitch_1
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroid/support/v7/widget/AdapterHelper;->applyAdd(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 101
    goto :goto_1

    .line 103
    :pswitch_2
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroid/support/v7/widget/AdapterHelper;->applyRemove(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 104
    goto :goto_1

    .line 106
    :pswitch_3
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroid/support/v7/widget/AdapterHelper;->applyUpdate(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 107
    goto :goto_1

    .line 109
    :pswitch_4
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroid/support/v7/widget/AdapterHelper;->applyMove(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 116
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 117
    return-void

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 4

    .prologue
    .line 729
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/AdapterHelper;->mDisableRecycler:Z

    if-nez v2, :cond_0

    .line 730
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 731
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AdapterHelper;->mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v2

    .line 733
    :cond_0
    return-void
.end method

.method recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 736
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v2, v4

    .line 737
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 738
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 737
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 740
    :cond_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 741
    return-void
.end method

.method reset()V
    .locals 3

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 89
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 90
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 91
    return-void
.end method
