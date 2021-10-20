.class public abstract Landroid/support/v7/widget/RecyclerView$LayoutManager;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;
    }
.end annotation


# instance fields
.field mChildHelper:Landroid/support/v7/widget/ChildHelper;

.field private mIsAttachedToWindow:Z

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRequestedSimpleAnimations:Z

.field mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 5719
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 5726
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 5728
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 7859
    return-void
.end method

.method static synthetic access$2400(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Z
    .locals 2

    .prologue
    .line 5719
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$2402(Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)Z
    .locals 7

    .prologue
    .line 5719
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$5800(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V
    .locals 4

    .prologue
    .line 5719
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSmoothScrollerStopped(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method private addViewInt(Landroid/view/View;IZ)V
    .locals 13

    .prologue
    .line 6216
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v7, v1

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    move-object v4, v7

    .line 6217
    move v7, v3

    if-nez v7, :cond_0

    move-object v7, v4

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 6219
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ViewInfoStore;->addToDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6228
    :goto_0
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v5, v7

    .line 6229
    move-object v7, v4

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v4

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 6230
    :cond_1
    move-object v7, v4

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 6231
    move-object v7, v4

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->unScrap()V

    .line 6235
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v8, v1

    move v9, v2

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/support/v7/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 6260
    :cond_2
    :goto_2
    move-object v7, v5

    iget-boolean v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    if-eqz v7, :cond_3

    .line 6264
    move-object v7, v4

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    .line 6265
    move-object v7, v5

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 6267
    :cond_3
    return-void

    .line 6226
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ViewInfoStore;->removeFromDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 6233
    :cond_5
    move-object v7, v4

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_1

    .line 6239
    :cond_6
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v7, v8, :cond_a

    .line 6241
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v7

    move v6, v7

    .line 6242
    move v7, v2

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    .line 6243
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v7

    move v2, v7

    .line 6245
    :cond_7
    move v7, v6

    const/4 v8, -0x1

    if-ne v7, v8, :cond_8

    .line 6246
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v11, v1

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 6250
    :cond_8
    move v7, v6

    move v8, v2

    if-eq v7, v8, :cond_9

    .line 6251
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v7

    move v8, v6

    move v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->moveView(II)V

    .line 6253
    :cond_9
    goto :goto_2

    .line 6254
    :cond_a
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v8, v1

    move v9, v2

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v7/widget/ChildHelper;->addView(Landroid/view/View;IZ)V

    .line 6255
    move-object v7, v5

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 6256
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6257
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->onChildAttachedToWindow(Landroid/view/View;)V

    goto/16 :goto_2
.end method

.method private detachViewInternal(ILandroid/view/View;)V
    .locals 5

    .prologue
    .line 6413
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ChildHelper;->detachViewFromParent(I)V

    .line 6414
    return-void
.end method

.method public static getChildMeasureSpec(IIIZ)I
    .locals 10

    .prologue
    .line 6890
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    const/4 v7, 0x0

    move v8, v0

    move v9, v1

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v4, v7

    .line 6891
    const/4 v7, 0x0

    move v5, v7

    .line 6892
    const/4 v7, 0x0

    move v6, v7

    .line 6894
    move v7, v3

    if-eqz v7, :cond_2

    .line 6895
    move v7, v2

    if-ltz v7, :cond_1

    .line 6896
    move v7, v2

    move v5, v7

    .line 6897
    const/high16 v7, 0x40000000    # 2.0f

    move v6, v7

    .line 6916
    :cond_0
    :goto_0
    move v7, v5

    move v8, v6

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move v0, v7

    return v0

    .line 6901
    :cond_1
    const/4 v7, 0x0

    move v5, v7

    .line 6902
    const/4 v7, 0x0

    move v6, v7

    goto :goto_0

    .line 6905
    :cond_2
    move v7, v2

    if-ltz v7, :cond_3

    .line 6906
    move v7, v2

    move v5, v7

    .line 6907
    const/high16 v7, 0x40000000    # 2.0f

    move v6, v7

    goto :goto_0

    .line 6908
    :cond_3
    move v7, v2

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 6909
    move v7, v4

    move v5, v7

    .line 6910
    const/high16 v7, 0x40000000    # 2.0f

    move v6, v7

    goto :goto_0

    .line 6911
    :cond_4
    move v7, v2

    const/4 v8, -0x2

    if-ne v7, v8, :cond_0

    .line 6912
    move v7, v4

    move v5, v7

    .line 6913
    const/high16 v7, -0x80000000

    move v6, v7

    goto :goto_0
.end method

.method public static getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;
    .locals 12

    .prologue
    .line 7845
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    new-instance v6, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;-><init>()V

    move-object v4, v6

    .line 7846
    move-object v6, v0

    move-object v7, v1

    sget-object v8, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    move v9, v2

    move v10, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v5, v6

    .line 7848
    move-object v6, v4

    move-object v7, v5

    sget v8, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_android_orientation:I

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    .line 7849
    move-object v6, v4

    move-object v7, v5

    sget v8, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_spanCount:I

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    .line 7850
    move-object v6, v4

    move-object v7, v5

    sget v8, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_reverseLayout:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    .line 7851
    move-object v6, v4

    move-object v7, v5

    sget v8, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_stackFromEnd:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    .line 7852
    move-object v6, v5

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 7853
    move-object v6, v4

    move-object v0, v6

    return-object v0
.end method

.method private onSmoothScrollerStopped(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V
    .locals 4

    .prologue
    .line 7523
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 7524
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 7526
    :cond_0
    return-void
.end method

.method private scrapOrRecycleView(Landroid/support/v7/widget/RecyclerView$Recycler;ILandroid/view/View;)V
    .locals 7

    .prologue
    .line 6763
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v3

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    move-object v4, v5

    .line 6764
    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6778
    :goto_0
    return-void

    .line 6770
    :cond_0
    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v5

    if-nez v5, :cond_1

    .line 6772
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 6773
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6778
    :goto_1
    goto :goto_0

    .line 6775
    :cond_1
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 6776
    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    goto :goto_1
.end method


# virtual methods
.method public addDisappearingView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 6171
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 6172
    return-void
.end method

.method public addDisappearingView(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 6189
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 6190
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 6200
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 6201
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 6212
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 6213
    return-void
.end method

.method public assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 5758
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 5759
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->assertInLayoutOrScroll(Ljava/lang/String;)V

    .line 5761
    :cond_0
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 5771
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 5772
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5774
    :cond_0
    return-void
.end method

.method public attachView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 6458
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 6459
    return-void
.end method

.method public attachView(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 6447
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$LayoutParams;)V

    .line 6448
    return-void
.end method

.method public attachView(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$LayoutParams;)V
    .locals 10

    .prologue
    .line 6426
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v1

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    move-object v4, v5

    .line 6427
    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6428
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ViewInfoStore;->addToDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6432
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v7/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 6436
    return-void

    .line 6430
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ViewInfoStore;->removeFromDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 9

    .prologue
    .line 7046
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v4, :cond_0

    .line 7047
    move-object v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 7052
    :goto_0
    return-void

    .line 7050
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    move-object v3, v4

    .line 7051
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7052
    goto :goto_0
.end method

.method public canScrollHorizontally()Z
    .locals 2

    .prologue
    .line 6072
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    .prologue
    .line 6082
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 3

    .prologue
    .line 5987
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3

    .prologue
    .line 7377
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3

    .prologue
    .line 7392
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3

    .prologue
    .line 7407
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3

    .prologue
    .line 7422
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3

    .prologue
    .line 7437
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3

    .prologue
    .line 7452
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 9

    .prologue
    .line 6755
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    move v2, v5

    .line 6756
    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    :goto_0
    move v5, v3

    if-ltz v5, :cond_0

    .line 6757
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 6758
    move-object v5, v0

    move-object v6, v1

    move v7, v3

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Landroid/support/v7/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 6756
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 6760
    :cond_0
    return-void
.end method

.method public detachAndScrapView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 8

    .prologue
    .line 6497
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v4

    move v3, v4

    .line 6498
    move-object v4, v0

    move-object v5, v2

    move v6, v3

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Landroid/support/v7/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 6499
    return-void
.end method

.method public detachAndScrapViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 8

    .prologue
    .line 6511
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 6512
    move-object v4, v0

    move-object v5, v2

    move v6, v1

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Landroid/support/v7/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 6513
    return-void
.end method

.method public detachView(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 6384
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v3

    move v2, v3

    .line 6385
    move v3, v2

    if-ltz v3, :cond_0

    .line 6386
    move-object v3, v0

    move v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 6388
    :cond_0
    return-void
.end method

.method public detachViewAt(I)V
    .locals 6

    .prologue
    .line 6406
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 6407
    return-void
.end method

.method dispatchAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V
    .locals 4

    .prologue
    .line 5801
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 5802
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 5803
    return-void
.end method

.method dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 6

    .prologue
    .line 5806
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 5807
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 5808
    return-void
.end method

.method public endAnimation(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 6152
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_0

    .line 6153
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6155
    :cond_0
    return-void
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 8

    .prologue
    .line 6353
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v6

    move v2, v6

    .line 6354
    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_3

    .line 6355
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 6356
    move-object v6, v4

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    move-object v5, v6

    .line 6357
    move-object v6, v5

    if-nez v6, :cond_1

    .line 6354
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6360
    :cond_1
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    move v7, v1

    if-ne v6, v7, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v6

    if-nez v6, :cond_0

    .line 6362
    :cond_2
    move-object v6, v4

    move-object v0, v6

    .line 6365
    :goto_1
    return-object v0

    :cond_3
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method public abstract generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 8

    .prologue
    .line 6028
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v3

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 6

    .prologue
    .line 6004
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v2, :cond_0

    .line 6005
    new-instance v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    move-object v0, v2

    .line 6009
    :goto_0
    return-object v0

    .line 6006
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 6007
    new-instance v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object v0, v2

    goto :goto_0

    .line 6009
    :cond_1
    new-instance v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public getBaseline()I
    .locals 2

    .prologue
    .line 6315
    move-object v0, p0

    const/4 v1, -0x1

    move v0, v1

    return v0
.end method

.method public getBottomDecorationHeight(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 7081
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move v0, v2

    return v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 6554
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 2

    .prologue
    .line 6545
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getClipToPadding()Z
    .locals 2

    .prologue
    .line 5901
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$5200(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 7740
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    if-nez v3, :cond_1

    .line 7741
    :cond_0
    const/4 v3, 0x1

    move v0, v3

    .line 7743
    :goto_0
    return v0

    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 7025
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    move v0, v2

    return v0
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 6989
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    move v0, v2

    return v0
.end method

.method public getDecoratedMeasuredHeight(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 6943
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v2, v3

    .line 6944
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public getDecoratedMeasuredWidth(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 6929
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v2, v3

    .line 6930
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 7013
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    move v0, v2

    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 7001
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    move v0, v2

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 4

    .prologue
    .line 6655
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_0

    .line 6656
    const/4 v2, 0x0

    move-object v0, v2

    .line 6662
    :goto_0
    return-object v0

    .line 6658
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 6659
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6660
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 6662
    :cond_2
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 6572
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 3

    .prologue
    .line 6676
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    :goto_0
    move-object v1, v2

    .line 6677
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    :goto_1
    move v0, v2

    return v0

    .line 6676
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 6677
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getItemViewType(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 6336
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getLayoutDirection()I
    .locals 2

    .prologue
    .line 6142
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getLeftDecorationWidth(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 7096
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move v0, v2

    return v0
.end method

.method public getMinimumHeight()I
    .locals 2

    .prologue
    .line 7495
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMinimumWidth()I
    .locals 2

    .prologue
    .line 7488
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getPaddingBottom()I
    .locals 2

    .prologue
    .line 6608
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPaddingEnd()I
    .locals 2

    .prologue
    .line 6626
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPaddingLeft()I
    .locals 2

    .prologue
    .line 6581
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPaddingRight()I
    .locals 2

    .prologue
    .line 6599
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPaddingStart()I
    .locals 2

    .prologue
    .line 6617
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPaddingTop()I
    .locals 2

    .prologue
    .line 6590
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPosition(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 6326
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getRightDecorationWidth(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 7111
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move v0, v2

    return v0
.end method

.method public getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 7721
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    if-nez v3, :cond_1

    .line 7722
    :cond_0
    const/4 v3, 0x1

    move v0, v3

    .line 7724
    :goto_0
    return v0

    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public getSelectionModeForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 7705
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public getTopDecorationHeight(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 7066
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move v0, v2

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 6563
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasFocus()Z
    .locals 2

    .prologue
    .line 6646
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public ignoreView(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 6721
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 6724
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "View should be fully attached to be ignored"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6726
    :cond_1
    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 6727
    move-object v3, v2

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6728
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ViewInfoStore;->removeViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6729
    return-void
.end method

.method public isAttachedToWindow()Z
    .locals 2

    .prologue
    .line 5818
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    move v0, v1

    return v0
.end method

.method public isFocused()Z
    .locals 2

    .prologue
    .line 6636
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLayoutHierarchical(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 4

    .prologue
    .line 7757
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public isSmoothScrolling()Z
    .locals 2

    .prologue
    .line 6129
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .locals 13

    .prologue
    .line 6975
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v6, v7

    .line 6976
    move-object v7, v1

    move v8, v2

    move-object v9, v6

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    move v9, v3

    move-object v10, v6

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    move v10, v4

    move-object v11, v6

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    move v11, v5

    move-object v12, v6

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 6978
    return-void
.end method

.method public measureChild(Landroid/view/View;II)V
    .locals 12

    .prologue
    .line 6832
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v4, v8

    .line 6834
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    move-object v5, v8

    .line 6835
    move v8, v2

    move-object v9, v5

    iget v9, v9, Landroid/graphics/Rect;->left:I

    move-object v10, v5

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    move v2, v8

    .line 6836
    move v8, v3

    move-object v9, v5

    iget v9, v9, Landroid/graphics/Rect;->top:I

    move-object v10, v5

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    move v3, v8

    .line 6838
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    move v10, v2

    add-int/2addr v9, v10

    move-object v10, v4

    iget v10, v10, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v11

    invoke-static {v8, v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result v8

    move v6, v8

    .line 6841
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    move v10, v3

    add-int/2addr v9, v10

    move-object v10, v4

    iget v10, v10, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v11

    invoke-static {v8, v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result v8

    move v7, v8

    .line 6844
    move-object v8, v1

    move v9, v6

    move v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    .line 6845
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 12

    .prologue
    .line 6860
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v4, v8

    .line 6862
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    move-object v5, v8

    .line 6863
    move v8, v2

    move-object v9, v5

    iget v9, v9, Landroid/graphics/Rect;->left:I

    move-object v10, v5

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    move v2, v8

    .line 6864
    move v8, v3

    move-object v9, v5

    iget v9, v9, Landroid/graphics/Rect;->top:I

    move-object v10, v5

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    move v3, v8

    .line 6866
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    move-object v10, v4

    iget v10, v10, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    move-object v10, v4

    iget v10, v10, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v9, v10

    move v10, v2

    add-int/2addr v9, v10

    move-object v10, v4

    iget v10, v10, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v11

    invoke-static {v8, v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result v8

    move v6, v8

    .line 6870
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    move-object v10, v4

    iget v10, v10, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v9, v10

    move-object v10, v4

    iget v10, v10, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    move v10, v3

    add-int/2addr v9, v10

    move-object v10, v4

    iget v10, v10, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v11

    invoke-static {v8, v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result v8

    move v7, v8

    .line 6874
    move-object v8, v1

    move v9, v6

    move v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    .line 6875
    return-void
.end method

.method public moveView(II)V
    .locals 9

    .prologue
    .line 6478
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 6479
    move-object v4, v3

    if-nez v4, :cond_0

    .line 6480
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot move a child from non-existing index:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6483
    :cond_0
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 6484
    move-object v4, v0

    move-object v5, v3

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 6485
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 4

    .prologue
    .line 6687
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 6688
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    .line 6690
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 4

    .prologue
    .line 6699
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 6700
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->offsetChildrenVertical(I)V

    .line 6702
    :cond_0
    return-void
.end method

.method public onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0

    .prologue
    .line 7260
    return-void
.end method

.method public onAddFocusables(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 7288
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    const/4 v5, 0x0

    move v0, v5

    return v0
.end method

.method public onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 5868
    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5877
    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 5892
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 5893
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 7134
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    const/4 v5, 0x0

    move-object v0, v5

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 8

    .prologue
    .line 7626
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v3

    invoke-static {v5}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v5

    move-object v4, v5

    .line 7628
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v5, :cond_0

    move-object v5, v4

    if-nez v5, :cond_1

    .line 7639
    :cond_0
    :goto_0
    return-void

    .line 7631
    :cond_1
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v7, -0x1

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v7, -0x1

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    .line 7636
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 7637
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    .line 7639
    :cond_3
    goto :goto_0

    .line 7631
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    .prologue
    .line 7610
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7611
    return-void
.end method

.method onInitializeAccessibilityNodeInfo(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .prologue
    .line 7559
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 7560
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 11

    .prologue
    .line 7589
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7591
    :cond_0
    move-object v5, v3

    const/16 v6, 0x2000

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 7592
    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 7594
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7596
    :cond_2
    move-object v5, v3

    const/16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 7597
    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 7599
    :cond_3
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isLayoutHierarchical(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v7

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getSelectionModeForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v5

    move-object v4, v5

    .line 7605
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 7606
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 14

    .prologue
    .line 7667
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    :goto_0
    move v5, v8

    .line 7668
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    :goto_1
    move v6, v8

    .line 7669
    move v8, v5

    const/4 v9, 0x1

    move v10, v6

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v8

    move-object v7, v8

    .line 7672
    move-object v8, v4

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 7673
    return-void

    .line 7667
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 7668
    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 9

    .prologue
    .line 7643
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 7645
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v5, v3

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7646
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 7649
    :cond_0
    return-void
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 4

    .prologue
    .line 7154
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v3, 0x0

    move-object v0, v3

    return-object v0
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 7310
    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 7298
    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 0

    .prologue
    .line 7362
    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 7320
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 7332
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 9

    .prologue
    .line 7345
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V

    .line 7346
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    .prologue
    .line 5956
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string v3, "RecyclerView"

    const-string v4, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 5957
    return-void
.end method

.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 8

    .prologue
    .line 7470
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move v6, v3

    move v7, v4

    invoke-static {v5, v6, v7}, Landroid/support/v7/widget/RecyclerView;->access$5300(Landroid/support/v7/widget/RecyclerView;II)V

    .line 7471
    return-void
.end method

.method public onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z
    .locals 9

    .prologue
    .line 7244
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    move v0, v5

    return v0
.end method

.method public onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7222
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 7514
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 7508
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 7534
    return-void
.end method

.method performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    .line 7762
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move v6, v1

    move-object v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->performAccessibilityAction(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;ILandroid/os/Bundle;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public performAccessibilityAction(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 10

    .prologue
    .line 7778
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v7, :cond_0

    .line 7779
    const/4 v7, 0x0

    move v0, v7

    .line 7804
    :goto_0
    return v0

    .line 7781
    :cond_0
    const/4 v7, 0x0

    move v5, v7

    const/4 v7, 0x0

    move v6, v7

    .line 7782
    move v7, v3

    sparse-switch v7, :sswitch_data_0

    .line 7800
    :cond_1
    :goto_1
    move v7, v5

    if-nez v7, :cond_4

    move v7, v6

    if-nez v7, :cond_4

    .line 7801
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 7784
    :sswitch_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v8, -0x1

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 7785
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    neg-int v7, v7

    move v5, v7

    .line 7787
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v8, -0x1

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7788
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    neg-int v7, v7

    move v6, v7

    goto :goto_1

    .line 7792
    :sswitch_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 7793
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 7795
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7796
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    move v6, v7

    goto :goto_1

    .line 7803
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move v8, v6

    move v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 7804
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 7782
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public performAccessibilityActionForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7

    .prologue
    .line 7830
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    const/4 v6, 0x0

    move v0, v6

    return v0
.end method

.method performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 10

    .prologue
    .line 7809
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 5832
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 5833
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 5835
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 5

    .prologue
    .line 6302
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    move v1, v3

    .line 6303
    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 6304
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ChildHelper;->removeViewAt(I)V

    .line 6303
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6306
    :cond_0
    return-void
.end method

.method public removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 7

    .prologue
    .line 7549
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 7550
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 7551
    move-object v4, v3

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 7552
    move-object v4, v0

    move v5, v2

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 7549
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 7555
    :cond_1
    return-void
.end method

.method removeAndRecycleScrapInt(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 9

    .prologue
    .line 6790
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$Recycler;->getScrapCount()I

    move-result v6

    move v2, v6

    .line 6792
    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v3, v6

    :goto_0
    move v6, v3

    if-ltz v6, :cond_3

    .line 6793
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView$Recycler;->getScrapViewAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 6794
    move-object v6, v4

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    move-object v5, v6

    .line 6795
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6792
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 6803
    :cond_0
    move-object v6, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 6804
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6805
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v7, v4

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6807
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v6, :cond_2

    .line 6808
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6810
    :cond_2
    move-object v6, v5

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 6811
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    goto :goto_1

    .line 6813
    :cond_3
    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$Recycler;->clearScrap()V

    .line 6814
    move v6, v2

    if-lez v6, :cond_4

    .line 6815
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 6817
    :cond_4
    return-void
.end method

.method public removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 5

    .prologue
    .line 6522
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    .line 6523
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 6524
    return-void
.end method

.method public removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 6

    .prologue
    .line 6533
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 6534
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 6535
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 6536
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 4

    .prologue
    .line 5852
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 5853
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    move v0, v2

    .line 5855
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public removeDetachedView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 6468
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6469
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 6278
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ChildHelper;->removeView(Landroid/view/View;)V

    .line 6279
    return-void
.end method

.method public removeViewAt(I)V
    .locals 5

    .prologue
    .line 6290
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 6291
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 6292
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ChildHelper;->removeViewAt(I)V

    .line 6294
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 24

    .prologue
    .line 7174
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v21

    move/from16 v7, v21

    .line 7175
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v21

    move/from16 v8, v21

    .line 7176
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v21

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v9, v21

    .line 7177
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v21

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v10, v21

    .line 7178
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v21

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v11, v21

    .line 7179
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v21

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v12, v21

    .line 7180
    move/from16 v21, v11

    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v13, v21

    .line 7181
    move/from16 v21, v12

    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v14, v21

    .line 7183
    const/16 v21, 0x0

    move/from16 v22, v11

    move/from16 v23, v7

    sub-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v15, v21

    .line 7184
    const/16 v21, 0x0

    move/from16 v22, v12

    move/from16 v23, v8

    sub-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v16, v21

    .line 7185
    const/16 v21, 0x0

    move/from16 v22, v13

    move/from16 v23, v9

    sub-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v17, v21

    .line 7186
    const/16 v21, 0x0

    move/from16 v22, v14

    move/from16 v23, v10

    sub-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v18, v21

    .line 7192
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 7193
    move/from16 v21, v17

    if-eqz v21, :cond_1

    move/from16 v21, v17

    :goto_0
    move/from16 v19, v21

    .line 7202
    :goto_1
    move/from16 v21, v16

    if-eqz v21, :cond_4

    move/from16 v21, v16

    :goto_2
    move/from16 v20, v21

    .line 7205
    move/from16 v21, v19

    if-nez v21, :cond_0

    move/from16 v21, v20

    if-eqz v21, :cond_6

    .line 7206
    :cond_0
    move/from16 v21, v6

    if-eqz v21, :cond_5

    .line 7207
    move-object/from16 v21, v3

    move/from16 v22, v19

    move/from16 v23, v20

    invoke-virtual/range {v21 .. v23}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 7211
    :goto_3
    const/16 v21, 0x1

    move/from16 v2, v21

    .line 7213
    :goto_4
    return v2

    .line 7193
    :cond_1
    move/from16 v21, v15

    move/from16 v22, v13

    move/from16 v23, v9

    sub-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    goto :goto_0

    .line 7196
    :cond_2
    move/from16 v21, v15

    if-eqz v21, :cond_3

    move/from16 v21, v15

    :goto_5
    move/from16 v19, v21

    goto :goto_1

    :cond_3
    move/from16 v21, v11

    move/from16 v22, v7

    sub-int v21, v21, v22

    move/from16 v22, v17

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    goto :goto_5

    .line 7202
    :cond_4
    move/from16 v21, v12

    move/from16 v22, v8

    sub-int v21, v21, v22

    move/from16 v22, v18

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    goto :goto_2

    .line 7209
    :cond_5
    move-object/from16 v21, v3

    move/from16 v22, v19

    move/from16 v23, v20

    invoke-virtual/range {v21 .. v23}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_3

    .line 7213
    :cond_6
    const/16 v21, 0x0

    move/from16 v2, v21

    goto :goto_4
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 5745
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 5746
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 5748
    :cond_0
    return-void
.end method

.method public requestSimpleAnimationsInNextLayout()V
    .locals 3

    .prologue
    .line 7686
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 7687
    return-void
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 5

    .prologue
    .line 6045
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    const/4 v4, 0x0

    move v0, v4

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 0

    .prologue
    .line 6095
    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 5

    .prologue
    .line 6062
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    const/4 v4, 0x0

    move v0, v4

    return v0
.end method

.method public setMeasuredDimension(II)V
    .locals 6

    .prologue
    .line 7481
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->access$5400(Landroid/support/v7/widget/RecyclerView;II)V

    .line 7482
    return-void
.end method

.method setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 4

    .prologue
    .line 5731
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 5732
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 5733
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    .line 5739
    :goto_0
    return-void

    .line 5735
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 5736
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    goto :goto_0
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 6

    .prologue
    .line 6108
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    const-string v4, "RecyclerView"

    const-string v5, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 6109
    return-void
.end method

.method public startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V
    .locals 5

    .prologue
    .line 6117
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6119
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 6121
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 6122
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->start(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 6123
    return-void
.end method

.method public stopIgnoringView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 6741
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 6742
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->stopIgnoring()V

    .line 6743
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 6744
    move-object v3, v2

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6745
    return-void
.end method

.method stopSmoothScroller()V
    .locals 2

    .prologue
    .line 7517
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz v1, :cond_0

    .line 7518
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 7520
    :cond_0
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .prologue
    .line 5797
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method
