.class public Landroid/support/v7/widget/StaggeredGridLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final GAP_HANDLING_LAZY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS:I = 0x2

.field public static final GAP_HANDLING_NONE:I = 0x0

.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_OFFSET:I = -0x80000000

.field public static final TAG:Ljava/lang/String; = "StaggeredGridLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final mAnchorInfo:Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

.field private final mCheckForGapsRunnable:Ljava/lang/Runnable;

.field private mFullSizeSpec:I

.field private mGapStrategy:I

.field private mHeightSpec:I

.field private mLaidOutInvalidFullSpan:Z

.field private mLastLayoutFromEnd:Z

.field private mLastLayoutRTL:Z

.field private mLayoutState:Landroid/support/v7/widget/LayoutState;

.field mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

.field private mOrientation:I

.field private mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

.field private mRemainingSpans:Ljava/util/BitSet;

.field private mReverseLayout:Z

.field mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

.field mShouldReverseLayout:Z

.field private mSizePerSpan:I

.field private mSmoothScrollbarEnabled:Z

.field private mSpanCount:I

.field private mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mWidthSpec:I


# direct methods
.method public constructor <init>(II)V
    .locals 9

    .prologue
    .line 223
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 97
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 117
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 122
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 133
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 139
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 145
    move-object v3, v0

    new-instance v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 150
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 176
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 181
    move-object v3, v0

    new-instance v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;Landroid/support/v7/widget/StaggeredGridLayoutManager$1;)V

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 189
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 195
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 197
    move-object v3, v0

    new-instance v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 224
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 225
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 12

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 97
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 117
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 122
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 133
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 139
    move-object v6, v0

    const/high16 v7, -0x80000000

    iput v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 145
    move-object v6, v0

    new-instance v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 150
    move-object v6, v0

    const/4 v7, 0x2

    iput v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 176
    move-object v6, v0

    new-instance v7, Landroid/graphics/Rect;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 181
    move-object v6, v0

    new-instance v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;Landroid/support/v7/widget/StaggeredGridLayoutManager$1;)V

    iput-object v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 189
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 195
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 197
    move-object v6, v0

    new-instance v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 210
    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v6, v7, v8, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v6

    move-object v5, v6

    .line 211
    move-object v6, v0

    move-object v7, v5

    iget v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setOrientation(I)V

    .line 212
    move-object v6, v0

    move-object v7, v5

    iget v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    .line 213
    move-object v6, v0

    move-object v7, v5

    iget-boolean v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 214
    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)I
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result v2

    move v0, v2

    return v0
.end method

.method static synthetic access$500(Landroid/support/v7/widget/StaggeredGridLayoutManager;)I
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    move v0, v1

    return v0
.end method

.method static synthetic access$600(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    move v0, v1

    return v0
.end method

.method private appendViewToAllSpans(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1603
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 1604
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    .line 1603
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1606
    :cond_0
    return-void
.end method

.method private applyPendingSavedState(Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 6

    .prologue
    .line 647
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v4, :cond_2

    .line 648
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ne v4, v5, :cond_4

    .line 649
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_2

    .line 650
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 651
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    move v5, v2

    aget v4, v4, v5

    move v3, v4

    .line 652
    move v4, v3

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_0

    .line 653
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v4, :cond_1

    .line 654
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    add-int/2addr v4, v5

    move v3, v4

    .line 659
    :cond_0
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v5, v2

    aget-object v4, v4, v5

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    .line 649
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 656
    :cond_1
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    add-int/2addr v4, v5

    move v3, v4

    goto :goto_1

    .line 666
    :cond_2
    :goto_2
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iput-boolean v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 667
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 668
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 670
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 671
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 672
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 676
    :goto_3
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 677
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iput-object v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 678
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    iput-object v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 680
    :cond_3
    return-void

    .line 662
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    .line 663
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    goto :goto_2

    .line 674
    :cond_5
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_3
.end method

.method private attachViewToSpans(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;Landroid/support/v7/widget/LayoutState;)V
    .locals 6

    .prologue
    .line 1550
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v3

    iget v4, v4, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1551
    move-object v4, v2

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v4, :cond_0

    .line 1552
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->appendViewToAllSpans(Landroid/view/View;)V

    .line 1563
    :goto_0
    return-void

    .line 1554
    :cond_0
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    goto :goto_0

    .line 1557
    :cond_1
    move-object v4, v2

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v4, :cond_2

    .line 1558
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->prependViewToAllSpans(Landroid/view/View;)V

    goto :goto_0

    .line 1560
    :cond_2
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    goto :goto_0
.end method

.method private calculateScrollDirectionForPosition(I)I
    .locals 5

    .prologue
    .line 1850
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 1851
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 1854
    :goto_1
    return v0

    .line 1851
    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    .line 1853
    :cond_1
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v3

    move v2, v3

    .line 1854
    move v3, v1

    move v4, v2

    if-ge v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_2
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v3, v4, :cond_3

    const/4 v3, -0x1

    :goto_3
    move v0, v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    goto :goto_3
.end method

.method private checkForGaps()Z
    .locals 11

    .prologue
    .line 235
    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v6, :cond_0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isAttachedToWindow()Z

    move-result v6

    if-nez v6, :cond_1

    .line 236
    :cond_0
    const/4 v6, 0x0

    move v0, v6

    .line 276
    :goto_0
    return v0

    .line 239
    :cond_1
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_2

    .line 240
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v6

    move v1, v6

    .line 241
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v6

    move v2, v6

    .line 246
    :goto_1
    move v6, v1

    if-nez v6, :cond_3

    .line 247
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v6

    move-object v3, v6

    .line 248
    move-object v6, v3

    if-eqz v6, :cond_3

    .line 249
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 250
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 251
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 252
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 243
    :cond_2
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v6

    move v1, v6

    .line 244
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v6

    move v2, v6

    goto :goto_1

    .line 255
    :cond_3
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v6, :cond_4

    .line 256
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 258
    :cond_4
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_5

    const/4 v6, -0x1

    :goto_2
    move v3, v6

    .line 259
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v7, v1

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v3

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v6

    move-object v4, v6

    .line 261
    move-object v6, v4

    if-nez v6, :cond_6

    .line 262
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 263
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    move-result v6

    .line 264
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 258
    :cond_5
    const/4 v6, 0x1

    goto :goto_2

    .line 266
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v7, v1

    move-object v8, v4

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v9, v3

    const/4 v10, -0x1

    mul-int/lit8 v9, v9, -0x1

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v6

    move-object v5, v6

    .line 269
    move-object v6, v5

    if-nez v6, :cond_7

    .line 270
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v7, v4

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    move-result v6

    .line 274
    :goto_3
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 275
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 276
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    .line 272
    :cond_7
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v7, v5

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    move-result v6

    goto :goto_3
.end method

.method private checkSpanForGap(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)Z
    .locals 4

    .prologue
    .line 364
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_0

    .line 365
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 366
    const/4 v2, 0x1

    move v0, v2

    .line 371
    :goto_0
    return v0

    .line 368
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 369
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 371
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 961
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 962
    const/4 v2, 0x0

    move v0, v2

    .line 965
    :goto_0
    return v0

    .line 964
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    .line 965
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

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
    .line 940
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 941
    const/4 v2, 0x0

    move v0, v2

    .line 944
    :goto_0
    return v0

    .line 943
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    .line 944
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

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
    .line 982
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 983
    const/4 v2, 0x0

    move v0, v2

    .line 986
    :goto_0
    return v0

    .line 985
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    .line 986
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

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

.method private createFullSpanItemFromEnd(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 10

    .prologue
    .line 1532
    move-object v0, p0

    move v1, p1

    new-instance v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    move-object v2, v4

    .line 1533
    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v5, v5, [I

    iput-object v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 1534
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_0

    .line 1535
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    move v5, v3

    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v8, v3

    aget-object v7, v7, v8

    move v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v7

    sub-int/2addr v6, v7

    aput v6, v4, v5

    .line 1534
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1537
    :cond_0
    move-object v4, v2

    move-object v0, v4

    return-object v0
.end method

.method private createFullSpanItemFromStart(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 9

    .prologue
    .line 1541
    move-object v0, p0

    move v1, p1

    new-instance v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    move-object v2, v4

    .line 1542
    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v5, v5, [I

    iput-object v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 1543
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_0

    .line 1544
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v7, v3

    aget-object v6, v6, v7

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v6

    move v7, v1

    sub-int/2addr v6, v7

    aput v6, v4, v5

    .line 1543
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1546
    :cond_0
    move-object v4, v2

    move-object v0, v4

    return-object v0
.end method

.method private ensureOrientationHelper()V
    .locals 6

    .prologue
    .line 512
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    if-nez v1, :cond_0

    .line 513
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    invoke-static {v2, v3}, Landroid/support/v7/widget/OrientationHelper;->createOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 514
    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    rsub-int/lit8 v3, v4, 0x1

    invoke-static {v2, v3}, Landroid/support/v7/widget/OrientationHelper;->createOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 516
    move-object v1, v0

    new-instance v2, Landroid/support/v7/widget/LayoutState;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroid/support/v7/widget/LayoutState;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    .line 518
    :cond_0
    return-void
.end method

.method private fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 25

    .prologue
    .line 1400
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Ljava/util/BitSet;->set(IIZ)V

    .line 1405
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 1406
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    move/from16 v19, v0

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v6, v19

    .line 1411
    :goto_0
    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    move/from16 v20, v0

    move/from16 v21, v6

    invoke-direct/range {v19 .. v21}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    .line 1418
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v19

    :goto_1
    move/from16 v7, v19

    .line 1421
    const/16 v19, 0x0

    move/from16 v8, v19

    .line 1422
    :goto_2
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/LayoutState;->hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v19

    if-eqz v19, :cond_13

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/BitSet;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_13

    .line 1423
    move-object/from16 v19, v4

    move-object/from16 v20, v3

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/LayoutState;->next(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v9, v19

    .line 1424
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object/from16 v10, v19

    .line 1425
    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v19

    move/from16 v11, v19

    .line 1426
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v19, v0

    move/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getSpan(I)I

    move-result v19

    move/from16 v12, v19

    .line 1428
    move/from16 v19, v12

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    const/16 v19, 0x1

    :goto_3
    move/from16 v14, v19

    .line 1429
    move/from16 v19, v14

    if-eqz v19, :cond_6

    .line 1430
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    :goto_4
    move-object/from16 v13, v19

    .line 1431
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v19, v0

    move/from16 v20, v11

    move-object/from16 v21, v13

    invoke-virtual/range {v19 .. v21}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->setSpan(ILandroid/support/v7/widget/StaggeredGridLayoutManager$Span;)V

    .line 1442
    :goto_5
    move-object/from16 v19, v10

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 1443
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 1444
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->addView(Landroid/view/View;)V

    .line 1448
    :goto_6
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    invoke-direct/range {v19 .. v21}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;)V

    .line 1452
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 1453
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v19, v2

    move/from16 v20, v7

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v19

    :goto_7
    move/from16 v15, v19

    .line 1455
    move/from16 v19, v15

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v20

    add-int v19, v19, v20

    move/from16 v16, v19

    .line 1456
    move/from16 v19, v14

    if-eqz v19, :cond_0

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 1458
    move-object/from16 v19, v2

    move/from16 v20, v15

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->createFullSpanItemFromEnd(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v19

    move-object/from16 v17, v19

    .line 1459
    move-object/from16 v19, v17

    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1460
    move-object/from16 v19, v17

    move/from16 v20, v11

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1461
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v19, v0

    move-object/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    .line 1477
    :cond_0
    :goto_8
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mItemDirection:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 1478
    move/from16 v19, v14

    if-eqz v19, :cond_b

    .line 1479
    move-object/from16 v19, v2

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 1498
    :cond_1
    :goto_9
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v4

    invoke-direct/range {v19 .. v22}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->attachViewToSpans(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;Landroid/support/v7/widget/LayoutState;)V

    .line 1499
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v19

    :goto_a
    move/from16 v17, v19

    .line 1502
    move/from16 v19, v17

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v20

    add-int v19, v19, v20

    move/from16 v18, v19

    .line 1503
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 1504
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    move/from16 v21, v17

    move/from16 v22, v15

    move/from16 v23, v18

    move/from16 v24, v16

    invoke-direct/range {v19 .. v24}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1509
    :goto_b
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 1510
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    move/from16 v20, v0

    move/from16 v21, v6

    invoke-direct/range {v19 .. v21}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    .line 1514
    :goto_c
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->recycle(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;)V

    .line 1515
    const/16 v19, 0x1

    move/from16 v8, v19

    .line 1516
    goto/16 :goto_2

    .line 1408
    :cond_2
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    move/from16 v19, v0

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v6, v19

    goto/16 :goto_0

    .line 1418
    :cond_3
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v19

    goto/16 :goto_1

    .line 1428
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1430
    :cond_5
    move-object/from16 v19, v2

    move-object/from16 v20, v4

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getNextSpan(Landroid/support/v7/widget/LayoutState;)Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move-result-object v19

    goto/16 :goto_4

    .line 1439
    :cond_6
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v19, v0

    move/from16 v20, v12

    aget-object v19, v19, v20

    move-object/from16 v13, v19

    goto/16 :goto_5

    .line 1446
    :cond_7
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->addView(Landroid/view/View;I)V

    goto/16 :goto_6

    .line 1453
    :cond_8
    move-object/from16 v19, v13

    move/from16 v20, v7

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v19

    goto/16 :goto_7

    .line 1464
    :cond_9
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v19, v2

    move/from16 v20, v7

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v19

    :goto_d
    move/from16 v16, v19

    .line 1466
    move/from16 v19, v16

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v15, v19

    .line 1467
    move/from16 v19, v14

    if-eqz v19, :cond_0

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 1469
    move-object/from16 v19, v2

    move/from16 v20, v16

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->createFullSpanItemFromStart(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v19

    move-object/from16 v17, v19

    .line 1470
    move-object/from16 v19, v17

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1471
    move-object/from16 v19, v17

    move/from16 v20, v11

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1472
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v19, v0

    move-object/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    goto/16 :goto_8

    .line 1464
    :cond_a
    move-object/from16 v19, v13

    move/from16 v20, v7

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v19

    goto :goto_d

    .line 1482
    :cond_b
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 1483
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->areAllEndsEqual()Z

    move-result v19

    if-nez v19, :cond_d

    const/16 v19, 0x1

    :goto_e
    move/from16 v17, v19

    .line 1487
    :goto_f
    move/from16 v19, v17

    if-eqz v19, :cond_1

    .line 1488
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v19, v0

    move/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v19

    move-object/from16 v18, v19

    .line 1490
    move-object/from16 v19, v18

    if-eqz v19, :cond_c

    .line 1491
    move-object/from16 v19, v18

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    .line 1493
    :cond_c
    move-object/from16 v19, v2

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    goto/16 :goto_9

    .line 1483
    :cond_d
    const/16 v19, 0x0

    goto :goto_e

    .line 1485
    :cond_e
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->areAllStartsEqual()Z

    move-result v19

    if-nez v19, :cond_f

    const/16 v19, 0x1

    :goto_10
    move/from16 v17, v19

    goto :goto_f

    :cond_f
    const/16 v19, 0x0

    goto :goto_10

    .line 1499
    :cond_10
    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v20

    add-int v19, v19, v20

    goto/16 :goto_a

    .line 1506
    :cond_11
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    move/from16 v21, v15

    move/from16 v22, v17

    move/from16 v23, v16

    move/from16 v24, v18

    invoke-direct/range {v19 .. v24}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    goto/16 :goto_b

    .line 1512
    :cond_12
    move-object/from16 v19, v2

    move-object/from16 v20, v13

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    move/from16 v21, v0

    move/from16 v22, v6

    invoke-direct/range {v19 .. v22}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateRemainingSpans(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;II)V

    goto/16 :goto_c

    .line 1517
    :cond_13
    move/from16 v19, v8

    if-nez v19, :cond_14

    .line 1518
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->recycle(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;)V

    .line 1521
    :cond_14
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 1522
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v19

    move/from16 v10, v19

    .line 1523
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v19

    move/from16 v20, v10

    sub-int v19, v19, v20

    move/from16 v9, v19

    .line 1528
    :goto_11
    move/from16 v19, v9

    if-lez v19, :cond_16

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    move/from16 v19, v0

    move/from16 v20, v9

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    :goto_12
    move/from16 v2, v19

    return v2

    .line 1525
    :cond_15
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v19

    move/from16 v10, v19

    .line 1526
    move/from16 v19, v10

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v9, v19

    goto :goto_11

    .line 1528
    :cond_16
    const/16 v19, 0x0

    goto :goto_12
.end method

.method private findFirstReferenceChildPosition(I)I
    .locals 8

    .prologue
    .line 1961
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v6

    move v2, v6

    .line 1962
    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 1963
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 1964
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    move v5, v6

    .line 1965
    move v6, v5

    if-ltz v6, :cond_0

    move v6, v5

    move v7, v1

    if-ge v6, v7, :cond_0

    .line 1966
    move v6, v5

    move v0, v6

    .line 1969
    :goto_1
    return v0

    .line 1962
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1969
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method private findLastReferenceChildPosition(I)I
    .locals 7

    .prologue
    .line 1978
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v2, v5

    :goto_0
    move v5, v2

    if-ltz v5, :cond_1

    .line 1979
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 1980
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    move v4, v5

    .line 1981
    move v5, v4

    if-ltz v5, :cond_0

    move v5, v4

    move v6, v1

    if-ge v5, v6, :cond_0

    .line 1982
    move v5, v4

    move v0, v5

    .line 1985
    :goto_1
    return v0

    .line 1978
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1985
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method private fixEndGap(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V
    .locals 11

    .prologue
    .line 1246
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v7

    move v4, v7

    .line 1247
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move v8, v4

    sub-int/2addr v7, v8

    move v5, v7

    .line 1249
    move v7, v5

    if-lez v7, :cond_1

    .line 1250
    move-object v7, v0

    move v8, v5

    neg-int v8, v8

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v7

    neg-int v7, v7

    move v6, v7

    .line 1254
    move v7, v5

    move v8, v6

    sub-int/2addr v7, v8

    move v5, v7

    .line 1255
    move v7, v3

    if-eqz v7, :cond_0

    move v7, v5

    if-lez v7, :cond_0

    .line 1256
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 1258
    :cond_0
    :goto_0
    return-void

    .line 1252
    :cond_1
    goto :goto_0
.end method

.method private fixStartGap(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V
    .locals 11

    .prologue
    .line 1262
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v7

    move v4, v7

    .line 1263
    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 1265
    move v7, v5

    if-lez v7, :cond_1

    .line 1266
    move-object v7, v0

    move v8, v5

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v7

    move v6, v7

    .line 1270
    move v7, v5

    move v8, v6

    sub-int/2addr v7, v8

    move v5, v7

    .line 1271
    move v7, v3

    if-eqz v7, :cond_0

    move v7, v5

    if-lez v7, :cond_0

    .line 1272
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move v8, v5

    neg-int v8, v8

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 1274
    :cond_0
    :goto_0
    return-void

    .line 1268
    :cond_1
    goto :goto_0
.end method

.method private getFirstChildPosition()I
    .locals 5

    .prologue
    .line 1951
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    move v1, v2

    .line 1952
    move v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_0
.end method

.method private getLastChildPosition()I
    .locals 6

    .prologue
    .line 1946
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    move v1, v2

    .line 1947
    move v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_0
.end method

.method private getMaxEnd(I)I
    .locals 7

    .prologue
    .line 1694
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v5

    move v2, v5

    .line 1695
    const/4 v5, 0x1

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v5, v6, :cond_1

    .line 1696
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v6, v3

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v5

    move v4, v5

    .line 1697
    move v5, v4

    move v6, v2

    if-le v5, v6, :cond_0

    .line 1698
    move v5, v4

    move v2, v5

    .line 1695
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1701
    :cond_1
    move v5, v2

    move v0, v5

    return v0
.end method

.method private getMaxStart(I)I
    .locals 7

    .prologue
    .line 1652
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v5

    move v2, v5

    .line 1653
    const/4 v5, 0x1

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v5, v6, :cond_1

    .line 1654
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v6, v3

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v5

    move v4, v5

    .line 1655
    move v5, v4

    move v6, v2

    if-le v5, v6, :cond_0

    .line 1656
    move v5, v4

    move v2, v5

    .line 1653
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1659
    :cond_1
    move v5, v2

    move v0, v5

    return v0
.end method

.method private getMinEnd(I)I
    .locals 7

    .prologue
    .line 1705
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v5

    move v2, v5

    .line 1706
    const/4 v5, 0x1

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v5, v6, :cond_1

    .line 1707
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v6, v3

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v5

    move v4, v5

    .line 1708
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 1709
    move v5, v4

    move v2, v5

    .line 1706
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1712
    :cond_1
    move v5, v2

    move v0, v5

    return v0
.end method

.method private getMinStart(I)I
    .locals 7

    .prologue
    .line 1663
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v5

    move v2, v5

    .line 1664
    const/4 v5, 0x1

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v5, v6, :cond_1

    .line 1665
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v6, v3

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v5

    move v4, v5

    .line 1666
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 1667
    move v5, v4

    move v2, v5

    .line 1664
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1670
    :cond_1
    move v5, v2

    move v0, v5

    return v0
.end method

.method private getNextSpan(Landroid/support/v7/widget/LayoutState;)Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
    .locals 14

    .prologue
    .line 1787
    move-object v0, p0

    move-object v1, p1

    move-object v12, v0

    move-object v13, v1

    iget v13, v13, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    invoke-direct {v12, v13}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v12

    move v2, v12

    .line 1789
    move v12, v2

    if-eqz v12, :cond_1

    .line 1790
    move-object v12, v0

    iget v12, v12, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v3, v12

    .line 1791
    const/4 v12, -0x1

    move v4, v12

    .line 1792
    const/4 v12, -0x1

    move v5, v12

    .line 1798
    :goto_0
    move-object v12, v1

    iget v12, v12, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 1799
    const/4 v12, 0x0

    move-object v6, v12

    .line 1800
    const v12, 0x7fffffff

    move v7, v12

    .line 1801
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v12}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v12

    move v8, v12

    .line 1802
    move v12, v3

    move v9, v12

    :goto_1
    move v12, v9

    move v13, v4

    if-eq v12, v13, :cond_2

    .line 1803
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v13, v9

    aget-object v12, v12, v13

    move-object v10, v12

    .line 1804
    move-object v12, v10

    move v13, v8

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v12

    move v11, v12

    .line 1805
    move v12, v11

    move v13, v7

    if-ge v12, v13, :cond_0

    .line 1806
    move-object v12, v10

    move-object v6, v12

    .line 1807
    move v12, v11

    move v7, v12

    .line 1802
    :cond_0
    move v12, v9

    move v13, v5

    add-int/2addr v12, v13

    move v9, v12

    goto :goto_1

    .line 1794
    :cond_1
    const/4 v12, 0x0

    move v3, v12

    .line 1795
    move-object v12, v0

    iget v12, v12, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move v4, v12

    .line 1796
    const/4 v12, 0x1

    move v5, v12

    goto :goto_0

    .line 1810
    :cond_2
    move-object v12, v6

    move-object v0, v12

    .line 1823
    :goto_2
    return-object v0

    .line 1812
    :cond_3
    const/4 v12, 0x0

    move-object v6, v12

    .line 1813
    const/high16 v12, -0x80000000

    move v7, v12

    .line 1814
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v12}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v12

    move v8, v12

    .line 1815
    move v12, v3

    move v9, v12

    :goto_3
    move v12, v9

    move v13, v4

    if-eq v12, v13, :cond_5

    .line 1816
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v13, v9

    aget-object v12, v12, v13

    move-object v10, v12

    .line 1817
    move-object v12, v10

    move v13, v8

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v12

    move v11, v12

    .line 1818
    move v12, v11

    move v13, v7

    if-le v12, v13, :cond_4

    .line 1819
    move-object v12, v10

    move-object v6, v12

    .line 1820
    move v12, v11

    move v7, v12

    .line 1815
    :cond_4
    move v12, v9

    move v13, v5

    add-int/2addr v12, v13

    move v9, v12

    goto :goto_3

    .line 1823
    :cond_5
    move-object v12, v6

    move-object v0, v12

    goto :goto_2
.end method

.method private getSpecForDimension(II)I
    .locals 5

    .prologue
    .line 1018
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    if-gez v3, :cond_0

    .line 1019
    move v3, v2

    move v0, v3

    .line 1021
    :goto_0
    return v0

    :cond_0
    move v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method private handleUpdate(III)V
    .locals 11

    .prologue
    .line 1356
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_0

    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v8

    :goto_0
    move v4, v8

    .line 1360
    move v8, v3

    const/16 v9, 0x8

    if-ne v8, v9, :cond_2

    .line 1361
    move v8, v1

    move v9, v2

    if-ge v8, v9, :cond_1

    .line 1362
    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v5, v8

    .line 1363
    move v8, v1

    move v6, v8

    .line 1373
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->invalidateAfter(I)I

    move-result v8

    .line 1374
    move v8, v3

    sparse-switch v8, :sswitch_data_0

    .line 1388
    :goto_2
    move v8, v5

    move v9, v4

    if-gt v8, v9, :cond_3

    .line 1396
    :goto_3
    return-void

    .line 1356
    :cond_0
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v8

    goto :goto_0

    .line 1365
    :cond_1
    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v5, v8

    .line 1366
    move v8, v2

    move v6, v8

    goto :goto_1

    .line 1369
    :cond_2
    move v8, v1

    move v6, v8

    .line 1370
    move v8, v1

    move v9, v2

    add-int/2addr v8, v9

    move v5, v8

    goto :goto_1

    .line 1376
    :sswitch_0
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v9, v1

    move v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    .line 1377
    goto :goto_2

    .line 1379
    :sswitch_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v9, v1

    move v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    .line 1380
    goto :goto_2

    .line 1383
    :sswitch_2
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v9, v1

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    .line 1384
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v9, v2

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    goto :goto_2

    .line 1392
    :cond_3
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_5

    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v8

    :goto_4
    move v7, v8

    .line 1393
    move v8, v6

    move v9, v7

    if-gt v8, v9, :cond_4

    .line 1394
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 1396
    :cond_4
    goto :goto_3

    .line 1392
    :cond_5
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v8

    goto :goto_4

    .line 1374
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 14

    .prologue
    .line 1616
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v6, v7

    .line 1623
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move-object v10, v6

    iget v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    move v10, v3

    move-object v11, v6

    iget v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    move v11, v4

    move-object v12, v6

    iget v12, v12, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    sub-int/2addr v11, v12

    move v12, v5

    move-object v13, v6

    iget v13, v13, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 1625
    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;II)V
    .locals 10

    .prologue
    .line 1027
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1028
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v4, v5

    .line 1029
    move-object v5, v0

    move v6, v2

    move-object v7, v4

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    move-object v8, v4

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result v5

    move v2, v5

    .line 1031
    move-object v5, v0

    move v6, v3

    move-object v7, v4

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->topMargin:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    move-object v8, v4

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result v5

    move v3, v5

    .line 1033
    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 1034
    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;)V
    .locals 9

    .prologue
    .line 998
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    iget-boolean v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_1

    .line 999
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1000
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    move-object v6, v0

    move-object v7, v2

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mHeightSpec:I

    invoke-direct {v6, v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpecForDimension(II)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;II)V

    .line 1015
    :goto_0
    return-void

    .line 1003
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    move-object v6, v2

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mWidthSpec:I

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpecForDimension(II)I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;II)V

    goto :goto_0

    .line 1007
    :cond_1
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1008
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mWidthSpec:I

    move-object v6, v0

    move-object v7, v2

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mHeightSpec:I

    invoke-direct {v6, v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpecForDimension(II)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;II)V

    goto :goto_0

    .line 1011
    :cond_2
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    move-object v6, v2

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mWidthSpec:I

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpecForDimension(II)I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mHeightSpec:I

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private preferLastSpan(I)Z
    .locals 4

    .prologue
    .line 1777
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v2, :cond_2

    .line 1778
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    .line 1780
    :goto_2
    return v0

    .line 1778
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1780
    :cond_2
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    :goto_3
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    :goto_4
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v3

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    :goto_5
    move v0, v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    goto :goto_5
.end method

.method private prependViewToAllSpans(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1610
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 1611
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    .line 1610
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1613
    :cond_0
    return-void
.end method

.method private recycle(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;)V
    .locals 8

    .prologue
    .line 1566
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    if-nez v5, :cond_1

    .line 1568
    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 1569
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    iget v7, v7, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->recycleFromEnd(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    .line 1599
    :goto_0
    return-void

    .line 1571
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    iget v7, v7, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->recycleFromStart(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    goto :goto_0

    .line 1576
    :cond_1
    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 1578
    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    move-object v6, v0

    move-object v7, v2

    iget v7, v7, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    invoke-direct {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMaxStart(I)I

    move-result v6

    sub-int/2addr v5, v6

    move v3, v5

    .line 1580
    move v5, v3

    if-gez v5, :cond_2

    .line 1581
    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    move v4, v5

    .line 1585
    :goto_1
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->recycleFromEnd(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    .line 1586
    goto :goto_0

    .line 1583
    :cond_2
    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    move v6, v3

    move-object v7, v2

    iget v7, v7, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v5, v6

    move v4, v5

    goto :goto_1

    .line 1588
    :cond_3
    move-object v5, v0

    move-object v6, v2

    iget v6, v6, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    invoke-direct {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getMinEnd(I)I

    move-result v5

    move-object v6, v2

    iget v6, v6, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    sub-int/2addr v5, v6

    move v3, v5

    .line 1590
    move v5, v3

    if-gez v5, :cond_4

    .line 1591
    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    move v4, v5

    .line 1595
    :goto_2
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->recycleFromStart(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    goto :goto_0

    .line 1593
    :cond_4
    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    move v6, v3

    move-object v7, v2

    iget v7, v7, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v5, v6

    move v4, v5

    goto :goto_2
.end method

.method private recycleFromEnd(Landroid/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 11

    .prologue
    .line 1744
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v8

    move v3, v8

    .line 1746
    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v4, v8

    :goto_0
    move v8, v4

    if-ltz v8, :cond_6

    .line 1747
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 1748
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    move v9, v2

    if-lt v8, v9, :cond_5

    .line 1749
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v6, v8

    .line 1751
    move-object v8, v6

    iget-boolean v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v8, :cond_3

    .line 1752
    const/4 v8, 0x0

    move v7, v8

    :goto_1
    move v8, v7

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v8, v9, :cond_1

    .line 1753
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v9, v7

    aget-object v8, v8, v9

    invoke-static {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->access$300(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 1771
    :goto_2
    return-void

    .line 1752
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1757
    :cond_1
    const/4 v8, 0x0

    move v7, v8

    :goto_3
    move v8, v7

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v8, v9, :cond_2

    .line 1758
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v9, v7

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->popEnd()V

    .line 1757
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1766
    :cond_2
    :goto_4
    move-object v8, v0

    move-object v9, v5

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1746
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1761
    :cond_3
    move-object v8, v6

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    invoke-static {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->access$300(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 1762
    goto :goto_2

    .line 1764
    :cond_4
    move-object v8, v6

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->popEnd()V

    goto :goto_4

    .line 1768
    :cond_5
    goto :goto_2

    .line 1771
    :cond_6
    goto :goto_2
.end method

.method private recycleFromStart(Landroid/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 9

    .prologue
    .line 1716
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    :goto_0
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v6

    if-lez v6, :cond_6

    .line 1717
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v3, v6

    .line 1718
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    move v7, v2

    if-gt v6, v7, :cond_5

    .line 1719
    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v4, v6

    .line 1721
    move-object v6, v4

    iget-boolean v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v6, :cond_3

    .line 1722
    const/4 v6, 0x0

    move v5, v6

    :goto_1
    move v6, v5

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v6, v7, :cond_1

    .line 1723
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v7, v5

    aget-object v6, v6, v7

    invoke-static {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->access$300(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1741
    :goto_2
    return-void

    .line 1722
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1727
    :cond_1
    const/4 v6, 0x0

    move v5, v6

    :goto_3
    move v6, v5

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v6, v7, :cond_2

    .line 1728
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v7, v5

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->popStart()V

    .line 1727
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1736
    :cond_2
    :goto_4
    move-object v6, v0

    move-object v7, v3

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1740
    goto :goto_0

    .line 1731
    :cond_3
    move-object v6, v4

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    invoke-static {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->access$300(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 1732
    goto :goto_2

    .line 1734
    :cond_4
    move-object v6, v4

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->popStart()V

    goto :goto_4

    .line 1738
    :cond_5
    goto :goto_2

    .line 1741
    :cond_6
    goto :goto_2
.end method

.method private resolveShouldLayoutReverse()V
    .locals 3

    .prologue
    .line 527
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_1

    .line 528
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 532
    :goto_0
    return-void

    .line 530
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setLayoutStateDirection(I)V
    .locals 6

    .prologue
    .line 1304
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/LayoutState;->mLayoutDirection:I

    .line 1305
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move v4, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    iput v3, v2, Landroid/support/v7/widget/LayoutState;->mItemDirection:I

    .line 1307
    return-void

    .line 1305
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private updateAllRemainingSpans(II)V
    .locals 8

    .prologue
    .line 1628
    move-object v0, p0

    move v1, p1

    move v2, p2

    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_1

    .line 1629
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v5, v3

    aget-object v4, v4, v5

    invoke-static {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->access$300(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1628
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1632
    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v6, v3

    aget-object v5, v5, v6

    move v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateRemainingSpans(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;II)V

    goto :goto_1

    .line 1634
    :cond_1
    return-void
.end method

.method private updateAnchorFromChildren(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 6

    .prologue
    .line 701
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastReferenceChildPosition(I)I

    move-result v4

    :goto_0
    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 704
    move-object v3, v2

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 705
    const/4 v3, 0x1

    move v0, v3

    return v0

    .line 701
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstReferenceChildPosition(I)I

    move-result v4

    goto :goto_0
.end method

.method private updateLayoutState(ILandroid/support/v7/widget/RecyclerView$State;)V
    .locals 9

    .prologue
    .line 1277
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    .line 1278
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move v7, v1

    iput v7, v6, Landroid/support/v7/widget/LayoutState;->mCurrentPosition:I

    .line 1279
    const/4 v6, 0x0

    move v3, v6

    .line 1280
    const/4 v6, 0x0

    move v4, v6

    .line 1281
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isSmoothScrolling()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1282
    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$State;->getTargetScrollPosition()I

    move-result v6

    move v5, v6

    .line 1283
    move v6, v5

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 1284
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move v7, v5

    move v8, v1

    if-ge v7, v8, :cond_1

    const/4 v7, 0x1

    :goto_0
    if-ne v6, v7, :cond_2

    .line 1285
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v6

    move v4, v6

    .line 1293
    :cond_0
    :goto_1
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getClipToPadding()Z

    move-result v6

    move v5, v6

    .line 1294
    move v6, v5

    if-eqz v6, :cond_3

    .line 1295
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    move v8, v3

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    .line 1296
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move v8, v4

    add-int/2addr v7, v8

    iput v7, v6, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    .line 1301
    :goto_2
    return-void

    .line 1284
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 1287
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v6

    move v3, v6

    goto :goto_1

    .line 1298
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v7

    move v8, v4

    add-int/2addr v7, v8

    iput v7, v6, Landroid/support/v7/widget/LayoutState;->mEndLine:I

    .line 1299
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move v7, v3

    neg-int v7, v7

    iput v7, v6, Landroid/support/v7/widget/LayoutState;->mStartLine:I

    goto :goto_2
.end method

.method private updateRemainingSpans(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;II)V
    .locals 9

    .prologue
    .line 1637
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getDeletedSize()I

    move-result v6

    move v4, v6

    .line 1638
    move v6, v2

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 1639
    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v6

    move v5, v6

    .line 1640
    move v6, v5

    move v7, v4

    add-int/2addr v6, v7

    move v7, v3

    if-gt v6, v7, :cond_0

    .line 1641
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object v7, v1

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/BitSet;->set(IZ)V

    .line 1649
    :cond_0
    :goto_0
    return-void

    .line 1644
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v6

    move v5, v6

    .line 1645
    move v6, v5

    move v7, v4

    sub-int/2addr v6, v7

    move v7, v3

    if-lt v6, v7, :cond_0

    .line 1646
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object v7, v1

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0
.end method

.method private updateSpecWithExtra(III)I
    .locals 8

    .prologue
    .line 1037
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v2

    if-nez v5, :cond_0

    move v5, v3

    if-nez v5, :cond_0

    .line 1038
    move v5, v1

    move v0, v5

    .line 1045
    :goto_0
    return v0

    .line 1040
    :cond_0
    move v5, v1

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    move v4, v5

    .line 1041
    move v5, v4

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_1

    move v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_2

    .line 1042
    :cond_1
    const/4 v5, 0x0

    move v6, v1

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    move v7, v2

    sub-int/2addr v6, v7

    move v7, v3

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v4

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move v0, v5

    goto :goto_0

    .line 1045
    :cond_2
    move v5, v1

    move v0, v5

    goto :goto_0
.end method


# virtual methods
.method areAllEndsEqual()Z
    .locals 5

    .prologue
    .line 1674
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    move v1, v3

    .line 1675
    const/4 v3, 0x1

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_1

    .line 1676
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    aget-object v3, v3, v4

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 1677
    const/4 v3, 0x0

    move v0, v3

    .line 1680
    :goto_1
    return v0

    .line 1675
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1680
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1
.end method

.method areAllStartsEqual()Z
    .locals 5

    .prologue
    .line 1684
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    move v1, v3

    .line 1685
    const/4 v3, 0x1

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_1

    .line 1686
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    aget-object v3, v3, v4

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 1687
    const/4 v3, 0x0

    move v0, v3

    .line 1690
    :goto_1
    return v0

    .line 1685
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1690
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 486
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v2, :cond_0

    .line 487
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 489
    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 2

    .prologue
    .line 1834
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

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
    .line 1829
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

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

.method public checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 3

    .prologue
    .line 2010
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move v0, v2

    return v0
.end method

.method public computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 957
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 936
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 978
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 973
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 952
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 994
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public findFirstCompletelyVisibleItemPositions([I)[I
    .locals 8

    .prologue
    .line 858
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_1

    .line 859
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v3, v3, [I

    move-object v1, v3

    .line 864
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_2

    .line 865
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findFirstCompletelyVisibleItemPosition()I

    move-result v5

    aput v5, v3, v4

    .line 864
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 860
    :cond_1
    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 861
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", array size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 867
    :cond_2
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;
    .locals 12

    .prologue
    .line 1221
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v10, v0

    invoke-direct {v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    .line 1222
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v10}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v10

    move v3, v10

    .line 1223
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v10}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v10

    move v4, v10

    .line 1224
    const/4 v10, 0x0

    move-object v5, v10

    .line 1225
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v6, v10

    :goto_0
    move v10, v6

    if-ltz v10, :cond_4

    .line 1226
    move-object v10, v0

    move v11, v6

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v7, v10

    .line 1227
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v11, v7

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    move v8, v10

    .line 1228
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v11, v7

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v10

    move v9, v10

    .line 1229
    move v10, v9

    move v11, v3

    if-le v10, v11, :cond_0

    move v10, v8

    move v11, v4

    if-lt v10, v11, :cond_1

    .line 1225
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1232
    :cond_1
    move v10, v9

    move v11, v4

    if-le v10, v11, :cond_2

    move v10, v1

    if-nez v10, :cond_3

    .line 1235
    :cond_2
    move-object v10, v7

    move-object v0, v10

    .line 1241
    :goto_2
    return-object v0

    .line 1237
    :cond_3
    move v10, v2

    if-eqz v10, :cond_0

    move-object v10, v5

    if-nez v10, :cond_0

    .line 1238
    move-object v10, v7

    move-object v5, v10

    goto :goto_1

    .line 1241
    :cond_4
    move-object v10, v5

    move-object v0, v10

    goto :goto_2
.end method

.method findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;
    .locals 13

    .prologue
    .line 1190
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v11, v0

    invoke-direct {v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    .line 1191
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v11}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v11

    move v3, v11

    .line 1192
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v11}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v11

    move v4, v11

    .line 1193
    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v11

    move v5, v11

    .line 1194
    const/4 v11, 0x0

    move-object v6, v11

    .line 1195
    const/4 v11, 0x0

    move v7, v11

    :goto_0
    move v11, v7

    move v12, v5

    if-ge v11, v12, :cond_4

    .line 1196
    move-object v11, v0

    move v12, v7

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v8, v11

    .line 1197
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    move v9, v11

    .line 1198
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    move v10, v11

    .line 1199
    move v11, v10

    move v12, v3

    if-le v11, v12, :cond_0

    move v11, v9

    move v12, v4

    if-lt v11, v12, :cond_1

    .line 1195
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1202
    :cond_1
    move v11, v9

    move v12, v3

    if-ge v11, v12, :cond_2

    move v11, v1

    if-nez v11, :cond_3

    .line 1205
    :cond_2
    move-object v11, v8

    move-object v0, v11

    .line 1211
    :goto_2
    return-object v0

    .line 1207
    :cond_3
    move v11, v2

    if-eqz v11, :cond_0

    move-object v11, v6

    if-nez v11, :cond_0

    .line 1208
    move-object v11, v8

    move-object v6, v11

    goto :goto_1

    .line 1211
    :cond_4
    move-object v11, v6

    move-object v0, v11

    goto :goto_2
.end method

.method findFirstVisibleItemPositionInt()I
    .locals 5

    .prologue
    .line 1160
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v2

    :goto_0
    move-object v1, v2

    .line 1162
    move-object v2, v1

    if-nez v2, :cond_1

    const/4 v2, -0x1

    :goto_1
    move v0, v2

    return v0

    .line 1160
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1162
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_1
.end method

.method public findFirstVisibleItemPositions([I)[I
    .locals 8

    .prologue
    .line 826
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_1

    .line 827
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v3, v3, [I

    move-object v1, v3

    .line 832
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_2

    .line 833
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findFirstVisibleItemPosition()I

    move-result v5

    aput v5, v3, v4

    .line 832
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 828
    :cond_1
    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 829
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", array size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 835
    :cond_2
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public findLastCompletelyVisibleItemPositions([I)[I
    .locals 8

    .prologue
    .line 922
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_1

    .line 923
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v3, v3, [I

    move-object v1, v3

    .line 928
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_2

    .line 929
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findLastCompletelyVisibleItemPosition()I

    move-result v5

    aput v5, v3, v4

    .line 928
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 924
    :cond_1
    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 925
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", array size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 931
    :cond_2
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public findLastVisibleItemPositions([I)[I
    .locals 8

    .prologue
    .line 890
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_1

    .line 891
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v3, v3, [I

    move-object v1, v3

    .line 896
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_2

    .line 897
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findLastVisibleItemPosition()I

    move-result v5

    aput v5, v3, v4

    .line 896
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 892
    :cond_1
    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 893
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", array size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 899
    :cond_2
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 6

    .prologue
    .line 1990
    move-object v0, p0

    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    move-object v0, v1

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 8

    .prologue
    .line 1996
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v3

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 6

    .prologue
    .line 2001
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 2002
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object v0, v2

    .line 2004
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 6

    .prologue
    .line 1177
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1178
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move v0, v3

    .line 1180
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getGapStrategy()I
    .locals 2

    .prologue
    .line 458
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    move v0, v1

    return v0
.end method

.method public getOrientation()I
    .locals 2

    .prologue
    .line 2014
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    move v0, v1

    return v0
.end method

.method public getReverseLayout()Z
    .locals 2

    .prologue
    .line 547
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    move v0, v1

    return v0
.end method

.method public getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 6

    .prologue
    .line 1168
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v3, :cond_0

    .line 1169
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move v0, v3

    .line 1171
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getSpanCount()I
    .locals 2

    .prologue
    .line 497
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move v0, v1

    return v0
.end method

.method hasGapsToFix()Landroid/view/View;
    .locals 22

    .prologue
    .line 300
    move-object/from16 v2, p0

    const/16 v17, 0x0

    move/from16 v3, v17

    .line 301
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v17

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v4, v17

    .line 302
    new-instance v17, Ljava/util/BitSet;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/util/BitSet;-><init>(I)V

    move-object/from16 v5, v17

    .line 303
    move-object/from16 v17, v5

    const/16 v18, 0x0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v17 .. v20}, Ljava/util/BitSet;->set(IIZ)V

    .line 306
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x1

    :goto_0
    move/from16 v8, v17

    .line 308
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 309
    move/from16 v17, v4

    move/from16 v6, v17

    .line 310
    move/from16 v17, v3

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v7, v17

    .line 315
    :goto_1
    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    const/16 v17, 0x1

    :goto_2
    move/from16 v9, v17

    .line 316
    move/from16 v17, v6

    move/from16 v10, v17

    :goto_3
    move/from16 v17, v10

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    .line 317
    move-object/from16 v17, v2

    move/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v11, v17

    .line 318
    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object/from16 v12, v17

    .line 319
    move-object/from16 v17, v5

    move-object/from16 v18, v12

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/BitSet;->get(I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 320
    move-object/from16 v17, v2

    move-object/from16 v18, v12

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->checkSpanForGap(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 321
    move-object/from16 v17, v11

    move-object/from16 v2, v17

    .line 360
    :goto_4
    return-object v2

    .line 306
    :cond_0
    const/16 v17, -0x1

    goto :goto_0

    .line 312
    :cond_1
    move/from16 v17, v3

    move/from16 v6, v17

    .line 313
    move/from16 v17, v4

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v7, v17

    goto :goto_1

    .line 315
    :cond_2
    const/16 v17, -0x1

    goto :goto_2

    .line 323
    :cond_3
    move-object/from16 v17, v5

    move-object/from16 v18, v12

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/BitSet;->clear(I)V

    .line 325
    :cond_4
    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 316
    :cond_5
    move/from16 v17, v10

    move/from16 v18, v9

    add-int v17, v17, v18

    move/from16 v10, v17

    goto/16 :goto_3

    .line 329
    :cond_6
    move/from16 v17, v10

    move/from16 v18, v9

    add-int v17, v17, v18

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 330
    move-object/from16 v17, v2

    move/from16 v18, v10

    move/from16 v19, v9

    add-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v13, v17

    .line 331
    const/16 v17, 0x0

    move/from16 v14, v17

    .line 332
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 334
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v17

    move/from16 v15, v17

    .line 335
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v17

    move/from16 v16, v17

    .line 336
    move/from16 v17, v15

    move/from16 v18, v16

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 337
    move-object/from16 v17, v11

    move-object/from16 v2, v17

    goto/16 :goto_4

    .line 338
    :cond_7
    move/from16 v17, v15

    move/from16 v18, v16

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 339
    const/16 v17, 0x1

    move/from16 v14, v17

    .line 350
    :cond_8
    :goto_5
    move/from16 v17, v14

    if-eqz v17, :cond_5

    .line 352
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object/from16 v15, v17

    .line 353
    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v17, v0

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    if-gez v17, :cond_b

    const/16 v17, 0x1

    :goto_6
    move/from16 v18, v8

    if-gez v18, :cond_c

    const/16 v18, 0x1

    :goto_7
    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 354
    move-object/from16 v17, v11

    move-object/from16 v2, v17

    goto/16 :goto_4

    .line 342
    :cond_9
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    move/from16 v15, v17

    .line 343
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    move/from16 v16, v17

    .line 344
    move/from16 v17, v15

    move/from16 v18, v16

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    .line 345
    move-object/from16 v17, v11

    move-object/from16 v2, v17

    goto/16 :goto_4

    .line 346
    :cond_a
    move/from16 v17, v15

    move/from16 v18, v16

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 347
    const/16 v17, 0x1

    move/from16 v14, v17

    goto :goto_5

    .line 353
    :cond_b
    const/16 v17, 0x0

    goto :goto_6

    :cond_c
    const/16 v18, 0x0

    goto :goto_7

    .line 360
    :cond_d
    const/16 v17, 0x0

    move-object/from16 v2, v17

    goto/16 :goto_4
.end method

.method public invalidateSpanAssignments()V
    .locals 2

    .prologue
    .line 507
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 508
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 509
    return-void
.end method

.method isLayoutRTL()Z
    .locals 3

    .prologue
    .line 535
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLayoutDirection()I

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

.method public offsetChildrenHorizontal(I)V
    .locals 5

    .prologue
    .line 1311
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    .line 1312
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 1313
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    aget-object v3, v3, v4

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->onOffset(I)V

    .line 1312
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1315
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 5

    .prologue
    .line 1319
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 1320
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 1321
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    aget-object v3, v3, v4

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->onOffset(I)V

    .line 1320
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1323
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 6

    .prologue
    .line 288
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    .line 289
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_0

    .line 290
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v5, v3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 289
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 292
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 10

    .prologue
    .line 1133
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    move-object v8, v1

    invoke-super {v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1134
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v7

    if-lez v7, :cond_2

    .line 1135
    move-object v7, v1

    invoke-static {v7}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v7

    move-object v2, v7

    .line 1137
    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v7

    move-object v3, v7

    .line 1138
    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 1139
    move-object v7, v3

    if-eqz v7, :cond_0

    move-object v7, v4

    if-nez v7, :cond_1

    .line 1152
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v5, v7

    .line 1143
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v6, v7

    .line 1144
    move v7, v5

    move v8, v6

    if-ge v7, v8, :cond_3

    .line 1145
    move-object v7, v2

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 1146
    move-object v7, v2

    move v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    .line 1152
    :cond_2
    :goto_1
    goto :goto_0

    .line 1148
    :cond_3
    move-object v7, v2

    move v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 1149
    move-object v7, v2

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    goto :goto_1
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 14

    .prologue
    .line 1112
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v5, v7

    .line 1113
    move-object v7, v5

    instance-of v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-nez v7, :cond_0

    .line 1114
    move-object v7, v0

    move-object v8, v3

    move-object v9, v4

    invoke-super {v7, v8, v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1129
    :goto_0
    return-void

    .line 1117
    :cond_0
    move-object v7, v5

    check-cast v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v6, v7

    .line 1118
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v7, :cond_2

    .line 1119
    move-object v7, v4

    move-object v8, v6

    invoke-virtual {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v8

    move-object v9, v6

    iget-boolean v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v9, :cond_1

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    :goto_1
    const/4 v10, -0x1

    const/4 v11, -0x1

    move-object v12, v6

    iget-boolean v12, v12, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 1129
    :goto_2
    goto :goto_0

    .line 1119
    :cond_1
    const/4 v9, 0x1

    goto :goto_1

    .line 1124
    :cond_2
    move-object v7, v4

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v10, v6

    invoke-virtual {v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v10

    move-object v11, v6

    iget-boolean v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v11, :cond_3

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    :goto_3
    move-object v12, v6

    iget-boolean v12, v12, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    const/4 v11, 0x1

    goto :goto_3
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 8

    .prologue
    .line 1332
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v2

    move v6, v3

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1333
    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .prologue
    .line 1337
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 1338
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 1339
    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 9

    .prologue
    .line 1343
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v2

    move v7, v3

    const/16 v8, 0x8

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1344
    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 8

    .prologue
    .line 1327
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v2

    move v6, v3

    const/4 v7, 0x2

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1328
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 9

    .prologue
    .line 1349
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move v6, v2

    move v7, v3

    const/4 v8, 0x4

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1350
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 9

    .prologue
    .line 551
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    .line 552
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    move-object v3, v5

    .line 553
    move-object v5, v3

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 555
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v5, :cond_0

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 556
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 557
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 641
    :goto_0
    return-void

    .line 562
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v5, :cond_6

    .line 563
    move-object v5, v0

    move-object v6, v3

    invoke-direct {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->applyPendingSavedState(Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    .line 569
    :goto_1
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateAnchorInfoForLayout(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    .line 571
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v5, :cond_3

    .line 572
    move-object v5, v3

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-ne v5, v6, :cond_2

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v5

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    if-eq v5, v6, :cond_3

    .line 574
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 575
    move-object v5, v3

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    .line 579
    :cond_3
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_7

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v5, :cond_4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_7

    .line 581
    :cond_4
    move-object v5, v3

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    if-eqz v5, :cond_c

    .line 582
    const/4 v5, 0x0

    move v4, v5

    :goto_2
    move v5, v4

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v5, v6, :cond_7

    .line 584
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v6, v4

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 585
    move-object v5, v3

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_5

    .line 586
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v6, v4

    aget-object v5, v5, v6

    move-object v6, v3

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    .line 582
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 565
    :cond_6
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 566
    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v6, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_1

    .line 595
    :cond_7
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 596
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 597
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateMeasureSpecs()V

    .line 598
    move-object v5, v0

    move-object v6, v3

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateLayoutState(ILandroid/support/v7/widget/RecyclerView$State;)V

    .line 599
    move-object v5, v3

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_d

    .line 601
    move-object v5, v0

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 602
    move-object v5, v0

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v5

    .line 604
    move-object v5, v0

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 605
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object v6, v3

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget v7, v7, Landroid/support/v7/widget/LayoutState;->mItemDirection:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/support/v7/widget/LayoutState;->mCurrentPosition:I

    .line 606
    move-object v5, v0

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v5

    .line 617
    :goto_3
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_8

    .line 618
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_e

    .line 619
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fixEndGap(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V

    .line 620
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fixStartGap(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V

    .line 627
    :cond_8
    :goto_4
    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_b

    .line 628
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v5, :cond_f

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_f

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v5, :cond_9

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_f

    :cond_9
    const/4 v5, 0x1

    :goto_5
    move v4, v5

    .line 631
    move v5, v4

    if-eqz v5, :cond_a

    .line 632
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v5

    .line 633
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 635
    :cond_a
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 636
    move-object v5, v0

    const/high16 v6, -0x80000000

    iput v6, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 638
    :cond_b
    move-object v5, v0

    move-object v6, v3

    iget-boolean v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iput-boolean v6, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 639
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v6

    iput-boolean v6, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 640
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 641
    goto/16 :goto_0

    .line 590
    :cond_c
    const/4 v5, 0x0

    move v4, v5

    :goto_6
    move v5, v4

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v5, v6, :cond_7

    .line 591
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v6, v4

    aget-object v5, v5, v6

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move-object v7, v3

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->cacheReferenceLineAndClear(ZI)V

    .line 590
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 609
    :cond_d
    move-object v5, v0

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 610
    move-object v5, v0

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v5

    .line 612
    move-object v5, v0

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 613
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object v6, v3

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget v7, v7, Landroid/support/v7/widget/LayoutState;->mItemDirection:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/support/v7/widget/LayoutState;->mCurrentPosition:I

    .line 614
    move-object v5, v0

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v5

    goto/16 :goto_3

    .line 622
    :cond_e
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fixStartGap(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V

    .line 623
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fixEndGap(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V

    goto/16 :goto_4

    .line 628
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_5
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 1050
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v2, :cond_0

    .line 1051
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-object v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 1052
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 1056
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 1060
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v4, :cond_0

    .line 1061
    new-instance v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;)V

    move-object v0, v4

    .line 1106
    :goto_0
    return-object v0

    .line 1063
    :cond_0
    new-instance v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    move-object v1, v4

    .line 1064
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 1065
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    iput-boolean v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 1066
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    iput-boolean v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    .line 1068
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v4, :cond_2

    .line 1069
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iput-object v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 1070
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    array-length v5, v5

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 1071
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    iput-object v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    .line 1076
    :goto_1
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v4

    if-lez v4, :cond_6

    .line 1077
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    .line 1078
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v5, :cond_3

    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v5

    :goto_2
    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1080
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositionInt()I

    move-result v5

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1081
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 1082
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v5, v5, [I

    iput-object v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 1083
    const/4 v4, 0x0

    move v2, v4

    :goto_3
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_5

    .line 1085
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v4, :cond_4

    .line 1086
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v5, v2

    aget-object v4, v4, v5

    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v4

    move v3, v4

    .line 1087
    move v4, v3

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_1

    .line 1088
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    sub-int/2addr v4, v5

    move v3, v4

    .line 1096
    :cond_1
    :goto_4
    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    move v5, v2

    move v6, v3

    aput v6, v4, v5

    .line 1083
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1073
    :cond_2
    move-object v4, v1

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    goto :goto_1

    .line 1078
    :cond_3
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v5

    goto :goto_2

    .line 1091
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v5, v2

    aget-object v4, v4, v5

    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v4

    move v3, v4

    .line 1092
    move v4, v3

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_1

    .line 1093
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    sub-int/2addr v4, v5

    move v3, v4

    goto :goto_4

    .line 1106
    :cond_5
    :goto_5
    move-object v4, v1

    move-object v0, v4

    goto/16 :goto_0

    .line 1099
    :cond_6
    move-object v4, v1

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1100
    move-object v4, v1

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1101
    move-object v4, v1

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    goto :goto_5
.end method

.method public onScrollStateChanged(I)V
    .locals 3

    .prologue
    .line 281
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    .line 282
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    move-result v2

    .line 284
    :cond_0
    return-void
.end method

.method scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 13

    .prologue
    .line 1911
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    .line 1914
    move v9, v1

    if-lez v9, :cond_0

    .line 1915
    const/4 v9, 0x1

    move v5, v9

    .line 1916
    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v9

    move v4, v9

    .line 1921
    :goto_0
    move-object v9, v0

    move v10, v4

    move-object v11, v3

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateLayoutState(ILandroid/support/v7/widget/RecyclerView$State;)V

    .line 1922
    move-object v9, v0

    move v10, v5

    invoke-direct {v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 1923
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move v10, v4

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    iget v11, v11, Landroid/support/v7/widget/LayoutState;->mItemDirection:I

    add-int/2addr v10, v11

    iput v10, v9, Landroid/support/v7/widget/LayoutState;->mCurrentPosition:I

    .line 1924
    move v9, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    move v6, v9

    .line 1925
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move v10, v6

    iput v10, v9, Landroid/support/v7/widget/LayoutState;->mAvailable:I

    .line 1926
    move-object v9, v0

    move-object v10, v2

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Landroid/support/v7/widget/LayoutState;

    move-object v12, v3

    invoke-direct {v9, v10, v11, v12}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v9

    move v7, v9

    .line 1928
    move v9, v6

    move v10, v7

    if-ge v9, v10, :cond_1

    .line 1929
    move v9, v1

    move v8, v9

    .line 1939
    :goto_1
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move v10, v8

    neg-int v10, v10

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 1941
    move-object v9, v0

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v10, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 1942
    move v9, v8

    move v0, v9

    return v0

    .line 1918
    :cond_0
    const/4 v9, -0x1

    move v5, v9

    .line 1919
    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v9

    move v4, v9

    goto :goto_0

    .line 1930
    :cond_1
    move v9, v1

    if-gez v9, :cond_2

    .line 1931
    move v9, v7

    neg-int v9, v9

    move v8, v9

    goto :goto_1

    .line 1933
    :cond_2
    move v9, v7

    move v8, v9

    goto :goto_1
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1840
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 4

    .prologue
    .line 1880
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 1881
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 1883
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 1884
    move-object v2, v0

    const/high16 v3, -0x80000000

    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 1885
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 1886
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 5

    .prologue
    .line 1902
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v3, :cond_0

    .line 1903
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 1905
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 1906
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 1907
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 1908
    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1846
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public setGapStrategy(I)V
    .locals 6

    .prologue
    .line 471
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 472
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-ne v2, v3, :cond_0

    .line 482
    :goto_0
    return-void

    .line 475
    :cond_0
    move v2, v1

    if-eqz v2, :cond_1

    move v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 477
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 480
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 481
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 482
    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 7

    .prologue
    .line 404
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-eqz v3, :cond_0

    move v3, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 405
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "invalid orientation."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 407
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 408
    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v3, v4, :cond_1

    .line 419
    :goto_0
    return-void

    .line 411
    :cond_1
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 412
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    if-eqz v3, :cond_2

    .line 414
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v2, v3

    .line 415
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 416
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    .line 418
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 419
    goto :goto_0
.end method

.method public setReverseLayout(Z)V
    .locals 4

    .prologue
    .line 435
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 436
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 437
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 439
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 440
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 441
    return-void
.end method

.method public setSpanCount(I)V
    .locals 11

    .prologue
    .line 384
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 385
    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-eq v3, v4, :cond_1

    .line 386
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->invalidateSpanAssignments()V

    .line 387
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 388
    move-object v3, v0

    new-instance v4, Ljava/util/BitSet;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-direct {v5, v6}, Ljava/util/BitSet;-><init>(I)V

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 389
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v4, v4, [Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 390
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 391
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    new-instance v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move v8, v2

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;ILandroid/support/v7/widget/StaggeredGridLayoutManager$1;)V

    aput-object v5, v3, v4

    .line 390
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 393
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 395
    :cond_1
    return-void
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 10

    .prologue
    .line 1860
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    new-instance v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$2;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$2;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;Landroid/content/Context;)V

    move-object v4, v5

    .line 1874
    move-object v5, v4

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 1875
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 1876
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .prologue
    .line 803
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method updateAnchorFromPendingData(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 11

    .prologue
    .line 710
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 711
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .line 785
    :goto_0
    return v0

    .line 714
    :cond_1
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ltz v7, :cond_2

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 715
    :cond_2
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 716
    move-object v7, v0

    const/high16 v8, -0x80000000

    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 717
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 720
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    const/4 v8, 0x1

    if-ge v7, v8, :cond_f

    .line 723
    :cond_4
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    move-object v3, v7

    .line 724
    move-object v7, v3

    if-eqz v7, :cond_c

    .line 727
    move-object v7, v2

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_5

    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v8

    :goto_1
    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 730
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_7

    .line 731
    move-object v7, v2

    iget-boolean v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v7, :cond_6

    .line 732
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v7, v8

    move v4, v7

    .line 734
    move-object v7, v2

    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 740
    :goto_2
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 727
    :cond_5
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v8

    goto :goto_1

    .line 736
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v7, v8

    move v4, v7

    .line 738
    move-object v7, v2

    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_2

    .line 744
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v7

    move v4, v7

    .line 745
    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v8

    if-le v7, v8, :cond_9

    .line 747
    move-object v7, v2

    move-object v8, v2

    iget-boolean v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v8, :cond_8

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    :goto_3
    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 750
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 747
    :cond_8
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    goto :goto_3

    .line 753
    :cond_9
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 755
    move v7, v5

    if-gez v7, :cond_a

    .line 756
    move-object v7, v2

    move v8, v5

    neg-int v8, v8

    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 757
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 759
    :cond_a
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    move v6, v7

    .line 761
    move v7, v6

    if-gez v7, :cond_b

    .line 762
    move-object v7, v2

    move v8, v6

    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 763
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 766
    :cond_b
    move-object v7, v2

    const/high16 v8, -0x80000000

    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 785
    :goto_4
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 770
    :cond_c
    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 771
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v8, -0x80000000

    if-ne v7, v8, :cond_e

    .line 772
    move-object v7, v0

    move-object v8, v2

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result v7

    move v4, v7

    .line 774
    move-object v7, v2

    move v8, v4

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    const/4 v8, 0x1

    :goto_5
    iput-boolean v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 775
    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 779
    :goto_6
    move-object v7, v2

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    goto :goto_4

    .line 774
    :cond_d
    const/4 v8, 0x0

    goto :goto_5

    .line 777
    :cond_e
    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding(I)V

    goto :goto_6

    .line 782
    :cond_f
    move-object v7, v2

    const/high16 v8, -0x80000000

    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 783
    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v8, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    goto :goto_4
.end method

.method updateAnchorInfoForLayout(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 6

    .prologue
    .line 683
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateAnchorFromPendingData(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 694
    :goto_0
    return-void

    .line 686
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->updateAnchorFromChildren(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 687
    goto :goto_0

    .line 692
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 693
    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 694
    goto :goto_0
.end method

.method updateMeasureSpecs()V
    .locals 4

    .prologue
    .line 789
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    div-int/2addr v2, v3

    iput v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 790
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 792
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 793
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mWidthSpec:I

    .line 794
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mHeightSpec:I

    .line 799
    :goto_0
    return-void

    .line 796
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mHeightSpec:I

    .line 797
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mWidthSpec:I

    goto :goto_0
.end method
