.class public Landroid/support/v7/widget/LinearLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "LinearLayoutManager.java"

# interfaces
.implements Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;,
        Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;,
        Landroid/support/v7/widget/LinearLayoutManager$SavedState;,
        Landroid/support/v7/widget/LinearLayoutManager$LayoutState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final TAG:Ljava/lang/String; = "LinearLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field final mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

.field private mLastStackFromEnd:Z

.field private mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

.field mOrientation:I

.field mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

.field mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 145
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 9

    .prologue
    .line 154
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 95
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 102
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 109
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 115
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 121
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 127
    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 131
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 137
    move-object v4, v0

    new-instance v5, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;-><init>(Landroid/support/v7/widget/LinearLayoutManager;)V

    iput-object v5, v4, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    .line 155
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 156
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 95
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 102
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 109
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 115
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 121
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 127
    move-object v6, v0

    const/high16 v7, -0x80000000

    iput v7, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 131
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 137
    move-object v6, v0

    new-instance v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;-><init>(Landroid/support/v7/widget/LinearLayoutManager;)V

    iput-object v7, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    .line 169
    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v6, v7, v8, v9}, Landroid/support/v7/widget/LinearLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v6

    move-object v5, v6

    .line 170
    move-object v6, v0

    move-object v7, v5

    iget v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 171
    move-object v6, v0

    move-object v7, v5

    iget-boolean v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 172
    move-object v6, v0

    move-object v7, v5

    iget-boolean v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 173
    return-void
.end method

.method private computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1063
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1064
    const/4 v2, 0x0

    move v0, v2

    .line 1067
    :goto_0
    return v0

    .line 1066
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1067
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    invoke-static/range {v2 .. v7}, Landroid/support/v7/widget/ScrollbarHelper;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)I

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 9

    .prologue
    .line 1052
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1053
    const/4 v2, 0x0

    move v0, v2

    .line 1056
    :goto_0
    return v0

    .line 1055
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1056
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    invoke-static/range {v2 .. v8}, Landroid/support/v7/widget/ScrollbarHelper;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;ZZ)I

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1074
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1075
    const/4 v2, 0x0

    move v0, v2

    .line 1078
    :goto_0
    return v0

    .line 1077
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1078
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    invoke-static/range {v2 .. v7}, Landroid/support/v7/widget/ScrollbarHelper;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)I

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private convertFocusDirectionToLayoutDirection(I)I
    .locals 4

    .prologue
    .line 1453
    move-object v0, p0

    move v1, p1

    move v2, v1

    sparse-switch v2, :sswitch_data_0

    .line 1474
    const/high16 v2, -0x80000000

    move v0, v2

    :goto_0
    return v0

    .line 1455
    :sswitch_0
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 1457
    :sswitch_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 1459
    :sswitch_2
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, -0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_0
    const/high16 v2, -0x80000000

    goto :goto_1

    .line 1462
    :sswitch_3
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_0

    :cond_1
    const/high16 v2, -0x80000000

    goto :goto_2

    .line 1465
    :sswitch_4
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_2

    const/4 v2, -0x1

    :goto_3
    move v0, v2

    goto :goto_0

    :cond_2
    const/high16 v2, -0x80000000

    goto :goto_3

    .line 1468
    :sswitch_5
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_4
    move v0, v2

    goto :goto_0

    :cond_3
    const/high16 v2, -0x80000000

    goto :goto_4

    .line 1453
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private findFirstReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 9

    .prologue
    .line 1570
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Landroid/support/v7/widget/LinearLayoutManager;->findReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .locals 8

    .prologue
    .line 1526
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_0

    .line 1527
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    move v6, v1

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    .line 1530
    :goto_0
    return-object v0

    :cond_0
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, -0x1

    move v6, v1

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .locals 8

    .prologue
    .line 1508
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_0

    .line 1509
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, -0x1

    move v6, v1

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    .line 1512
    :goto_0
    return-object v0

    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    move v6, v1

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private findLastReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 9

    .prologue
    .line 1574
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    const/4 v7, -0x1

    move-object v8, v2

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Landroid/support/v7/widget/LinearLayoutManager;->findReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private findReferenceChildClosestToEnd(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1548
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;->findLastReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method private findReferenceChildClosestToStart(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1565
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;->findLastReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method private fixLayoutEndGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 11

    .prologue
    .line 848
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move v8, v1

    sub-int/2addr v7, v8

    move v5, v7

    .line 849
    const/4 v7, 0x0

    move v6, v7

    .line 850
    move v7, v5

    if-lez v7, :cond_0

    .line 851
    move-object v7, v0

    move v8, v5

    neg-int v8, v8

    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v7

    neg-int v7, v7

    move v6, v7

    .line 856
    move v7, v1

    move v8, v6

    add-int/2addr v7, v8

    move v1, v7

    .line 857
    move v7, v4

    if-eqz v7, :cond_1

    .line 859
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move v8, v1

    sub-int/2addr v7, v8

    move v5, v7

    .line 860
    move v7, v5

    if-lez v7, :cond_1

    .line 861
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 862
    move v7, v5

    move v8, v6

    add-int/2addr v7, v8

    move v0, v7

    .line 865
    :goto_0
    return v0

    .line 853
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 865
    :cond_1
    move v7, v6

    move v0, v7

    goto :goto_0
.end method

.method private fixLayoutStartGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 11

    .prologue
    .line 873
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 874
    const/4 v7, 0x0

    move v6, v7

    .line 875
    move v7, v5

    if-lez v7, :cond_0

    .line 877
    move-object v7, v0

    move v8, v5

    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v7

    neg-int v7, v7

    move v6, v7

    .line 881
    move v7, v1

    move v8, v6

    add-int/2addr v7, v8

    move v1, v7

    .line 882
    move v7, v4

    if-eqz v7, :cond_1

    .line 884
    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 885
    move v7, v5

    if-lez v7, :cond_1

    .line 886
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move v8, v5

    neg-int v8, v8

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 887
    move v7, v6

    move v8, v5

    sub-int/2addr v7, v8

    move v0, v7

    .line 890
    :goto_0
    return v0

    .line 879
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 890
    :cond_1
    move v7, v6

    move v0, v7

    goto :goto_0
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 4

    .prologue
    .line 1496
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    return-object v0

    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 4

    .prologue
    .line 1486
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private layoutForPredictiveAnimations(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 20

    .prologue
    .line 642
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v15, v3

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object v15, v1

    invoke-virtual {v15}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v15

    if-eqz v15, :cond_0

    move-object v15, v3

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v15

    if-nez v15, :cond_0

    move-object v15, v1

    invoke-virtual {v15}, Landroid/support/v7/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v15

    if-nez v15, :cond_1

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    const/4 v15, 0x0

    move v6, v15

    const/4 v15, 0x0

    move v7, v15

    .line 648
    move-object v15, v2

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v15

    move-object v8, v15

    .line 649
    move-object v15, v8

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    move v9, v15

    .line 650
    move-object v15, v1

    move-object/from16 v16, v1

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v15

    move v10, v15

    .line 651
    const/4 v15, 0x0

    move v11, v15

    :goto_1
    move v15, v11

    move/from16 v16, v9

    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 652
    move-object v15, v8

    move/from16 v16, v11

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v12, v15

    .line 653
    move-object v15, v12

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 651
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 656
    :cond_2
    move-object v15, v12

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v15

    move v13, v15

    .line 657
    move v15, v13

    move/from16 v16, v10

    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    const/4 v15, -0x1

    :goto_4
    move v14, v15

    .line 659
    move v15, v14

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 660
    move v15, v6

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v16

    add-int v15, v15, v16

    move v6, v15

    goto :goto_2

    .line 657
    :cond_3
    const/4 v15, 0x0

    goto :goto_3

    :cond_4
    const/4 v15, 0x1

    goto :goto_4

    .line 662
    :cond_5
    move v15, v7

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v16

    add-int v15, v15, v16

    move v7, v15

    goto :goto_2

    .line 670
    :cond_6
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 671
    move v15, v6

    if-lez v15, :cond_7

    .line 672
    move-object v15, v1

    invoke-direct {v15}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v15

    move-object v11, v15

    .line 673
    move-object v15, v1

    move-object/from16 v16, v1

    move-object/from16 v17, v11

    invoke-virtual/range {v16 .. v17}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v16

    move/from16 v17, v4

    invoke-direct/range {v15 .. v17}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 674
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move/from16 v16, v6

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 675
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 676
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v15}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 677
    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    const/16 v19, 0x0

    invoke-virtual/range {v15 .. v19}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v15

    .line 680
    :cond_7
    move v15, v7

    if-lez v15, :cond_8

    .line 681
    move-object v15, v1

    invoke-direct {v15}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v15

    move-object v11, v15

    .line 682
    move-object v15, v1

    move-object/from16 v16, v1

    move-object/from16 v17, v11

    invoke-virtual/range {v16 .. v17}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v16

    move/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 683
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move/from16 v16, v7

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 684
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 685
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v15}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 686
    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    const/16 v19, 0x0

    invoke-virtual/range {v15 .. v19}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v15

    .line 688
    :cond_8
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 689
    goto/16 :goto_0
.end method

.method private logChildren()V
    .locals 8

    .prologue
    .line 1762
    move-object v0, p0

    const-string v3, "LinearLayoutManager"

    const-string v4, "internal representation of views on the screen"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1763
    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1764
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 1765
    const-string v3, "LinearLayoutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", coord:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1763
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1768
    :cond_0
    const-string v3, "LinearLayoutManager"

    const-string v4, "=============="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1769
    return-void
.end method

.method private recycleByLayoutState(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;)V
    .locals 6

    .prologue
    .line 1297
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    iget-boolean v3, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    if-nez v3, :cond_0

    .line 1305
    :goto_0
    return-void

    .line 1300
    :cond_0
    move-object v3, v2

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 1301
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;->recycleViewsFromEnd(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    .line 1305
    :goto_1
    goto :goto_0

    .line 1303
    :cond_1
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;->recycleViewsFromStart(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    goto :goto_1
.end method

.method private recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V
    .locals 8

    .prologue
    .line 1191
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v2

    move v6, v3

    if-ne v5, v6, :cond_0

    .line 1206
    :goto_0
    return-void

    .line 1197
    :cond_0
    move v5, v3

    move v6, v2

    if-le v5, v6, :cond_2

    .line 1198
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    :goto_1
    move v5, v4

    move v6, v2

    if-lt v5, v6, :cond_1

    .line 1199
    move-object v5, v0

    move v6, v4

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1198
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1206
    :cond_1
    goto :goto_0

    .line 1202
    :cond_2
    move v5, v2

    move v4, v5

    :goto_2
    move v5, v4

    move v6, v3

    if-le v5, v6, :cond_1

    .line 1203
    move-object v5, v0

    move v6, v4

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1202
    add-int/lit8 v4, v4, -0x1

    goto :goto_2
.end method

.method private recycleViewsFromEnd(Landroid/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 11

    .prologue
    .line 1256
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    move v3, v7

    .line 1257
    move v7, v2

    if-gez v7, :cond_0

    .line 1283
    :goto_0
    return-void

    .line 1264
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v7

    move v8, v2

    sub-int/2addr v7, v8

    move v4, v7

    .line 1265
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_3

    .line 1266
    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_2

    .line 1267
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 1268
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move v8, v4

    if-ge v7, v8, :cond_1

    .line 1269
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x0

    move v10, v5

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    .line 1270
    goto :goto_0

    .line 1266
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1283
    :cond_2
    goto :goto_0

    .line 1274
    :cond_3
    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    :goto_2
    move v7, v5

    if-ltz v7, :cond_2

    .line 1275
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 1276
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move v8, v4

    if-ge v7, v8, :cond_4

    .line 1277
    move-object v7, v0

    move-object v8, v1

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v10, v5

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    .line 1278
    goto :goto_0

    .line 1274
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_2
.end method

.method private recycleViewsFromStart(Landroid/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 11

    .prologue
    .line 1217
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v7, v2

    if-gez v7, :cond_0

    .line 1244
    :goto_0
    return-void

    .line 1225
    :cond_0
    move v7, v2

    move v3, v7

    .line 1226
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    move v4, v7

    .line 1227
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_3

    .line 1228
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    :goto_1
    move v7, v5

    if-ltz v7, :cond_2

    .line 1229
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 1230
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    move v8, v3

    if-le v7, v8, :cond_1

    .line 1231
    move-object v7, v0

    move-object v8, v1

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v10, v5

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    .line 1232
    goto :goto_0

    .line 1228
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1244
    :cond_2
    goto :goto_0

    .line 1236
    :cond_3
    const/4 v7, 0x0

    move v5, v7

    :goto_2
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 1237
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 1238
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    move v8, v3

    if-le v7, v8, :cond_4

    .line 1239
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x0

    move v10, v5

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    .line 1240
    goto :goto_0

    .line 1236
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private resolveShouldLayoutReverse()V
    .locals 3

    .prologue
    .line 340
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_1

    .line 341
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v2, v1, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v1, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateAnchorFromChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z
    .locals 10

    .prologue
    .line 721
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    if-nez v7, :cond_0

    .line 722
    const/4 v7, 0x0

    move v0, v7

    .line 754
    :goto_0
    return v0

    .line 724
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 725
    move-object v7, v4

    if-eqz v7, :cond_1

    move-object v7, v3

    move-object v8, v4

    move-object v9, v2

    invoke-static {v7, v8, v9}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->access$000(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 726
    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;)V

    .line 727
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 729
    :cond_1
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eq v7, v8, :cond_2

    .line 730
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 732
    :cond_2
    move-object v7, v3

    iget-boolean v7, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v7, :cond_5

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroid/support/v7/widget/LinearLayoutManager;->findReferenceChildClosestToEnd(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v7

    :goto_1
    move-object v5, v7

    .line 735
    move-object v7, v5

    if-eqz v7, :cond_8

    .line 736
    move-object v7, v3

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    .line 739
    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v7

    if-nez v7, :cond_4

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 741
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    if-ge v7, v8, :cond_3

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    if-ge v7, v8, :cond_6

    :cond_3
    const/4 v7, 0x1

    :goto_2
    move v6, v7

    .line 746
    move v7, v6

    if-eqz v7, :cond_4

    .line 747
    move-object v7, v3

    move-object v8, v3

    iget-boolean v8, v8, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v8, :cond_7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    :goto_3
    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 752
    :cond_4
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 732
    :cond_5
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroid/support/v7/widget/LinearLayoutManager;->findReferenceChildClosestToStart(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v7

    goto :goto_1

    .line 741
    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    .line 747
    :cond_7
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    goto :goto_3

    .line 754
    :cond_8
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0
.end method

.method private updateAnchorFromPendingData(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z
    .locals 10

    .prologue
    .line 762
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 763
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .line 840
    :goto_0
    return v0

    .line 766
    :cond_1
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ltz v7, :cond_2

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 767
    :cond_2
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 768
    move-object v7, v0

    const/high16 v8, -0x80000000

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 772
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 777
    :cond_3
    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 778
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v7, :cond_5

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 781
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v8, v8, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 782
    move-object v7, v2

    iget-boolean v7, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v7, :cond_4

    .line 783
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 789
    :goto_1
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 786
    :cond_4
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_1

    .line 792
    :cond_5
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v8, -0x80000000

    if-ne v7, v8, :cond_e

    .line 793
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    move-object v3, v7

    .line 794
    move-object v7, v3

    if-eqz v7, :cond_a

    .line 795
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v7

    move v4, v7

    .line 796
    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v8

    if-le v7, v8, :cond_6

    .line 798
    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 799
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 801
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 803
    move v7, v5

    if-gez v7, :cond_7

    .line 804
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 805
    move-object v7, v2

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 806
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 808
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    move v6, v7

    .line 810
    move v7, v6

    if-gez v7, :cond_8

    .line 811
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 812
    move-object v7, v2

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 813
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 815
    :cond_8
    move-object v7, v2

    move-object v8, v2

    iget-boolean v8, v8, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v8, :cond_9

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v9}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v9

    add-int/2addr v8, v9

    :goto_2
    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 828
    :goto_3
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 815
    :cond_9
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    goto :goto_2

    .line 820
    :cond_a
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    if-lez v7, :cond_b

    .line 822
    move-object v7, v0

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v4, v7

    .line 823
    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move v9, v4

    if-ge v8, v9, :cond_c

    const/4 v8, 0x1

    :goto_4
    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-ne v8, v9, :cond_d

    const/4 v8, 0x1

    :goto_5
    iput-boolean v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 826
    :cond_b
    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    goto :goto_3

    .line 823
    :cond_c
    const/4 v8, 0x0

    goto :goto_4

    :cond_d
    const/4 v8, 0x0

    goto :goto_5

    .line 831
    :cond_e
    move-object v7, v2

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 833
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_f

    .line 834
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 840
    :goto_6
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 837
    :cond_f
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_6
.end method

.method private updateAnchorInfoForLayout(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 8

    .prologue
    .line 693
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->updateAnchorFromPendingData(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 711
    :goto_0
    return-void

    .line 700
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->updateAnchorFromChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 704
    goto :goto_0

    .line 709
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 710
    move-object v4, v3

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    :goto_1
    iput v5, v4, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 711
    goto :goto_0

    .line 710
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private updateLayoutState(IIZLandroid/support/v7/widget/RecyclerView$State;)V
    .locals 11

    .prologue
    .line 1118
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v8

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1119
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v8, v1

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 1121
    move v7, v1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 1122
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v9}, Landroid/support/v7/widget/OrientationHelper;->getEndPadding()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1124
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 1126
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_1

    const/4 v8, -0x1

    :goto_0
    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1128
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1129
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1131
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 1144
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v8, v2

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1145
    move v7, v3

    if-eqz v7, :cond_0

    .line 1146
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move v9, v5

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1148
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v8, v5

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1149
    return-void

    .line 1126
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 1135
    :cond_2
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 1136
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v9}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1137
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_2
    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1139
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1140
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1141
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    neg-int v7, v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    add-int/2addr v7, v8

    move v5, v7

    goto :goto_1

    .line 1137
    :cond_3
    const/4 v8, -0x1

    goto :goto_2
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 6

    .prologue
    .line 898
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    move v5, v2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 899
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    :goto_0
    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 901
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v4, v1

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 902
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v4, 0x1

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 903
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v4, v2

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 904
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 905
    return-void

    .line 899
    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private updateLayoutStateToFillEnd(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 5

    .prologue
    .line 894
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    move-object v4, v1

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 895
    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 6

    .prologue
    .line 912
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 913
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v4, v1

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 914
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 916
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 917
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v4, v2

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 918
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 920
    return-void

    .line 914
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private updateLayoutStateToFillStart(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 5

    .prologue
    .line 908
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    move-object v4, v1

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 909
    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1179
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v2, :cond_0

    .line 1180
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1182
    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 2

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canScrollVertically()Z
    .locals 3

    .prologue
    .line 285
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1033
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1023
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1043
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 9

    .prologue
    .line 437
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 438
    const/4 v4, 0x0

    move-object v0, v4

    .line 445
    :goto_0
    return-object v0

    .line 440
    :cond_0
    move-object v4, v0

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    move v2, v4

    .line 441
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v4, v5, :cond_2

    const/4 v4, -0x1

    :goto_2
    move v3, v4

    .line 442
    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v4, :cond_3

    .line 443
    new-instance v4, Landroid/graphics/PointF;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v3

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v4

    goto :goto_0

    .line 441
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    .line 445
    :cond_3
    new-instance v4, Landroid/graphics/PointF;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v3

    int-to-float v7, v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v4

    goto :goto_0
.end method

.method public computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1038
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1028
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1048
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method createLayoutState()Landroid/support/v7/widget/LinearLayoutManager$LayoutState;
    .locals 4

    .prologue
    .line 941
    move-object v0, p0

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method ensureLayoutState()V
    .locals 4

    .prologue
    .line 927
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    if-nez v1, :cond_0

    .line 928
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->createLayoutState()Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    .line 930
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    if-nez v1, :cond_1

    .line 931
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    invoke-static {v2, v3}, Landroid/support/v7/widget/OrientationHelper;->createOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 933
    :cond_1
    return-void
.end method

.method fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 14

    .prologue
    .line 1321
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v8, v2

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move v5, v8

    .line 1322
    move-object v8, v2

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_1

    .line 1324
    move-object v8, v2

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v8, :cond_0

    .line 1325
    move-object v8, v2

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    move-object v10, v2

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1327
    :cond_0
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->recycleByLayoutState(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;)V

    .line 1329
    :cond_1
    move-object v8, v2

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move-object v9, v2

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    add-int/2addr v8, v9

    move v6, v8

    .line 1330
    new-instance v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    move-object v7, v8

    .line 1331
    :cond_2
    move v8, v6

    if-lez v8, :cond_3

    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1332
    move-object v8, v7

    invoke-virtual {v8}, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->resetInternal()V

    .line 1333
    move-object v8, v0

    move-object v9, v1

    move-object v10, v3

    move-object v11, v2

    move-object v12, v7

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/support/v7/widget/LinearLayoutManager;->layoutChunk(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;)V

    .line 1334
    move-object v8, v7

    iget-boolean v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    if-eqz v8, :cond_4

    .line 1365
    :cond_3
    :goto_0
    move v8, v5

    move-object v9, v2

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v8, v9

    move v0, v8

    return v0

    .line 1337
    :cond_4
    move-object v8, v2

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move-object v10, v7

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    move-object v11, v2

    iget v11, v11, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    iput v9, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1344
    move-object v8, v7

    iget-boolean v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    if-eqz v8, :cond_5

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v8, :cond_5

    move-object v8, v3

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1346
    :cond_5
    move-object v8, v2

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move-object v10, v7

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1348
    move v8, v6

    move-object v9, v7

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v8, v9

    move v6, v8

    .line 1351
    :cond_6
    move-object v8, v2

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_8

    .line 1352
    move-object v8, v2

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    move-object v10, v7

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1353
    move-object v8, v2

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v8, :cond_7

    .line 1354
    move-object v8, v2

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    move-object v10, v2

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1356
    :cond_7
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->recycleByLayoutState(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;)V

    .line 1358
    :cond_8
    move v8, v4

    if-eqz v8, :cond_2

    move-object v8, v7

    iget-boolean v8, v8, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    if-eqz v8, :cond_2

    .line 1359
    goto :goto_0
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 7

    .prologue
    .line 1643
    move-object v0, p0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 1644
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 7

    .prologue
    .line 1626
    move-object v0, p0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 1627
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 7

    .prologue
    .line 1683
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 1684
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_0
.end method

.method public findLastVisibleItemPosition()I
    .locals 7

    .prologue
    .line 1666
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 1667
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_0
.end method

.method findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 15

    .prologue
    .line 1689
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1690
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v13}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v13

    move v5, v13

    .line 1691
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v13}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v13

    move v6, v13

    .line 1692
    move v13, v2

    move v14, v1

    if-le v13, v14, :cond_0

    const/4 v13, 0x1

    :goto_0
    move v7, v13

    .line 1693
    const/4 v13, 0x0

    move-object v8, v13

    .line 1694
    move v13, v1

    move v9, v13

    :goto_1
    move v13, v9

    move v14, v2

    if-eq v13, v14, :cond_4

    .line 1695
    move-object v13, v0

    move v14, v9

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    move-object v10, v13

    .line 1696
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v14, v10

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v13

    move v11, v13

    .line 1697
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v14, v10

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v13

    move v12, v13

    .line 1698
    move v13, v11

    move v14, v6

    if-ge v13, v14, :cond_2

    move v13, v12

    move v14, v5

    if-le v13, v14, :cond_2

    .line 1699
    move v13, v3

    if-eqz v13, :cond_3

    .line 1700
    move v13, v11

    move v14, v5

    if-lt v13, v14, :cond_1

    move v13, v12

    move v14, v6

    if-gt v13, v14, :cond_1

    .line 1701
    move-object v13, v10

    move-object v0, v13

    .line 1710
    :goto_2
    return-object v0

    .line 1692
    :cond_0
    const/4 v13, -0x1

    goto :goto_0

    .line 1702
    :cond_1
    move v13, v4

    if-eqz v13, :cond_2

    move-object v13, v8

    if-nez v13, :cond_2

    .line 1703
    move-object v13, v10

    move-object v8, v13

    .line 1694
    :cond_2
    move v13, v9

    move v14, v7

    add-int/2addr v13, v14

    move v9, v13

    goto :goto_1

    .line 1706
    :cond_3
    move-object v13, v10

    move-object v0, v13

    goto :goto_2

    .line 1710
    :cond_4
    move-object v13, v8

    move-object v0, v13

    goto :goto_2
.end method

.method findReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 16

    .prologue
    .line 1580
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v14, v0

    invoke-virtual {v14}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1581
    const/4 v14, 0x0

    move-object v6, v14

    .line 1582
    const/4 v14, 0x0

    move-object v7, v14

    .line 1583
    move-object v14, v0

    iget-object v14, v14, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v14}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v14

    move v8, v14

    .line 1584
    move-object v14, v0

    iget-object v14, v14, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v14}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v14

    move v9, v14

    .line 1585
    move v14, v4

    move v15, v3

    if-le v14, v15, :cond_1

    const/4 v14, 0x1

    :goto_0
    move v10, v14

    .line 1586
    move v14, v3

    move v11, v14

    :goto_1
    move v14, v11

    move v15, v4

    if-eq v14, v15, :cond_5

    .line 1587
    move-object v14, v0

    move v15, v11

    invoke-virtual {v14, v15}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    move-object v12, v14

    .line 1588
    move-object v14, v0

    move-object v15, v12

    invoke-virtual {v14, v15}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v14

    move v13, v14

    .line 1589
    move v14, v13

    if-ltz v14, :cond_0

    move v14, v13

    move v15, v5

    if-ge v14, v15, :cond_0

    .line 1590
    move-object v14, v12

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v14}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1591
    move-object v14, v6

    if-nez v14, :cond_0

    .line 1592
    move-object v14, v12

    move-object v6, v14

    .line 1586
    :cond_0
    :goto_2
    move v14, v11

    move v15, v10

    add-int/2addr v14, v15

    move v11, v14

    goto :goto_1

    .line 1585
    :cond_1
    const/4 v14, -0x1

    goto :goto_0

    .line 1594
    :cond_2
    move-object v14, v0

    iget-object v14, v14, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v15, v12

    invoke-virtual {v14, v15}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v14

    move v15, v9

    if-ge v14, v15, :cond_3

    move-object v14, v0

    iget-object v14, v14, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v15, v12

    invoke-virtual {v14, v15}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v14

    move v15, v8

    if-ge v14, v15, :cond_4

    .line 1596
    :cond_3
    move-object v14, v7

    if-nez v14, :cond_0

    .line 1597
    move-object v14, v12

    move-object v7, v14

    goto :goto_2

    .line 1600
    :cond_4
    move-object v14, v12

    move-object v0, v14

    .line 1604
    :goto_3
    return-object v0

    :cond_5
    move-object v14, v7

    if-eqz v14, :cond_6

    move-object v14, v7

    :goto_4
    move-object v0, v14

    goto :goto_3

    :cond_6
    move-object v14, v6

    goto :goto_4
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 9

    .prologue
    .line 385
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v6

    move v2, v6

    .line 386
    move v6, v2

    if-nez v6, :cond_0

    .line 387
    const/4 v6, 0x0

    move-object v0, v6

    .line 398
    :goto_0
    return-object v0

    .line 389
    :cond_0
    move-object v6, v0

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    move v3, v6

    .line 390
    move v6, v1

    move v7, v3

    sub-int/2addr v6, v7

    move v4, v6

    .line 391
    move v6, v4

    if-ltz v6, :cond_1

    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 392
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 393
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    move v7, v1

    if-ne v6, v7, :cond_1

    .line 394
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 398
    :cond_1
    move-object v6, v0

    move v7, v1

    invoke-super {v6, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 6

    .prologue
    .line 180
    move-object v0, p0

    new-instance v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    move-object v0, v1

    return-object v0
.end method

.method protected getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3

    .prologue
    .line 414
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$State;->hasTargetScrollPosition()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    move v0, v2

    .line 417
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 2

    .prologue
    .line 311
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    move v0, v1

    return v0
.end method

.method public getRecycleChildrenOnDetach()Z
    .locals 2

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    move v0, v1

    return v0
.end method

.method public getReverseLayout()Z
    .locals 2

    .prologue
    .line 354
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    move v0, v1

    return v0
.end method

.method public getStackFromEnd()Z
    .locals 2

    .prologue
    .line 301
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    move v0, v1

    return v0
.end method

.method protected isLayoutRTL()Z
    .locals 3

    .prologue
    .line 923
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 2

    .prologue
    .line 1113
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move v0, v1

    return v0
.end method

.method layoutChunk(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 19

    .prologue
    .line 1370
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v12, v4

    move-object v13, v2

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->next(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v12

    move-object v6, v12

    .line 1371
    move-object v12, v6

    if-nez v12, :cond_0

    .line 1377
    move-object v12, v5

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 1440
    :goto_0
    return-void

    .line 1380
    :cond_0
    move-object v12, v6

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v7, v12

    .line 1381
    move-object v12, v4

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v12, :cond_5

    .line 1382
    move-object v12, v1

    iget-boolean v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v13, v4

    iget v13, v13, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_3

    const/4 v13, 0x1

    :goto_1
    if-ne v12, v13, :cond_4

    .line 1384
    move-object v12, v1

    move-object v13, v6

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/LinearLayoutManager;->addView(Landroid/view/View;)V

    .line 1396
    :goto_2
    move-object v12, v1

    move-object v13, v6

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/support/v7/widget/LinearLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1397
    move-object v12, v5

    move-object v13, v1

    iget-object v13, v13, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v14, v6

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v13

    iput v13, v12, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 1399
    move-object v12, v1

    iget v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    .line 1400
    move-object v12, v1

    invoke-virtual {v12}, Landroid/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1401
    move-object v12, v1

    invoke-virtual {v12}, Landroid/support/v7/widget/LinearLayoutManager;->getWidth()I

    move-result v12

    move-object v13, v1

    invoke-virtual {v13}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    move v10, v12

    .line 1402
    move v12, v10

    move-object v13, v1

    iget-object v13, v13, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v14, v6

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v13

    sub-int/2addr v12, v13

    move v8, v12

    .line 1407
    :goto_3
    move-object v12, v4

    iget v12, v12, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_9

    .line 1408
    move-object v12, v4

    iget v12, v12, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v11, v12

    .line 1409
    move-object v12, v4

    iget v12, v12, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move-object v13, v5

    iget v13, v13, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v12, v13

    move v9, v12

    .line 1428
    :goto_4
    move-object v12, v1

    move-object v13, v6

    move v14, v8

    move-object v15, v7

    iget v15, v15, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v14, v15

    move v15, v9

    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move/from16 v16, v10

    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v17, v11

    move-object/from16 v18, v7

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {v12 .. v17}, Landroid/support/v7/widget/LinearLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 1436
    move-object v12, v7

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v12

    if-nez v12, :cond_1

    move-object v12, v7

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1437
    :cond_1
    move-object v12, v5

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 1439
    :cond_2
    move-object v12, v5

    move-object v13, v6

    invoke-virtual {v13}, Landroid/view/View;->isFocusable()Z

    move-result v13

    iput-boolean v13, v12, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 1440
    goto/16 :goto_0

    .line 1382
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 1386
    :cond_4
    move-object v12, v1

    move-object v13, v6

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/support/v7/widget/LinearLayoutManager;->addView(Landroid/view/View;I)V

    goto/16 :goto_2

    .line 1389
    :cond_5
    move-object v12, v1

    iget-boolean v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v13, v4

    iget v13, v13, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_6

    const/4 v13, 0x1

    :goto_5
    if-ne v12, v13, :cond_7

    .line 1391
    move-object v12, v1

    move-object v13, v6

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 1389
    :cond_6
    const/4 v13, 0x0

    goto :goto_5

    .line 1393
    :cond_7
    move-object v12, v1

    move-object v13, v6

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/support/v7/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    goto/16 :goto_2

    .line 1404
    :cond_8
    move-object v12, v1

    invoke-virtual {v12}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingLeft()I

    move-result v12

    move v8, v12

    .line 1405
    move v12, v8

    move-object v13, v1

    iget-object v13, v13, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v14, v6

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v13

    add-int/2addr v12, v13

    move v10, v12

    goto/16 :goto_3

    .line 1411
    :cond_9
    move-object v12, v4

    iget v12, v12, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v9, v12

    .line 1412
    move-object v12, v4

    iget v12, v12, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move-object v13, v5

    iget v13, v13, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v12, v13

    move v11, v12

    goto/16 :goto_4

    .line 1415
    :cond_a
    move-object v12, v1

    invoke-virtual {v12}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingTop()I

    move-result v12

    move v9, v12

    .line 1416
    move v12, v9

    move-object v13, v1

    iget-object v13, v13, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v14, v6

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v13

    add-int/2addr v12, v13

    move v11, v12

    .line 1418
    move-object v12, v4

    iget v12, v12, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_b

    .line 1419
    move-object v12, v4

    iget v12, v12, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v10, v12

    .line 1420
    move-object v12, v4

    iget v12, v12, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move-object v13, v5

    iget v13, v13, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v12, v13

    move v8, v12

    goto/16 :goto_4

    .line 1422
    :cond_b
    move-object v12, v4

    iget v12, v12, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v8, v12

    .line 1423
    move-object v12, v4

    iget v12, v12, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move-object v13, v5

    iget v13, v13, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v12, v13

    move v10, v12

    goto/16 :goto_4
.end method

.method onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 0

    .prologue
    .line 631
    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 6

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 215
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz v3, :cond_0

    .line 216
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 217
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 219
    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 14

    .prologue
    .line 1716
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1717
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v9

    if-nez v9, :cond_0

    .line 1718
    const/4 v9, 0x0

    move-object v0, v9

    .line 1754
    :goto_0
    return-object v0

    .line 1721
    :cond_0
    move-object v9, v0

    move v10, v2

    invoke-direct {v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v9

    move v5, v9

    .line 1722
    move v9, v5

    const/high16 v10, -0x80000000

    if-ne v9, v10, :cond_1

    .line 1723
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 1725
    :cond_1
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1727
    move v9, v5

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 1728
    move-object v9, v0

    move-object v10, v3

    move-object v11, v4

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/LinearLayoutManager;->findReferenceChildClosestToStart(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v9

    move-object v6, v9

    .line 1732
    :goto_1
    move-object v9, v6

    if-nez v9, :cond_3

    .line 1737
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 1730
    :cond_2
    move-object v9, v0

    move-object v10, v3

    move-object v11, v4

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/LinearLayoutManager;->findReferenceChildClosestToEnd(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v9

    move-object v6, v9

    goto :goto_1

    .line 1739
    :cond_3
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1740
    const v9, 0x3ea8f5c3    # 0.33f

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v10}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move v7, v9

    .line 1741
    move-object v9, v0

    move v10, v5

    move v11, v7

    const/4 v12, 0x0

    move-object v13, v4

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutState(IIZLandroid/support/v7/widget/RecyclerView$State;)V

    .line 1742
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/high16 v10, -0x80000000

    iput v10, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1743
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1744
    move-object v9, v0

    move-object v10, v3

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v12, v4

    const/4 v13, 0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v9

    .line 1746
    move v9, v5

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    .line 1747
    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v9

    move-object v8, v9

    .line 1751
    :goto_2
    move-object v9, v8

    move-object v10, v6

    if-eq v9, v10, :cond_4

    move-object v9, v8

    invoke-virtual {v9}, Landroid/view/View;->isFocusable()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1752
    :cond_4
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 1749
    :cond_5
    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v9

    move-object v8, v9

    goto :goto_2

    .line 1754
    :cond_6
    move-object v9, v8

    move-object v0, v9

    goto/16 :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    .prologue
    .line 223
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 224
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 225
    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v3

    move-object v2, v3

    .line 227
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 228
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    .line 230
    :cond_0
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 15

    .prologue
    .line 464
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v9, :cond_0

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 465
    :cond_0
    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    if-nez v9, :cond_1

    .line 466
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 619
    :goto_0
    return-void

    .line 470
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v9, :cond_2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v9}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 471
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v10, v9, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 474
    :cond_2
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 475
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 477
    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 479
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v9}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 480
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v11, v0

    iget-boolean v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v10, v11

    iput-boolean v10, v9, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 482
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v9, v10, v11, v12}, Landroid/support/v7/widget/LinearLayoutManager;->updateAnchorInfoForLayout(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 491
    move-object v9, v0

    move-object v10, v2

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v9

    move v5, v9

    .line 494
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    if-ltz v9, :cond_8

    .line 495
    move v9, v5

    move v4, v9

    .line 496
    const/4 v9, 0x0

    move v3, v9

    .line 501
    :goto_1
    move v9, v3

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v10}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v10

    add-int/2addr v9, v10

    move v3, v9

    .line 502
    move v9, v4

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v10}, Landroid/support/v7/widget/OrientationHelper;->getEndPadding()I

    move-result v10

    add-int/2addr v9, v10

    move v4, v9

    .line 503
    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v10, -0x80000000

    if-eq v9, v10, :cond_3

    .line 508
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v9

    move-object v6, v9

    .line 509
    move-object v9, v6

    if-eqz v9, :cond_3

    .line 512
    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v9, :cond_9

    .line 513
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v9}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v11, v6

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v10

    sub-int/2addr v9, v10

    move v7, v9

    .line 515
    move v9, v7

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v9, v10

    move v8, v9

    .line 521
    :goto_2
    move v9, v8

    if-lez v9, :cond_a

    .line 522
    move v9, v3

    move v10, v8

    add-int/2addr v9, v10

    move v3, v9

    .line 530
    :cond_3
    :goto_3
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v7/widget/LinearLayoutManager;->onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 531
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 532
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v10, v2

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v10

    iput-boolean v10, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 533
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v9, v9, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v9, :cond_b

    .line 535
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 536
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v10, v3

    iput v10, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 537
    move-object v9, v0

    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v12, v2

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v9

    .line 538
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v6, v9

    .line 539
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move v8, v9

    .line 540
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v9, :cond_4

    .line 541
    move v9, v4

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v9, v10

    move v4, v9

    .line 544
    :cond_4
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 545
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v10, v4

    iput v10, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 546
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v11, v11, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v10, v11

    iput v10, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 547
    move-object v9, v0

    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v12, v2

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v9

    .line 548
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v7, v9

    .line 550
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v9, :cond_5

    .line 552
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move v3, v9

    .line 553
    move-object v9, v0

    move v10, v8

    move v11, v6

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 554
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v10, v3

    iput v10, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 555
    move-object v9, v0

    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v12, v2

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v9

    .line 556
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v6, v9

    .line 588
    :cond_5
    :goto_4
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v9

    if-lez v9, :cond_6

    .line 592
    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v9, v10

    if-eqz v9, :cond_d

    .line 593
    move-object v9, v0

    move v10, v7

    move-object v11, v1

    move-object v12, v2

    const/4 v13, 0x1

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutEndGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v9

    move v8, v9

    .line 594
    move v9, v6

    move v10, v8

    add-int/2addr v9, v10

    move v6, v9

    .line 595
    move v9, v7

    move v10, v8

    add-int/2addr v9, v10

    move v7, v9

    .line 596
    move-object v9, v0

    move v10, v6

    move-object v11, v1

    move-object v12, v2

    const/4 v13, 0x0

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutStartGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v9

    move v8, v9

    .line 597
    move v9, v6

    move v10, v8

    add-int/2addr v9, v10

    move v6, v9

    .line 598
    move v9, v7

    move v10, v8

    add-int/2addr v9, v10

    move v7, v9

    .line 608
    :cond_6
    :goto_5
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move v12, v6

    move v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/LinearLayoutManager;->layoutForPredictiveAnimations(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 609
    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v9

    if-nez v9, :cond_7

    .line 610
    move-object v9, v0

    const/4 v10, -0x1

    iput v10, v9, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 611
    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 612
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v9}, Landroid/support/v7/widget/OrientationHelper;->onLayoutComplete()V

    .line 614
    :cond_7
    move-object v9, v0

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    iput-boolean v10, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    .line 615
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 619
    goto/16 :goto_0

    .line 498
    :cond_8
    move v9, v5

    move v3, v9

    .line 499
    const/4 v9, 0x0

    move v4, v9

    goto/16 :goto_1

    .line 517
    :cond_9
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v10}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v10

    sub-int/2addr v9, v10

    move v7, v9

    .line 519
    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    move v10, v7

    sub-int/2addr v9, v10

    move v8, v9

    goto/16 :goto_2

    .line 524
    :cond_a
    move v9, v4

    move v10, v8

    sub-int/2addr v9, v10

    move v4, v9

    goto/16 :goto_3

    .line 560
    :cond_b
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 561
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v10, v4

    iput v10, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 562
    move-object v9, v0

    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v12, v2

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v9

    .line 563
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v7, v9

    .line 564
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move v8, v9

    .line 565
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v9, :cond_c

    .line 566
    move v9, v3

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v9, v10

    move v3, v9

    .line 569
    :cond_c
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 570
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v10, v3

    iput v10, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 571
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v11, v11, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v10, v11

    iput v10, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 572
    move-object v9, v0

    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v12, v2

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v9

    .line 573
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v6, v9

    .line 575
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v9, :cond_5

    .line 576
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move v4, v9

    .line 578
    move-object v9, v0

    move v10, v8

    move v11, v7

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 579
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v10, v4

    iput v10, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 580
    move-object v9, v0

    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v12, v2

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v9

    .line 581
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v7, v9

    goto/16 :goto_4

    .line 600
    :cond_d
    move-object v9, v0

    move v10, v6

    move-object v11, v1

    move-object v12, v2

    const/4 v13, 0x1

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutStartGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v9

    move v8, v9

    .line 601
    move v9, v6

    move v10, v8

    add-int/2addr v9, v10

    move v6, v9

    .line 602
    move v9, v7

    move v10, v8

    add-int/2addr v9, v10

    move v7, v9

    .line 603
    move-object v9, v0

    move v10, v7

    move-object v11, v1

    move-object v12, v2

    const/4 v13, 0x0

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutEndGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v9

    move v8, v9

    .line 604
    move v9, v6

    move v10, v8

    add-int/2addr v9, v10

    move v6, v9

    .line 605
    move v9, v7

    move v10, v8

    add-int/2addr v9, v10

    move v7, v9

    goto/16 :goto_5
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 261
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v2, :cond_0

    .line 262
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object v3, v2, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 263
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 270
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    .prologue
    .line 234
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v4, :cond_0

    .line 235
    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v5, v6}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V

    move-object v0, v4

    .line 256
    :goto_0
    return-object v0

    .line 237
    :cond_0
    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    move-object v1, v4

    .line 238
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 239
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 240
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    xor-int/2addr v4, v5

    move v2, v4

    .line 241
    move-object v4, v1

    move v5, v2

    iput-boolean v5, v4, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 242
    move v4, v2

    if-eqz v4, :cond_1

    .line 243
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 244
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 246
    move-object v4, v1

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    iput v5, v4, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 256
    :goto_1
    move-object v4, v1

    move-object v0, v4

    goto :goto_0

    .line 248
    :cond_1
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 249
    move-object v4, v1

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    iput v5, v4, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 250
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    goto :goto_1

    .line 254
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    goto :goto_1
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .locals 14

    .prologue
    .line 1831
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v8, v0

    const-string v9, "Cannot drop a view during a scroll or layout calculation"

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1832
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1833
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1834
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    move v5, v8

    .line 1835
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    move v6, v8

    .line 1836
    move v8, v5

    move v9, v6

    if-ge v8, v9, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v7, v8

    .line 1838
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_2

    .line 1839
    move v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 1840
    move-object v8, v0

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v10}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v12, v2

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v13, v1

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v12

    add-int/2addr v11, v12

    sub-int/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1858
    :goto_1
    return-void

    .line 1836
    :cond_0
    const/4 v8, -0x1

    goto :goto_0

    .line 1845
    :cond_1
    move-object v8, v0

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v10}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v12, v2

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 1850
    :cond_2
    move v8, v7

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 1851
    move-object v8, v0

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v11, v2

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 1853
    :cond_3
    move-object v8, v0

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v11, v2

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v12, v1

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1
.end method

.method scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 15

    .prologue
    .line 1152
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v9

    if-eqz v9, :cond_0

    move v9, v1

    if-nez v9, :cond_1

    .line 1153
    :cond_0
    const/4 v9, 0x0

    move v0, v9

    .line 1174
    :goto_0
    return v0

    .line 1155
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1156
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1157
    move v9, v1

    if-lez v9, :cond_2

    const/4 v9, 0x1

    :goto_1
    move v4, v9

    .line 1158
    move v9, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    move v5, v9

    .line 1159
    move-object v9, v0

    move v10, v4

    move v11, v5

    const/4 v12, 0x1

    move-object v13, v3

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutState(IIZLandroid/support/v7/widget/RecyclerView$State;)V

    .line 1160
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    move v6, v9

    .line 1161
    move v9, v6

    move-object v10, v0

    move-object v11, v2

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object v13, v3

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v10

    add-int/2addr v9, v10

    move v7, v9

    .line 1162
    move v9, v7

    if-gez v9, :cond_3

    .line 1166
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 1157
    :cond_2
    const/4 v9, -0x1

    goto :goto_1

    .line 1168
    :cond_3
    move v9, v5

    move v10, v7

    if-le v9, v10, :cond_4

    move v9, v4

    move v10, v7

    mul-int/2addr v9, v10

    :goto_2
    move v8, v9

    .line 1169
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move v10, v8

    neg-int v10, v10

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 1173
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move v10, v8

    iput v10, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    .line 1174
    move v9, v8

    move v0, v9

    goto :goto_0

    .line 1168
    :cond_4
    move v9, v1

    goto :goto_2
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1003
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1004
    const/4 v4, 0x0

    move v0, v4

    .line 1006
    :goto_0
    return v0

    :cond_0
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public scrollToPosition(I)V
    .locals 4

    .prologue
    .line 960
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 961
    move-object v2, v0

    const/high16 v3, -0x80000000

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 962
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v2, :cond_0

    .line 963
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 965
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 966
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 5

    .prologue
    .line 988
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 989
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 990
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v3, :cond_0

    .line 991
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 993
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 994
    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1015
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v4, :cond_0

    .line 1016
    const/4 v4, 0x0

    move v0, v4

    .line 1018
    :goto_0
    return v0

    :cond_0
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 7

    .prologue
    .line 321
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    move v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 322
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid orientation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 325
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne v2, v3, :cond_1

    .line 331
    :goto_0
    return-void

    .line 328
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    .line 329
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 330
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 331
    goto :goto_0
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .locals 4

    .prologue
    .line 209
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    .line 210
    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 4

    .prologue
    .line 372
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 373
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    if-ne v2, v3, :cond_0

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 377
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 378
    goto :goto_0
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 4

    .prologue
    .line 1102
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1103
    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 4

    .prologue
    .line 292
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 293
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 297
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 298
    goto :goto_0
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 10

    .prologue
    .line 424
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    new-instance v5, Landroid/support/v7/widget/LinearLayoutManager$1;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/support/v7/widget/LinearLayoutManager$1;-><init>(Landroid/support/v7/widget/LinearLayoutManager;Landroid/content/Context;)V

    move-object v4, v5

    .line 432
    move-object v5, v4

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 433
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 434
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 3

    .prologue
    .line 1823
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method validateChildOrder()V
    .locals 13

    .prologue
    .line 1782
    move-object v0, p0

    const-string v7, "LinearLayoutManager"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "validating child count "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1783
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_0

    .line 1819
    :goto_0
    return-void

    .line 1786
    :cond_0
    move-object v7, v0

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v1, v7

    .line 1787
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move v2, v7

    .line 1788
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_5

    .line 1789
    const/4 v7, 0x1

    move v3, v7

    :goto_1
    move v7, v3

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 1790
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 1791
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v5, v7

    .line 1792
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move v6, v7

    .line 1793
    move v7, v5

    move v8, v1

    if-ge v7, v8, :cond_2

    .line 1794
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/LinearLayoutManager;->logChildren()V

    .line 1795
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "detected invalid position. loc invalid? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v6

    move v11, v2

    if-ge v10, v11, :cond_1

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    .line 1798
    :cond_2
    move v7, v6

    move v8, v2

    if-le v7, v8, :cond_3

    .line 1799
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/LinearLayoutManager;->logChildren()V

    .line 1800
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "detected invalid location"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1789
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1819
    :cond_4
    goto/16 :goto_0

    .line 1804
    :cond_5
    const/4 v7, 0x1

    move v3, v7

    :goto_3
    move v7, v3

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 1805
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 1806
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v5, v7

    .line 1807
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move v6, v7

    .line 1808
    move v7, v5

    move v8, v1

    if-ge v7, v8, :cond_7

    .line 1809
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/LinearLayoutManager;->logChildren()V

    .line 1810
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "detected invalid position. loc invalid? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v6

    move v11, v2

    if-ge v10, v11, :cond_6

    const/4 v10, 0x1

    :goto_4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    .line 1813
    :cond_7
    move v7, v6

    move v8, v2

    if-ge v7, v8, :cond_8

    .line 1814
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/LinearLayoutManager;->logChildren()V

    .line 1815
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "detected invalid location"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1804
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method
