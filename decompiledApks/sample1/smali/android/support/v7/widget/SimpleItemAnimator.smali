.class public abstract Landroid/support/v7/widget/SimpleItemAnimator;
.super Landroid/support/v7/widget/RecyclerView$ItemAnimator;
.source "SimpleItemAnimator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimpleItemAnimator"


# instance fields
.field mSupportsChangeAnimations:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;-><init>()V

    .line 28
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return-void
.end method


# virtual methods
.method public abstract animateAdd(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
.end method

.method public animateAppearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 10
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    move-object v5, v3

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v4, v5, :cond_0

    move-object v4, v2

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v5, v3

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v4, v5, :cond_1

    .line 99
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    iget v6, v6, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    move-object v7, v2

    iget v7, v7, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v8, v3

    iget v8, v8, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    move-object v9, v3

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    invoke-virtual/range {v4 .. v9}, Landroid/support/v7/widget/SimpleItemAnimator;->animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v4

    move v0, v4

    .line 105
    :goto_0
    return v0

    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/SimpleItemAnimator;->animateAdd(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public abstract animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 16
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 130
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v9, v3

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    move v5, v9

    .line 131
    move-object v9, v3

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v6, v9

    .line 133
    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 134
    move-object v9, v3

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    move v7, v9

    .line 135
    move-object v9, v3

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v8, v9

    .line 140
    :goto_0
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move v12, v5

    move v13, v6

    move v14, v7

    move v15, v8

    invoke-virtual/range {v9 .. v15}, Landroid/support/v7/widget/SimpleItemAnimator;->animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v9

    move v0, v9

    return v0

    .line 137
    :cond_0
    move-object v9, v4

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    move v7, v9

    .line 138
    move-object v9, v4

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v8, v9

    goto :goto_0
.end method

.method public animateDisappearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 15
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 69
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v9, v2

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    move v4, v9

    .line 70
    move-object v9, v2

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v5, v9

    .line 71
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v6, v9

    .line 72
    move-object v9, v3

    if-nez v9, :cond_1

    move-object v9, v6

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    :goto_0
    move v7, v9

    .line 73
    move-object v9, v3

    if-nez v9, :cond_2

    move-object v9, v6

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    :goto_1
    move v8, v9

    .line 74
    move-object v9, v1

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v9

    if-nez v9, :cond_3

    move v9, v4

    move v10, v7

    if-ne v9, v10, :cond_0

    move v9, v5

    move v10, v8

    if-eq v9, v10, :cond_3

    .line 75
    :cond_0
    move-object v9, v6

    move v10, v7

    move v11, v8

    move v12, v7

    move-object v13, v6

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    move v13, v8

    move-object v14, v6

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 81
    move-object v9, v0

    move-object v10, v1

    move v11, v4

    move v12, v5

    move v13, v7

    move v14, v8

    invoke-virtual/range {v9 .. v14}, Landroid/support/v7/widget/SimpleItemAnimator;->animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v9

    move v0, v9

    .line 86
    :goto_2
    return v0

    .line 72
    :cond_1
    move-object v9, v3

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    goto :goto_0

    .line 73
    :cond_2
    move-object v9, v3

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    goto :goto_1

    .line 86
    :cond_3
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/SimpleItemAnimator;->animateRemove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v9

    move v0, v9

    goto :goto_2
.end method

.method public abstract animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public animatePersistence(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 10
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v2

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    move-object v5, v3

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v4, v5, :cond_0

    move-object v4, v2

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v5, v3

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v4, v5, :cond_1

    .line 117
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    iget v6, v6, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    move-object v7, v2

    iget v7, v7, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v8, v3

    iget v8, v8, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    move-object v9, v3

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    invoke-virtual/range {v4 .. v9}, Landroid/support/v7/widget/SimpleItemAnimator;->animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v4

    move v0, v4

    .line 121
    :goto_0
    return v0

    .line 120
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 121
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public abstract animateRemove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
.end method

.method public canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 275
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SimpleItemAnimator;->onAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 276
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SimpleItemAnimator;->dispatchAnimationFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 277
    return-void
.end method

.method public final dispatchAddStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 318
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SimpleItemAnimator;->onAddStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 319
    return-void
.end method

.method public final dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 6

    .prologue
    .line 290
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/SimpleItemAnimator;->onChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 291
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SimpleItemAnimator;->dispatchAnimationFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 292
    return-void
.end method

.method public final dispatchChangeStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 6

    .prologue
    .line 331
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/SimpleItemAnimator;->onChangeStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 332
    return-void
.end method

.method public final dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 265
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SimpleItemAnimator;->onMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 266
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SimpleItemAnimator;->dispatchAnimationFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 267
    return-void
.end method

.method public final dispatchMoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 309
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SimpleItemAnimator;->onMoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 310
    return-void
.end method

.method public final dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 251
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SimpleItemAnimator;->onRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 252
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SimpleItemAnimator;->dispatchAnimationFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 253
    return-void
.end method

.method public final dispatchRemoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 300
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SimpleItemAnimator;->onRemoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 301
    return-void
.end method

.method public getSupportsChangeAnimations()Z
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    move v0, v1

    return v0
.end method

.method public onAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 378
    return-void
.end method

.method public onAddStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 367
    return-void
.end method

.method public onChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    .prologue
    .line 428
    return-void
.end method

.method public onChangeStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    .prologue
    .line 415
    return-void
.end method

.method public onMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 401
    return-void
.end method

.method public onMoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method public onRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method public onRemoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method public setSupportsChangeAnimations(Z)V
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    .line 59
    return-void
.end method
